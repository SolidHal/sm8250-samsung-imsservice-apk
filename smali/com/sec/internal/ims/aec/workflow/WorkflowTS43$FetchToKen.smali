.class Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;
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
    name = "FetchToKen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
    .param p2, "x1"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;

    .line 198
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->initHttpGetInfo(ILjava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpPushParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAkaToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getImsi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMSI"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->getHttpGetResponse(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpResponse(Lcom/sec/internal/ims/aec/util/HttpClient$Response;)V

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setHttpResponse(I)V

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getStatusCode()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_1

    const/16 v1, 0x193

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-static {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->access$710(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)I

    goto :goto_0

    .line 210
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v0

    .line 215
    :cond_1
    nop

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->handleNotOkResponse(I)Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;

    move-result-object v0

    return-object v0
.end method
