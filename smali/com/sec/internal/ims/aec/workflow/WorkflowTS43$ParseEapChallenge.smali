.class Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;
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
    name = "ParseEapChallenge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
    .param p2, "x1"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;

    .line 261
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

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

    .line 264
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    .line 265
    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getBody()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 264
    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/ContentParser;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 267
    .local v0, "parsedJson":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 268
    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v1

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mPhoneId:I

    invoke-static {v1, v0}, Lcom/sec/internal/ims/aec/util/ContentParser;->debugPrint(ILjava/util/Map;)V

    .line 271
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v3, v3, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mCalcEapAka:Lcom/sec/internal/ims/aec/util/CalcEapAka;

    const-string/jumbo v4, "root/eap-relay-packet"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/aec/util/CalcEapAka;->decodeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/aec/util/HttpStore;->setEapChallenge(Ljava/lang/String;)V

    .line 272
    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v1
.end method
