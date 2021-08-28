.class Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;
.source "WorkflowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;

    .line 699
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .line 702
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->initStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastSwVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleSwVersionChange(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastRcsProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleRcsProfileChange(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;)V

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$402(Lcom/sec/internal/ims/config/workflow/WorkflowBase;Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    goto :goto_0

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 708
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setCompleted(Z)V

    .line 710
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v4, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v5, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 715
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$600(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-static {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$400(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 716
    return-void
.end method
