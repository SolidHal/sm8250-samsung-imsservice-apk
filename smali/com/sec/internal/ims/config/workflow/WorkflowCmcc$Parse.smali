.class Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;
.super Ljava/lang/Object;
.source "WorkflowCmcc.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Parse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;

    .line 473
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V

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

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    .line 477
    .local v0, "body":[B
    if-nez v0, :cond_0

    .line 478
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 481
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/AutoConfigFromServer.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFiletoPath([BLjava/lang/String;)V

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 487
    .local v1, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_6

    .line 491
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestOtpStep: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-static {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$800(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string/jumbo v2, "root/vers/version"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const-string/jumbo v2, "root/vers/validity"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 502
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-static {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$800(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 503
    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getOtp()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 504
    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 505
    invoke-virtual {v4}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->isCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v2, v4, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    return-object v2

    .line 509
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 510
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v2, v4, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    return-object v2

    .line 495
    :cond_4
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v4, "config xml must contain atleast 2 items(version & validity)."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->isCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 497
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v2, v4, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    return-object v2

    .line 499
    :cond_5
    new-instance v2, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v3, "no body & no cookie. something wrong"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 488
    :cond_6
    new-instance v2, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v3, "no parsed xml data."

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
