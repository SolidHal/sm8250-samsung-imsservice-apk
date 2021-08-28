.class Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;
.super Ljava/lang/Object;
.source "WorkflowVzw.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseForEapAka"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V
    .locals 0

    .line 993
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;

    .line 993
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v2

    const-string/jumbo v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 997
    .local v0, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 1000
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 1001
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->checkSetToGS(Ljava/util/Map;)V

    .line 1003
    const-string/jumbo v1, "root/vers/version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v1, "root/vers/validity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1004
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "version/validity exists"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    return-object v1

    .line 1006
    :cond_0
    const-string/jumbo v1, "root/eap_aka/eap_aka_challenge"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1007
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1008
    .local v1, "nonce":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EapAka challenge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-static {v3, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->access$800(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, "result":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EapAka response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    if-eqz v3, :cond_1

    .line 1012
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v5, "EapAka response isn\'t empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-static {v4, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->access$500(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Ljava/lang/String;)V

    .line 1014
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v4, v5, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    return-object v4

    .line 1017
    .end local v1    # "nonce":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string/jumbo v2, "parsedXmlForEapAka is something wrong"

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 998
    :cond_2
    new-instance v1, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string/jumbo v2, "parsedXmlForEapAka is null"

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
