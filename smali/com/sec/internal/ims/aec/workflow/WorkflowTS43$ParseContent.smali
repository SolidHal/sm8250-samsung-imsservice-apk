.class Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;
.super Ljava/lang/Object;
.source "WorkflowTS43.java"

# interfaces
.implements Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseContent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
    .param p2, "x1"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;

    .line 247
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 251
    .local v0, "type":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getBody()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 253
    .local v1, "body":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/ContentParser;->isJSONValid(Ljava/util/List;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/ContentParser;->isJSONValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    new-instance v2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;

    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v2, v4, v3}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v2

    .line 254
    :cond_1
    :goto_0
    new-instance v2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;

    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v2, v4, v3}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v2
.end method
