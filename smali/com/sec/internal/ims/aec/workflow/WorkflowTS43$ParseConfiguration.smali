.class Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;
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
    name = "ParseConfiguration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
    .param p2, "x1"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;

    .line 277
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    .line 281
    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getBody()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 280
    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/ContentParser;->parseXml(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 283
    .local v0, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 284
    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v1

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setParsedXml(Ljava/util/Map;)V

    .line 287
    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v1
.end method
