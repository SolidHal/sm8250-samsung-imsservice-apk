.class Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;
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
    name = "CalcEapChallenge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
    .param p2, "x1"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;

    .line 225
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

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

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 229
    .local v0, "replyTo":Landroid/os/Message;
    const/16 v1, 0x3ed

    iput v1, v0, Landroid/os/Message;->what:I

    .line 230
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mCalcEapAka:Lcom/sec/internal/ims/aec/util/CalcEapAka;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->getEapChallenge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/aec/util/CalcEapAka;->requestEapChallengeResp(Landroid/os/Message;Ljava/lang/String;)V

    .line 232
    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$WaitingEapChallengeResp;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$WaitingEapChallengeResp;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v1
.end method
