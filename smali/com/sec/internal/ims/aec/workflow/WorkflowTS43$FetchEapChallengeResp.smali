.class Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;
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
    name = "FetchEapChallengeResp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
    .param p2, "x1"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;

    .line 173
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

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

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getEapChallengeResp()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    .line 177
    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getHeader()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Set-Cookie"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->initHttpPostInfo(Ljava/lang/String;Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->getHttpPostResponse(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpResponse(Lcom/sec/internal/ims/aec/util/HttpClient$Response;)V

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setHttpResponse(I)V

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

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

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-static {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->access$710(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)I

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v0

    .line 188
    :cond_1
    nop

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->handleNotOkResponse(I)Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;

    move-result-object v0

    return-object v0
.end method
