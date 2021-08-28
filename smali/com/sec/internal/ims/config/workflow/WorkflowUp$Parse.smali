.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;
.super Ljava/lang/Object;
.source "WorkflowUp.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Parse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;

    .line 480
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    .line 484
    .local v0, "body":[B
    if-nez v0, :cond_0

    .line 485
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 489
    .local v1, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 493
    const-string/jumbo v2, "root/vers/version"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 494
    const-string/jumbo v2, "root/vers/validity"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 502
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mIsReceicedXml:Z

    .line 503
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 504
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnValue(Ljava/lang/String;)V

    .line 505
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v2, v4, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v2

    .line 495
    :cond_2
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "parsedXml need to contain version, validity items"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->isCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 497
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    const-string/jumbo v4, "root/policy/sms_port"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSmsPort:Ljava/lang/String;

    .line 498
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v2, v4, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v2

    .line 500
    :cond_3
    new-instance v2, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v3, "body and cookie are null"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 490
    :cond_4
    new-instance v2, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string/jumbo v3, "parsedXml is null"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
