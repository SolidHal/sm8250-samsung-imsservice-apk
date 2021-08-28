.class final Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;
.super Lcom/sec/internal/helper/State;
.source "FtMsrpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CompletedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    .line 1245
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 1248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter msgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->log(Ljava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mIsBootup:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    const-string v2, "Message is loaded from bootup, no need for notifications"

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->logi(Ljava/lang/String;)V

    .line 1251
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mIsBootup:Z

    .line 1252
    return-void

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v2, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->setSentTimestamp(J)V

    .line 1256
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    goto :goto_0

    .line 1258
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 1260
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->isDeliveredNotificationRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1261
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->setDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 1262
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->updateDeliveredTimestamp(J)V

    .line 1263
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onSendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1265
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mIsConferenceUriChanged:Z

    .line 1266
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->invokeFtQueueCallBack()V

    .line 1267
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->removeThumbnail()V

    .line 1268
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->removeMessages(I)V

    .line 1269
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->removeMessages(I)V

    .line 1270
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 1272
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->updateState()V

    .line 1273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    .local v0, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v2, v3, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->listToDumpFormat(IILjava/util/List;)V

    .line 1275
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->releaseWakeLock()V

    .line 1276
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1277
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1281
    const/4 v0, 0x1

    .line 1282
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 1302
    const/4 v0, 0x0

    goto :goto_0

    .line 1286
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " msgId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " resuming request after ft is completed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->logi(Ljava/lang/String;)V

    .line 1287
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mIsSlmSvcMsg:Z

    if-nez v1, :cond_1

    .line 1288
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mRawHandle:Ljava/lang/Object;

    .line 1289
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->access$1400(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;Z)V

    goto :goto_0

    .line 1291
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->sendRejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V

    .line 1292
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->invokeFtQueueCallBack()V

    .line 1294
    goto :goto_0

    .line 1297
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CompletedState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1298
    nop

    .line 1306
    :goto_0
    return v0
.end method
