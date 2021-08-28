.class final Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledNeedToNotifyState;
.super Lcom/sec/internal/helper/State;
.source "FtHttpOutgoingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CanceledNeedToNotifyState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledNeedToNotifyState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$1;

    .line 1027
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledNeedToNotifyState;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1030
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CanceledState enter msgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledNeedToNotifyState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledNeedToNotifyState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->updateState()V

    .line 1032
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledNeedToNotifyState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mResumableOptionCode:I

    .line 1033
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledNeedToNotifyState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 1034
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledNeedToNotifyState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledNeedToNotifyState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1035
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledNeedToNotifyState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->isFtSms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledNeedToNotifyState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->invokeFtQueueCallBack()V

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledNeedToNotifyState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->access$1000(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 1039
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1043
    const/4 v0, 0x1

    .line 1044
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    .line 1046
    const/4 v0, 0x0

    .line 1050
    return v0
.end method
