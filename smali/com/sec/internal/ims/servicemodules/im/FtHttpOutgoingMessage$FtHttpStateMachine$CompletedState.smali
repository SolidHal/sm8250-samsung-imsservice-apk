.class final Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;
.super Lcom/sec/internal/helper/State;
.source "FtHttpOutgoingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompletedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$1;

    .line 973
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .line 976
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompletedState enter msgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->updateState()V

    .line 978
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mIsSlmSvcMsg:Z

    .line 979
    .local v0, "isSlmMsg":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->isFtSms()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->removeMessages(I)V

    .line 981
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 982
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->setSentTimestamp(J)V

    .line 983
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mIsSlmSvcMsg:Z

    .line 986
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mIsNetworkRequested:Z

    if-eqz v1, :cond_2

    .line 987
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->releaseNetworkAcquiredForFT()V

    .line 989
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mIsBootup:Z

    if-eqz v1, :cond_3

    .line 990
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Message is loaded from bootup, no need for notifications"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mIsBootup:Z

    .line 992
    return-void

    .line 994
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->releaseWakeLock()V

    .line 996
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->isFtSms()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_0

    .line 999
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->invokeFtQueueCallBack()V

    goto :goto_1

    .line 997
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1001
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->access$1900(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;)V

    .line 1002
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1006
    const/4 v0, 0x1

    .line 1007
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1019
    const/4 v0, 0x0

    goto :goto_0

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1016
    goto :goto_0

    .line 1009
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mIsResuming:Z

    if-eqz v1, :cond_2

    .line 1010
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->access$1300(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 1023
    :cond_2
    :goto_0
    return v0
.end method
