.class final Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;
.super Lcom/sec/internal/helper/State;
.source "FtHttpOutgoingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SendingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    .line 452
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 456
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendingState enter msgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->updateState()V

    .line 459
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->acquireWakeLock()V

    .line 460
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 464
    const/4 v0, 0x1

    .line 466
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v3, 0x14

    if-eq v1, v3, :cond_0

    .line 515
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 485
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;

    .line 486
    .local v1, "resizeResponse":Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->validateFileResizeResponse(Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 487
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;->resizedFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .local v3, "file":Ljava/io/File;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mFileSize:J

    .line 489
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mFileName:Ljava/lang/String;

    .line 490
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;->resizedFilePath:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mFilePath:Ljava/lang/String;

    .line 491
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 492
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->sendSlmFile(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->access$1000(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledState;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 495
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    goto/16 :goto_1

    .line 496
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtFallbackAllFail()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mIsGroupChat:Z

    if-nez v2, :cond_3

    .line 497
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 499
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->access$1000(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 501
    goto/16 :goto_1

    .line 468
    .end local v1    # "resizeResponse":Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;
    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 469
    .local v1, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v2, v1, Lcom/sec/internal/helper/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_9

    .line 470
    iget-object v2, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    .line 471
    .local v2, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SLM send file done : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->logi(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v3, v4, :cond_5

    .line 473
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRawHandle:Ljava/lang/Object;

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mRawHandle:Ljava/lang/Object;

    .line 474
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->access$1300(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$InProgressState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 476
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtFallbackAllFail()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mIsGroupChat:Z

    if-nez v3, :cond_6

    .line 477
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 479
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->access$1000(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 481
    .end local v2    # "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;
    :goto_0
    goto :goto_1

    .line 504
    .end local v1    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 505
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mRawHandle:Ljava/lang/Object;

    if-nez v1, :cond_8

    .line 506
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mRawHandle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->access$1000(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CanceledState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 509
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->sendCancelFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 510
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->access$1400(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine$CancelingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 512
    nop

    .line 518
    :cond_9
    :goto_1
    return v0
.end method
