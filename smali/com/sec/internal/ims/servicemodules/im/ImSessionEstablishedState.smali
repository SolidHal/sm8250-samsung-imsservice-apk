.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;
.super Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;
.source "ImSessionEstablishedState.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EstablishedState"


# direct methods
.method constructor <init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "imSession"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 63
    return-void
.end method

.method private onAddParticipantsDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 525
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 526
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 527
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 529
    .local v2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v3, :cond_0

    .line 530
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onAddParticipantsSucceeded(Ljava/util/List;)V

    goto :goto_0

    .line 531
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v3, :cond_1

    .line 532
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onAddParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    goto :goto_0

    .line 534
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onAddParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 536
    :goto_0
    return-void
.end method

.method private onAttachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "ftMsg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 622
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->setConferenceUri(Lcom/sec/ims/util/ImsUri;)V

    .line 625
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v1, "setConferenceUri null"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->setConferenceUri(Lcom/sec/ims/util/ImsUri;)V

    .line 628
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v1, "setConferenceUri"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 631
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isResuming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    goto :goto_1

    .line 634
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->attachFile(Z)V

    .line 636
    :goto_1
    return-void
.end method

.method private onChangeGCAlias(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 604
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0x7dd

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 605
    .local v0, "cb":Landroid/os/Message;
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Message;)V

    .line 606
    .local v1, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->changeGroupAlias(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;)V

    .line 607
    return-void
.end method

.method private onChangeGCAliasDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 610
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 611
    .local v0, "arResult":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 612
    .local v1, "ImResult":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 614
    .local v2, "alias":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v3, :cond_0

    .line 615
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGroupAliasSucceeded(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onChangeGroupAliasFailed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 619
    :goto_0
    return-void
.end method

.method private onChangeGCIconDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 592
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 593
    .local v0, "arResult":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 594
    .local v1, "ImResult":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 596
    .local v2, "icon_path":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v3, :cond_0

    .line 597
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGroupChatIconSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onChangeGroupChatIconFailed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 601
    :goto_0
    return-void
.end method

.method private onChangeGCLeader(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 553
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0x7d9

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 554
    .local v0, "cb":Landroid/os/Message;
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-direct {v1, v2, v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;-><init>(Ljava/lang/Object;Ljava/util/List;Landroid/os/Message;)V

    .line 555
    .local v1, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addInProgressRequestCallback(Landroid/os/Message;)V

    .line 556
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->changeGroupChatLeader(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;)V

    .line 557
    return-void
.end method

.method private onChangeGCLeaderDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 560
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 561
    .local v0, "arChangeLeader":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 562
    .local v1, "resultChangeLeader":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 564
    .local v2, "leader":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeInProgressRequestCallback(Landroid/os/Message;)V

    .line 566
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v3, :cond_0

    .line 567
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGroupChatLeaderSucceeded(Ljava/util/List;)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onChangeGroupChatLeaderFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 571
    :goto_0
    return-void
.end method

.method private onChangeGCSubject(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 574
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0x7db

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 575
    .local v0, "cb":Landroid/os/Message;
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Message;)V

    .line 576
    .local v1, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->changeGroupChatSubject(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;)V

    .line 577
    return-void
.end method

.method private onChangeGCSubjectDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 580
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 581
    .local v0, "arResult":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 582
    .local v1, "ImResult":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 584
    .local v2, "subject":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v3, :cond_0

    .line 585
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGroupChatSubjectSucceeded(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onChangeGroupChatSubjectFailed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 589
    :goto_0
    return-void
.end method

.method private onExtendToGroupChat(Landroid/os/Message;)V
    .locals 35
    .param p1, "msg"    # Landroid/os/Message;

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "oldContributionId":Ljava/lang/String;
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateUuid()Ljava/lang/String;

    move-result-object v15

    .line 265
    .local v15, "sessionKey":Ljava/lang/String;
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v5, 0x7d4

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    .line 266
    .local v28, "cb":Landroid/os/Message;
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0x3f9

    invoke-virtual {v3, v4, v15}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    .line 267
    .local v29, "synchronousCb":Landroid/os/Message;
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0x3f8

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v30

    .line 269
    .local v30, "provisionalCb":Landroid/os/Message;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v14, v3

    .line 270
    .local v14, "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 271
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 273
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v4, v14}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v13

    .line 276
    .local v13, "networkPrefRecipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 278
    .local v6, "participantsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v31, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubject()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 279
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getUserAlias()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 280
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSdpContentType()Ljava/lang/String;

    move-result-object v12

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v17

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 281
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInReplyToContributionId()Ljava/lang/String;

    move-result-object v18

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v22

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v8, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptTypes:Ljava/util/List;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptWrappedTypes:Ljava/util/List;

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 282
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v25

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 283
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v14}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    move/from16 v26, v11

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v27

    const/4 v11, 0x1

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v24, v3

    move-object/from16 v3, v31

    move-object/from16 v23, v8

    move-object v8, v2

    move-object/from16 v32, v13

    .end local v13    # "networkPrefRecipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .local v32, "networkPrefRecipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v13, v28

    move-object/from16 v33, v14

    .end local v14    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .local v33, "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v14, v30

    move-object/from16 v34, v15

    .end local v15    # "sessionKey":Ljava/lang/String;
    .local v34, "sessionKey":Ljava/lang/String;
    move-object/from16 v15, v29

    invoke-direct/range {v3 .. v27}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;ZLjava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)V

    .line 285
    .local v3, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;
    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v10, 0x0

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 286
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v11

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v12

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInReplyToContributionId()Ljava/lang/String;

    move-result-object v13

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 287
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSdpContentType()Ljava/lang/String;

    move-result-object v14

    move-object v7, v4

    invoke-direct/range {v7 .. v14}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;-><init>(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .local v4, "sessionInfo":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->EXTENDING_1_1_TO_GROUP:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mStartingReason:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    .line 289
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mPrevExtendRawHandle:Ljava/lang/Object;

    .line 291
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 293
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v5, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->extendToGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V

    .line 294
    return-void
.end method

.method private onProcessIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    .line 656
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "race condition : mRawHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " race : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x40000100    # 2.000061f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->leaveSessionWithReject(Ljava/lang/Object;)V

    .line 660
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ACCEPTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addImSessionInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 668
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 669
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 671
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleAcceptSession(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 673
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Z)V

    .line 674
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 676
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->releaseWakeLock(Ljava/lang/Object;)V

    .line 677
    return-void
.end method

.method private onReceiveIscomposingTimeout()V
    .locals 8

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getComposingActiveUris()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 519
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v7, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    move-object v4, v1

    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onComposingReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V

    .line 520
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getComposingActiveUris()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 522
    return-void
.end method

.method private onRemoveParticipantsDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 539
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 540
    .local v0, "arRemove":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 541
    .local v1, "resultRemove":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 543
    .local v2, "participantRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v3, :cond_0

    .line 544
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onRemoveParticipantsSucceeded(Ljava/util/List;)V

    goto :goto_0

    .line 545
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v3, :cond_1

    .line 546
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onRemoveParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    goto :goto_0

    .line 548
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onRemoveParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 550
    :goto_0
    return-void
.end method

.method private onSendDisplayedNotification()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 446
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 447
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 448
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSendDisplayedNotification(Ljava/util/List;)V

    .line 450
    return-void

    .line 448
    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onSendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "ftMsg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 643
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isConferenceUriChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->setConferenceUri(Lcom/sec/ims/util/ImsUri;)V

    .line 646
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    .line 647
    return-void
.end method

.method private onSendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 21
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "msg cannot be null"

    invoke-static {v1, v2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v3, "onSendImMessage"

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 306
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 307
    .local v2, "groupCcList":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    instance-of v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v3, :cond_0

    .line 308
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    move-object v5, v1

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 309
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getGroupCcListUri()Ljava/util/Set;

    move-result-object v5

    .line 308
    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 311
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDispositionNotification()Ljava/util/Set;

    move-result-object v15

    .line 312
    .local v15, "updatedNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isMsgFallbackSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v15, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_1
    new-instance v20, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    move-object/from16 v3, v20

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getUserAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/util/Date;

    move-object v9, v10

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReliableMessage()Ljava/lang/String;

    move-result-object v12

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v13, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mPhoneId:I

    .line 318
    invoke-virtual {v10, v13}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v10

    const-string v13, "extra_ft_for_ns"

    invoke-interface {v10, v13}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getXmsMessage()Ljava/lang/String;

    move-result-object v14

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v0, 0xbba

    .line 319
    invoke-virtual {v10, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v17

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object v19

    move-object v10, v15

    move-object v0, v15

    .end local v15    # "updatedNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    .local v0, "updatedNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    move-object v15, v2

    invoke-direct/range {v3 .. v19}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v3, "msgParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v5, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendImMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;)V

    .line 323
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onMessageSending(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 324
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionTimeoutThreshold(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 325
    return-void
.end method

.method private onSendIscomposingNotification(Z)V
    .locals 8
    .param p1, "isComposing"    # Z

    .line 453
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 454
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 455
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getUserAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;-><init>(Ljava/lang/Object;ZILjava/lang/String;)V

    .line 456
    .local v0, "composingParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;
    const/16 v1, 0xbce

    const/16 v2, 0xbcf

    if-eqz p1, :cond_1

    .line 462
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    const-wide/16 v4, 0x3e8

    if-nez v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v6, "SEND_ISCOMPOSING_NOTIFICATION, sending isComposing=true"

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 464
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V

    .line 465
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    .line 466
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v1, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    int-to-long v6, v6

    mul-long/2addr v6, v4

    invoke-virtual {v3, v1, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(I)V

    .line 475
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mPhoneId:I

    .line 476
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    const-string v6, "compsing_noti_idle_interval"

    invoke-interface {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v6, v4

    .line 475
    invoke-virtual {v1, v2, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 478
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    if-eqz v3, :cond_2

    .line 479
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v4, "SEND_ISCOMPOSING_NOTIFICATION, sending isComposing=false"

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 480
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V

    .line 481
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    .line 483
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(I)V

    .line 484
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(I)V

    .line 486
    :goto_0
    return-void
.end method

.method private onSendIscomposingRefresh()V
    .locals 7

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "SEND_ISCOMPOSING_REFRESH, sending mIsComposing=true"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 504
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 505
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getUserAlias()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;-><init>(Ljava/lang/Object;ZILjava/lang/String;)V

    .line 506
    .local v0, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V

    .line 507
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v3, 0xbce

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 510
    .end local v0    # "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;
    :cond_0
    return-void
.end method

.method private onSendIscomposingTimeout()V
    .locals 5

    .line 490
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "SEND_ISCOMPOSING_TIMEOUT, sending mIsComposing=false"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 492
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 493
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getUserAlias()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;-><init>(Ljava/lang/Object;ZILjava/lang/String;)V

    .line 494
    .local v0, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V

    .line 495
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    .line 497
    .end local v0    # "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v1, 0xbce

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(I)V

    .line 498
    return-void
.end method

.method private onSendMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 436
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSendSlmMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 439
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onSendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 441
    :goto_0
    return-void
.end method

.method private onSessionTimeoutWithoutActivity()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "in SESSION_TIMEOUT_WITHOUT_ACTIVITY event. closed session"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setIsTimerExpired(Z)V

    .line 652
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 653
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EstablishedState enter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSwapUriType:Z

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantsStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v3, :cond_1

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->forceRefreshCapability(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isIconUpdatedRequiredOnSessionEstablished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->GROUP_SESSION_MANAGEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGCIcon(Ljava/lang/String;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 88
    .local v1, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onSendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 89
    .end local v1    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->checkAndUpdateSessionTimeout()V

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatStatusUpdate(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatEstablished(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 96
    return-void
.end method

.method public onAddParticipants(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "onAddParticipants"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v1, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 337
    .local v0, "networkParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 338
    .local v1, "normalizedUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normalizedUris="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EstablishedState"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string/jumbo v3, "use_individual_refer"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x7d2

    if-eqz v2, :cond_1

    .line 341
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    .line 342
    .local v4, "uri":Lcom/sec/ims/util/ImsUri;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v6, v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 345
    .local v6, "cb":Landroid/os/Message;
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v5, v6, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;-><init>(Ljava/lang/Object;Ljava/util/List;Landroid/os/Message;Ljava/lang/String;)V

    .line 346
    .local v7, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v8, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->addImParticipants(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V

    .line 347
    .end local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v6    # "cb":Landroid/os/Message;
    .end local v7    # "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 350
    .local v2, "cb":Landroid/os/Message;
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;-><init>(Ljava/lang/Object;Ljava/util/List;Landroid/os/Message;Ljava/lang/String;)V

    .line 351
    .local v3, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v4, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->addImParticipants(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V

    .line 353
    .end local v2    # "cb":Landroid/os/Message;
    .end local v3    # "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;
    :goto_1
    return-void
.end method

.method public onChangeGCIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "icon_path"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v1, 0x7df

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 431
    .local v0, "cb":Landroid/os/Message;
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Message;)V

    .line 432
    .local v1, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->changeGroupChatIcon(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;)V

    .line 433
    return-void
.end method

.method public onChangeGroupAliasSucceeded(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChangeGroupAliasSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public onChangeGroupChatIconSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "icon_path"    # Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChangeGroupChatIconSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public onChangeGroupChatLeaderSucceeded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 404
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChangeGroupChatLeaderSucceeded(Ljava/lang/String;Ljava/util/List;)V

    .line 405
    return-void
.end method

.method public onChangeGroupChatSubjectSucceeded(Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChangeGroupChatSubjectSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public onRemoveParticipants(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "onRemoveParticipants"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v1, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 365
    .local v0, "networkParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 366
    .local v1, "normalizedUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normalizedUris="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EstablishedState"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v4, 0x7d7

    invoke-virtual {v2, v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 369
    .local v2, "cb":Landroid/os/Message;
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;-><init>(Ljava/lang/Object;Ljava/util/List;Landroid/os/Message;)V

    .line 370
    .local v3, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v4, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->removeImParticipants(Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;)V

    .line 371
    return-void
.end method

.method public onRemoveParticipantsSucceeded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 380
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v0, "deletedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 382
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 383
    .local v3, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v3, :cond_0

    .line 384
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v4

    .line 385
    .local v4, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    if-eqz v4, :cond_0

    .line 386
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 387
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "normalizedUri":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_0
    goto :goto_0

    .line 391
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 392
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onRemoveParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V

    .line 395
    return-void
.end method

.method protected processGroupChatManagementEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EstablishedState, processGroupChatManagementEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    .line 159
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 216
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGCIconDone(Landroid/os/Message;)V

    .line 198
    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGCIcon(Ljava/lang/String;)V

    .line 194
    goto :goto_0

    .line 205
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGCAliasDone(Landroid/os/Message;)V

    .line 206
    goto :goto_0

    .line 201
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGCAlias(Landroid/os/Message;)V

    .line 202
    goto :goto_0

    .line 189
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGCSubjectDone(Landroid/os/Message;)V

    .line 190
    goto :goto_0

    .line 185
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGCSubject(Landroid/os/Message;)V

    .line 186
    goto :goto_0

    .line 181
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGCLeaderDone(Landroid/os/Message;)V

    .line 182
    goto :goto_0

    .line 177
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onChangeGCLeader(Landroid/os/Message;)V

    .line 178
    goto :goto_0

    .line 173
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onRemoveParticipantsDone(Landroid/os/Message;)V

    .line 174
    goto :goto_0

    .line 169
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onRemoveParticipants(Landroid/os/Message;)V

    .line 170
    goto :goto_0

    .line 209
    :pswitch_b
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    .line 210
    goto :goto_0

    .line 213
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onExtendToGroupChat(Landroid/os/Message;)V

    .line 214
    goto :goto_0

    .line 165
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onAddParticipantsDone(Landroid/os/Message;)V

    .line 166
    goto :goto_0

    .line 161
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onAddParticipants(Landroid/os/Message;)V

    .line 162
    nop

    .line 219
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbcf

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3fb

    if-eq v0, v1, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->checkAndUpdateSessionTimeout()V

    .line 104
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->processMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method protected processMessagingEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EstablishedState, processMessagingEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    .line 113
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xbb9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xbc4

    if-eq v1, v2, :cond_2

    const/16 v2, 0xbbc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xbbd

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onReceiveIscomposingTimeout()V

    .line 136
    goto :goto_0

    .line 127
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onSendIscomposingTimeout()V

    .line 128
    goto :goto_0

    .line 131
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onSendIscomposingRefresh()V

    .line 132
    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onSendIscomposingNotification(Z)V

    .line 124
    goto :goto_0

    .line 143
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onSendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 144
    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onAttachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 140
    goto :goto_0

    .line 119
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onSendDisplayedNotification()V

    .line 120
    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onSendMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 116
    nop

    .line 150
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xbcd
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processSessionConnectionEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EstablishedState, processSessionConnectionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x1

    .line 228
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3ef

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3f5

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3fa

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3ec

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3ed

    if-eq v1, v2, :cond_0

    .line 254
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onProcessIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    .line 235
    goto :goto_0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onEstablishmentTimeOut(Ljava/lang/Object;)V

    .line 251
    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->onSessionTimeoutWithoutActivity()V

    .line 231
    goto :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->onCloseSessionDone(Landroid/os/Message;)V

    .line 247
    goto :goto_0

    .line 242
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onAcceptSessionDone(Landroid/os/Message;)V

    .line 243
    goto :goto_0

    .line 238
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSessionDone(Landroid/os/Message;)V

    .line 239
    nop

    .line 257
    :goto_0
    return v0
.end method
