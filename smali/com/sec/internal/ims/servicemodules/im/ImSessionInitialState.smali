.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;
.super Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;
.source "ImSessionInitialState.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InitialState"


# direct methods
.method constructor <init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "imSession"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 44
    return-void
.end method

.method private onAcceptSession(Z)V
    .locals 4
    .param p1, "explicit"    # Z

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACCEPT_SESSION, explicit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mImSessionInfoList.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isGroupChat()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 336
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRejoinable()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isChatbotRole()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 337
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotRole()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIncomingMessageEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "ACCEPT_SESSION: process pended incoming message events"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIncomingMessageEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    .line 342
    .local v1, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onIncomingMessageProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 343
    .end local v1    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIncomingMessageEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 347
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 349
    return-void

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 352
    .local v1, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v2, v3, :cond_3

    .line 353
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleAcceptSession(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 355
    .end local v1    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_3
    goto :goto_1

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 357
    return-void
.end method

.method private onAddParticipants(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 410
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 411
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 412
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onAddParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 413
    .end local v0    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    goto :goto_0

    .line 414
    :cond_0
    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 416
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 418
    :goto_0
    return-void
.end method

.method private onChangeGCIcon(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 399
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 400
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 401
    .local v0, "icon_path":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onChangeGroupChatIconFailed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 402
    .end local v0    # "icon_path":Ljava/lang/String;
    goto :goto_0

    .line 403
    :cond_0
    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 404
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 405
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 407
    :goto_0
    return-void
.end method

.method private onChangeGCLeader(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 377
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 379
    .local v0, "leader":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onChangeGroupChatLeaderFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 380
    .end local v0    # "leader":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    goto :goto_0

    .line 381
    :cond_0
    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 385
    :goto_0
    return-void
.end method

.method private onChangeGCSubject(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 388
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 389
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 390
    .local v0, "subject":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onChangeGroupChatSubjectFailed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 391
    .end local v0    # "subject":Ljava/lang/String;
    goto :goto_0

    .line 392
    :cond_0
    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 396
    :goto_0
    return-void
.end method

.method private onChangeGroupAlias(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 366
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 367
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 368
    .local v0, "alias":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onChangeGroupAliasFailed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 369
    .end local v0    # "alias":Ljava/lang/String;
    goto :goto_0

    .line 370
    :cond_0
    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 374
    :goto_0
    return-void
.end method

.method private onCloseAllSession()Z
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 434
    return v3

    .line 436
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onProcessIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsSendOnly:Z

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsOfflineGCInvitation:Z

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedEvent:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "User already left the chat voluntarily. Reject the invite"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->leaveSessionWithReject(Ljava/lang/Object;)V

    .line 249
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Ljava/lang/Object;)Z

    move-result v0

    .line 254
    .local v0, "hasPreviousPendingInvite":Z
    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mFromBlocked:Z

    if-eqz v2, :cond_2

    .line 255
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    .line 256
    .local v2, "msgEvent":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mChatId:Ljava/lang/String;

    .line 258
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onBlockedMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    .line 260
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 261
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    .line 260
    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 262
    .end local v2    # "msgEvent":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    goto/16 :goto_1

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotManualAcceptUsed()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isAutoAccept()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_4

    .line 264
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->getPendingSessionInfoByType(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v2

    .line 265
    .local v2, "prev_info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    if-eqz v2, :cond_4

    .line 266
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reject previous invite rawHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 268
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 269
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    .line 268
    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 272
    .end local v2    # "prev_info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addImSessionInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v2

    .line 273
    .local v2, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 275
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotManualAcceptUsed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 276
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v4, "Pending first message in INVITE from Chatbot"

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIncomingMessageEvents:Ljava/util/List;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotManualAcceptUsed()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isAutoAccept()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->needToUseGroupChatInvitationUI()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 281
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 282
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleAcceptSession(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 283
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToStartingState()V

    .line 288
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotManualAcceptUsed()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0

    :cond_7
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    :goto_0
    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Z)V

    .line 291
    .end local v2    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->releaseWakeLock(Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method private onProcessIncomingSnfSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    .line 295
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Ljava/lang/Object;)Z

    move-result v0

    .line 297
    .local v0, "hasPreviousPendingInvite":Z
    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mFromBlocked:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    .line 299
    .local v1, "msgEvent":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mChatId:Ljava/lang/String;

    .line 301
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onBlockedMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    .line 303
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 304
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    .line 303
    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 305
    .end local v1    # "msgEvent":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    goto/16 :goto_2

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotManualAcceptUsed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isAutoAccept()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_3

    .line 307
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->SNF_SESSION:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->getPendingSessionInfoByType(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v1

    .line 308
    .local v1, "prev_info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    if-eqz v1, :cond_3

    .line 309
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reject previous invite rawHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 311
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 312
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    .line 311
    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 315
    .end local v1    # "prev_info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v1, p1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addImSessionInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v1

    .line 317
    .local v1, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotManualAcceptUsed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 318
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v4, "Pending first message in INVITE from Chatbot"

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIncomingMessageEvents:Ljava/util/List;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotManualAcceptUsed()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isAutoAccept()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->needToUseGroupChatInvitationUI()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsForStoredNoti:Z

    if-eqz v3, :cond_7

    .line 324
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleAcceptSession(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 329
    :cond_7
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotManualAcceptUsed()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    :goto_0
    iget-boolean v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsForStoredNoti:Z

    if-nez v4, :cond_9

    if-nez v0, :cond_9

    const/4 v4, 0x1

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Z)V

    .line 332
    .end local v1    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :goto_2
    return-void
.end method

.method private onRejectSession(Ljava/lang/Integer;)V
    .locals 9
    .param p1, "reason"    # Ljava/lang/Integer;

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIncomingMessageEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "REJECT_SESSION: discard pended incoming message events"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIncomingMessageEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotManualAcceptUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    move-object v0, p1

    .line 201
    .local v0, "chatbotRejectReason":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chatbotRejectReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InitialState"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->CHATBOT_PROFILE_RETRIEVAL_FAIL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 203
    .local v0, "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    goto :goto_0

    .end local v0    # "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .restart local v0    # "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    goto :goto_0

    .line 206
    .end local v0    # "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 208
    .restart local v0    # "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 209
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 211
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 213
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 215
    .local v3, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    if-eqz v3, :cond_5

    iget-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v4, v5, :cond_5

    .line 216
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)Z

    .line 217
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v8, 0x3f1

    .line 218
    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-direct {v4, v5, v6, v0, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    .line 219
    .local v4, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v5, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 221
    .end local v3    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .end local v4    # "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;
    :cond_5
    goto :goto_1

    .line 222
    :cond_6
    return-void
.end method

.method private onRejectSessionDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;

    .line 360
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to reject session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 363
    :cond_0
    return-void
.end method

.method private onRemoveParticipants(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 421
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 422
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 423
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onRemoveParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 424
    .end local v0    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    goto :goto_0

    .line 425
    :cond_0
    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 426
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 429
    :goto_0
    return-void
.end method

.method private onSendMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4
    .param p1, "imMsg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 226
    .local v1, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v2, v3, :cond_0

    .line 227
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleAcceptSession(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 229
    .end local v1    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_0
    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasActiveImSessionInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    if-eqz p1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    goto :goto_1

    .line 236
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result v0

    if-lez v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->MESSAGE_REVOCATION:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setNetworkFallbackMech(Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;)V

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 241
    :goto_1
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitialState enter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatStatusUpdate(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V

    .line 50
    return-void
.end method

.method public getPendingSessionInfoByType(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .locals 4
    .param p1, "type"    # Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 180
    .local v1, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSessionType:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    if-ne v2, p1, :cond_0

    .line 181
    return-object v1

    .line 183
    .end local v1    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_0
    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected processGroupChatManagementEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitialState, processGroupChatManagementEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    .line 91
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7d1

    if-eq v1, v2, :cond_5

    const/16 v2, 0x7d6

    if-eq v1, v2, :cond_4

    const/16 v2, 0x7d8

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7da

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7dc

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7de

    if-eq v1, v2, :cond_0

    .line 116
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onChangeGCIcon(Landroid/os/Message;)V

    .line 106
    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onChangeGroupAlias(Landroid/os/Message;)V

    .line 94
    goto :goto_0

    .line 101
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onChangeGCSubject(Landroid/os/Message;)V

    .line 102
    goto :goto_0

    .line 97
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onChangeGCLeader(Landroid/os/Message;)V

    .line 98
    goto :goto_0

    .line 113
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onRemoveParticipants(Landroid/os/Message;)V

    .line 114
    goto :goto_0

    .line 109
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onAddParticipants(Landroid/os/Message;)V

    .line 110
    nop

    .line 119
    :goto_0
    return v0
.end method

.method protected processMessagingEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitialState, processMessagingEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    .line 73
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xbb9

    if-eq v1, v2, :cond_0

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onSendMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 76
    nop

    .line 82
    :goto_0
    return v0
.end method

.method protected processSessionConnectionEvent(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitialState, processSessionConnectionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x1

    .line 128
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3f4

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3ed

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3ee

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3fc

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3fd

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 166
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onProcessIncomingSnfSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    .line 139
    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onRejectSessionDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;)V

    .line 151
    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onRejectSession(Ljava/lang/Integer;)V

    .line 147
    goto :goto_0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->AUTOMATIC_REJOINING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 159
    goto :goto_0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->AUTOMATIC_REJOINING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 155
    goto :goto_0

    .line 142
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onAcceptSession(Z)V

    .line 143
    goto :goto_0

    .line 134
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onProcessIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    .line 135
    goto :goto_0

    .line 162
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onCloseAllSession()Z

    move-result v0

    .line 163
    goto :goto_0

    .line 130
    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;->onSendMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 131
    nop

    .line 169
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
