.class Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;
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
    name = "Initialize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
    .param p2, "x1"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;

    .line 130
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

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

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->getAkaToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getEapChallengeResp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v0

    .line 139
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v0

    .line 142
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v0
.end method
