.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;
.super Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;
.source "ImSessionClosedState.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ClosedState"


# instance fields
.field protected mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;


# direct methods
.method constructor <init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "imSession"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 51
    return-void
.end method

.method private getClosedReasonByImError(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/ims/util/ImsUri;Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;
    .locals 4
    .param p1, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "referredBy"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "isTryToLeave"    # Z

    .line 345
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 347
    .local v0, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 401
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto/16 :goto_0

    .line 391
    :pswitch_0
    if-eqz p3, :cond_4

    .line 392
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne v1, v2, :cond_0

    .line 393
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto/16 :goto_0

    .line 395
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEAVE_SESSION_FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto/16 :goto_0

    .line 381
    :pswitch_1
    if-eqz p2, :cond_1

    .line 382
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive BYE with 410 reason. referred by = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 384
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->KICKED_OUT_BY_LEADER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "support_chat_close_by_server"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 386
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEFT_BY_SERVER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    .line 373
    :pswitch_2
    if-eqz p3, :cond_2

    .line 374
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEAVE_SESSION_FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    .line 375
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 376
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    .line 367
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    .line 362
    :pswitch_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_WITH_480_REASON_CODE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 363
    goto :goto_0

    .line 355
    :pswitch_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 356
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->GROUP_CHAT_DISMISSED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    .line 349
    :pswitch_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->KICKED_OUT_BY_LEADER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 405
    :cond_4
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onAttachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3
    .param p1, "ftMsg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 324
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;

    if-nez v1, :cond_0

    .line 325
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->attachSlmFile()V

    goto :goto_1

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;

    if-nez v1, :cond_3

    .line 327
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleAttachFileFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    .line 329
    .local v1, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v1, v2, :cond_1

    .line 330
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 331
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v1, v2, :cond_2

    .line 334
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->attachSlmFile()V

    .line 335
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isResuming()Z

    move-result v2

    if-nez v2, :cond_2

    .line 336
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    .line 339
    .end local v1    # "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    :cond_2
    :goto_0
    goto :goto_1

    .line 340
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->attachFile(Z)V

    .line 342
    :goto_1
    return-void
.end method

.method private onSendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "ftMsg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mPhoneId:I

    .line 310
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleAttachFileFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    .line 312
    .local v0, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v0, v1, :cond_0

    .line 313
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 314
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v0, v1, :cond_1

    .line 315
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    .line 317
    .end local v0    # "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    :cond_1
    :goto_0
    goto :goto_1

    .line 318
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    .line 320
    :goto_1
    return-void
.end method

.method private retryCurrentMessages()V
    .locals 5

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v1, "send pending messages"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 302
    .local v1, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0xbb9

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 303
    .end local v1    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClosedState enter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mClosedReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ChatState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 56
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getComposingActiveUris()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 60
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v8, v5, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    move-object v5, v2

    invoke-interface/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onComposingReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V

    .line 61
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getComposingActiveUris()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne v0, v2, :cond_1

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    goto :goto_2

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->KICKED_OUT_BY_LEADER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->GROUP_CHAT_DISMISSED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEFT_BY_SERVER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 71
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    goto :goto_2

    .line 69
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 75
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->ALL_PARTICIPANTS_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne v0, v2, :cond_5

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "deletedParticipants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v2, v3, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 81
    .end local v0    # "deletedParticipants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatStatusUpdate(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-interface {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatClosed(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v2, "support_offline_gc_invitation"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsOfflineGCInvitation:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 87
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsOfflineGCInvitation:Z

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v2, 0x3fc

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 91
    :cond_6
    return-void
.end method

.method protected forceCancelFt(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Z)V
    .locals 5
    .param p1, "cancelPending"    # Z
    .param p2, "cancelReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p3, "exceptCancel"    # Z

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceCancelFt :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 421
    .local v1, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v2, :cond_1

    .line 422
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 423
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceCancelFt : mPendingMessages FtMessage.getStateId() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v1

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 424
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v2, :cond_0

    .line 425
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 426
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_1

    .line 428
    :cond_0
    if-nez p3, :cond_1

    .line 429
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 433
    .end local v1    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_1
    :goto_1
    goto :goto_0

    .line 435
    :cond_2
    if-eqz p1, :cond_3

    .line 436
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelPendingFilesInQueue()V

    .line 438
    :cond_3
    return-void
.end method

.method public handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V
    .locals 6
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 148
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 149
    if-eqz v0, :cond_6

    .line 150
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloseSession, info.mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 151
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$data$info$ImSessionInfo$ImSessionState:[I

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x3f5

    packed-switch v1, :pswitch_data_0

    .line 198
    goto/16 :goto_1

    .line 188
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v4, 0x3ec

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 189
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 190
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne p2, v1, :cond_0

    .line 191
    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 194
    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;Landroid/os/Message;)V

    .line 193
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V

    .line 195
    goto/16 :goto_1

    .line 171
    :pswitch_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 177
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 178
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne p2, v1, :cond_2

    .line 179
    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 182
    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;Landroid/os/Message;)V

    .line 181
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V

    .line 183
    goto :goto_1

    .line 159
    :pswitch_2
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    .local v1, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_3

    .line 161
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    iput-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    goto :goto_0

    .line 162
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne p2, v2, :cond_4

    .line 163
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    iput-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    goto :goto_0

    .line 164
    :cond_4
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne p2, v2, :cond_5

    .line 165
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    iput-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 167
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 168
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 169
    goto :goto_1

    .line 155
    .end local v1    # "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 156
    goto :goto_1

    .line 201
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloseSession cannot find ImSessionInfo with rawHandle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 203
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCloseSessionDone(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 266
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 267
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;

    .line 268
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCloseSessionDone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 269
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 270
    .local v2, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v3

    .line 271
    .local v3, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    if-eqz v3, :cond_3

    .line 272
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v4

    if-nez v4, :cond_4

    .line 273
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasActiveImSessionInfo()Z

    move-result v4

    if-nez v4, :cond_4

    .line 274
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    const/4 v6, 0x0

    .line 275
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isFirstMessageInStart(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v5, "Retry when MSRP is not respond"

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->retryCurrentMessages()V

    goto :goto_1

    .line 280
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne v4, v5, :cond_1

    .line 281
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v4, v2, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .local v4, "r":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    goto :goto_0

    .line 282
    .end local v4    # "r":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne v4, v5, :cond_2

    .line 283
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v4, v2, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .restart local v4    # "r":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    goto :goto_0

    .line 285
    .end local v4    # "r":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    :cond_2
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v4, v2, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .line 287
    .restart local v4    # "r":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v5, v6, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 288
    .end local v4    # "r":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    goto :goto_1

    .line 292
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCloseSessionDone : unknown rawHandle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 294
    :cond_4
    :goto_1
    return-void
.end method

.method public onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedEvent:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    .line 212
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionClosed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 214
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 218
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 223
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 224
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mReferredBy:Lcom/sec/ims/util/ImsUri;

    iget-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->getClosedReasonByImError(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/ims/util/ImsUri;Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 226
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE_GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v3, :cond_2

    .line 227
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v2, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->forceCancelFt(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Z)V

    .line 229
    :cond_2
    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 230
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne v1, v2, :cond_3

    .line 231
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 232
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatDeparted(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_0

    .line 234
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "handle_leave_ogc_failure"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 235
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    goto :goto_0

    .line 240
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "session closed event for invalid handle current : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " event.mRawHandle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 244
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v1, v2, :cond_6

    .line 245
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 247
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    goto :goto_1

    .line 250
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ec

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 253
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasActiveImSessionInfo()Z

    move-result v1

    if-nez v1, :cond_8

    .line 254
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 257
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 258
    return-void

    .line 219
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSessionClosed : unknown rawHandle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method protected processGroupChatManagementEvent(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClosedState, processGroupChatManagementEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    .line 121
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7d3

    if-eq v1, v2, :cond_0

    .line 127
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onAddParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 124
    nop

    .line 130
    :goto_0
    return v0
.end method

.method protected processMessagingEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClosedState, processMessagingEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x1

    .line 99
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xbbc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xbbd

    if-eq v1, v2, :cond_0

    .line 109
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->onSendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 102
    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->onAttachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 106
    nop

    .line 112
    :goto_0
    return v0
.end method

.method protected processSessionConnectionEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClosedState, processSessionConnectionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    return v0
.end method
