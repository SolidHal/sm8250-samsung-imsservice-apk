.class final Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;
.super Lcom/sec/internal/helper/State;
.source "FtMsrpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    .line 694
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 697
    const/4 v0, 0x1

    .line 698
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1

    .line 720
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 721
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event, current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->loge(Ljava/lang/String;)V

    .line 723
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 714
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_TRANSFER_TIMER_TIMEOUT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->logi(Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 716
    goto/16 :goto_0

    .line 704
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " EVENT_AUTOACCEPT_RESUMING : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->logi(Ljava/lang/String;)V

    .line 706
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v4, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mId:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v5, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mRawHandle:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v6, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v7, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mUserAlias:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mTransferredBytes:J

    const-wide/16 v9, 0x1

    add-long/2addr v9, v2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-wide v11, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFileSize:J

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;JJ)V

    .line 708
    .local v1, "acceptParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->acceptFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V

    .line 709
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->acquireWakeLock()V

    .line 710
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->access$900(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 711
    goto :goto_0

    .line 700
    .end local v1    # "acceptParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$DefaultState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->onSendDeliveredNotificationDone()V

    .line 701
    nop

    .line 727
    :goto_0
    return v0
.end method
