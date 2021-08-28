.class Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;
.super Ljava/lang/Object;
.source "WorkflowPrimaryDevice.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Parse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;

    .line 440
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

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

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    .line 444
    .local v0, "body":[B
    if-nez v0, :cond_0

    .line 445
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 450
    .local v1, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 454
    const-string/jumbo v2, "root/vers/version"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 455
    const-string/jumbo v2, "root/vers/validity"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 464
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "info/raw_config_xml_file"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 467
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnValue(Ljava/lang/String;)V

    .line 468
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    return-object v2

    .line 456
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->access$000(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "config xml must contain atleast 2 items(version & validity)."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->isCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Authorize;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    return-object v2

    .line 460
    :cond_3
    new-instance v2, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v3, "no body & no cookie. something wrong"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :cond_4
    new-instance v2, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v3, "no parsed xml data."

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
