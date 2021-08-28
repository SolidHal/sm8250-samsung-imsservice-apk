.class public Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;
.super Ljava/lang/Object;
.source "WorkflowBell.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Parse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    .line 232
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 235
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mPhoneId:I

    const-string v2, "Parse:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    .line 237
    .local v0, "body":[B
    if-nez v0, :cond_0

    .line 238
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 243
    .local v1, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 247
    const-string/jumbo v2, "root/vers/version"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 248
    const-string/jumbo v2, "root/vers/validity"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 257
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Store;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v2

    .line 249
    :cond_2
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mPhoneId:I

    const-string v4, "config xml must contain atleast 2 items(version & validity)."

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->isCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v2

    .line 253
    :cond_3
    new-instance v2, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v3, "no body & no cookie. something wrong"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_4
    new-instance v2, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v3, "no parsed xml data."

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
