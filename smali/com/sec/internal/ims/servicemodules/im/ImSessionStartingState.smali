.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;
.super Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;
.source "ImSessionStartingState.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StartingState"


# direct methods
.method constructor <init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "imSession"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 69
    return-void
.end method

.method private checkIconUpdateRequired()V
    .locals 3

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 635
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 634
    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setIconUpdatedRequiredOnSessionEstablished(Z)V

    .line 636
    return-void
.end method

.method private createFirstMessageParams(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
    .locals 20
    .param p1, "imMsg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 777
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializing SendMessageParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFirstMsgInvite()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDispositionNotification()Ljava/util/Set;

    move-result-object v1

    .line 781
    .local v1, "updatedNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 782
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isMsgFallbackSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 783
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_2
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getUserAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/util/Date;

    move-object v9, v10

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 786
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReliableMessage()Ljava/lang/String;

    move-result-object v12

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v13, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    .line 787
    invoke-virtual {v10, v13}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v10

    const-string v13, "extra_ft_for_ns"

    invoke-interface {v10, v13}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getXmsMessage()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0xbba

    .line 788
    move-object/from16 v15, p1

    invoke-virtual {v10, v4, v15}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v17

    .line 789
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object v19

    move-object v10, v1

    const/4 v4, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-object v2
.end method

.method private dumpOnStartSession(ILcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V
    .locals 4
    .param p1, "participantsSize"    # I
    .param p2, "startingReason"    # Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;
    .param p3, "isInviteForBye"    # Z

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v0, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    const v1, 0x40000018    # 2.0000057f

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 511
    return-void
.end method

.method private generateReceivers(Ljava/util/Set;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 599
    .local p1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v0, "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->getParticipantsNetworkPreferredUri(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 605
    .local v1, "networkParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 612
    .end local v1    # "networkParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v1, :cond_1

    .line 613
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 614
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v2, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    .line 615
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    .line 614
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    .line 622
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSwapUriType:Z

    if-eqz v1, :cond_2

    .line 623
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/util/UriGenerator;->swapUriType(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    .line 624
    .restart local v1    # "networkParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 625
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 626
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSwapUriType:Z

    .line 628
    .end local v1    # "networkParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :cond_2
    return-object v0
.end method

.method private generateSessionIds()V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v0, v1, :cond_4

    .line 576
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_0

    .line 577
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setInReplyToContributionId(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setConversationId(Ljava/lang/String;)V

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 590
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    goto :goto_1

    .line 592
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    .line 596
    :cond_5
    :goto_1
    return-void
.end method

.method private getParticipantsNetworkPreferredUri(Ljava/util/Set;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 286
    .local p1, "list":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 288
    .local v0, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 290
    .local v1, "listToUse":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 291
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache()Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_4

    .line 296
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache()Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    .line 297
    .local v4, "caps":Lcom/sec/ims/options/Capabilities;
    if-nez v4, :cond_1

    .line 298
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v6, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v5, v6, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 300
    :cond_1
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getPAssertedId()Ljava/util/List;

    move-result-object v5

    .line 302
    .local v5, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const/4 v6, 0x0

    .line 303
    .local v6, "domain":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/ims/util/ImsUri;

    .line 304
    .local v8, "remoteUri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v9

    sget-object v10, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v9, v10, :cond_2

    .line 305
    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 306
    goto :goto_2

    .line 308
    .end local v8    # "remoteUri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    goto :goto_1

    .line 310
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v8, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v7, v8, v3, v6}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "caps":Lcom/sec/ims/options/Capabilities;
    .end local v5    # "identities":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v6    # "domain":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 292
    .restart local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_4
    :goto_4
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v5, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    goto :goto_0

    .line 315
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_5
    return-object v1
.end method

.method private handleStartSessionFailure(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    .locals 3
    .param p1, "imMsg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    .line 549
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v0, v1, :cond_2

    .line 550
    if-eqz p1, :cond_1

    .line 551
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleUploadedFileFallback(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v1, "onStartSession, sendMessage SLM"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v2, 0xbbf

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    goto :goto_0

    .line 561
    :cond_2
    if-eqz p1, :cond_3

    .line 562
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v1, "onStartSession, display error or sendMessage error"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 563
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 565
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 568
    :goto_0
    return-void
.end method

.method private onCloseAllSession(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "Voluntary departure in StartingState. DeferMessage."

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 476
    const/4 v0, 0x1

    return v0

    .line 478
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onProcessIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "race-condition : mRawHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 445
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

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "Explicit departure is in progress. Reject the incoming invite"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->leaveSessionWithReject(Ljava/lang/Object;)V

    .line 449
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v2, :cond_1

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 455
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    .line 454
    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Z)V

    .line 457
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ACCEPTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addImSessionInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 463
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 464
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleAcceptSession(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 466
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Z)V

    .line 467
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 469
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->releaseWakeLock(Ljava/lang/Object;)V

    .line 470
    return-void
.end method

.method private onSendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 10
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 433
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfoByMessageId(I)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 434
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    const/4 v1, 0x0

    .line 435
    .local v1, "rawHandle":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v2, v3, :cond_0

    .line 436
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v3, 0xbc3

    .line 439
    invoke-virtual {v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 440
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v9

    .line 438
    move-object v2, p1

    move-object v3, v1

    invoke-virtual/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendDeliveredNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    .line 441
    return-void
.end method

.method private onSendMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getLatestActiveImSessionInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 412
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isFirstMessageInStart(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eqz v1, :cond_4

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "trigger_invite_after_18x"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 415
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->RINGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v1, v3, :cond_1

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CALL_IS_BEING_FORWARDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v1, v3, :cond_1

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_PROGRESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v3, :cond_2

    .line 419
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 424
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    goto :goto_0

    .line 427
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v2, "Starting Session, send message after session establishment"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :goto_0
    return-void
.end method

.method private onStartSessionDoneFailure(Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 5
    .param p1, "startResult"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;
    .param p2, "info"    # Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .param p3, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p4, "imMsg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 675
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    const/16 v2, 0x3ec

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)Z

    .line 678
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasActiveImSessionInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v1, "onStartSessionDone : race condition, waiting events of another session"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 680
    :cond_0
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mStartingReason:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->AUTOMATIC_REJOINING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    if-ne v0, v1, :cond_3

    .line 681
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v1, "onStartSessionDone : automatic rejoining was unsuccessful. Ignore the startResult"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needStopAutoRejoin(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    iget-boolean v0, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_0

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 689
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    goto/16 :goto_3

    .line 690
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->shouldRestartSession(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v2, "onStartSessionDone : Rejoining groupchat was unsuccessful. Restart groupchat"

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 692
    iget-boolean v0, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->restartSession(ZZ)V

    goto/16 :goto_3

    .line 693
    :cond_4
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->shouldRestartSessionWithNewID(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    if-nez v0, :cond_5

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v2, "onStartSessionDone : User is not authorized to rejoin the group. start new chat"

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 695
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->restartSession(ZZ)V

    goto/16 :goto_3

    .line 697
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 698
    if-eqz p4, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isFirstMessageInStart(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p3, v0, :cond_7

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v2, "onStartSessionDone : handle 486 response as SUCCESS for the message in INVITE."

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "nextMsg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isFirstMessageInStart(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 702
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 704
    :cond_6
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 705
    .end local v0    # "nextMsg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_1

    .line 706
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mAllowedMethods:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    .line 709
    :cond_8
    :goto_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_MAX_GROUP_NUMBER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p3, v0, :cond_9

    .line 710
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->MAX_GROUP_NUMBER_REACHED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_2

    .line 711
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p3, v0, :cond_a

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "gone_should_endsession"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 712
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->GROUP_CHAT_DISMISSED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_2

    .line 713
    :cond_a
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RESTART_GC_CLOSED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p3, v0, :cond_c

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "support_chat_close_by_server"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 715
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v1, "onStartSessionDone : Chat Close by Server "

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 716
    iget-boolean v0, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    if-eqz v0, :cond_b

    .line 717
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 718
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatDeparted(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_2

    .line 720
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEFT_BY_SERVER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_2

    .line 723
    :cond_c
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleSessionFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 726
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isNeedToReportToRegiGvn(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 727
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    invoke-interface {v0, p3, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onImErrorReport(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)V

    .line 730
    :cond_d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedEvent:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    .line 732
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 734
    :goto_3
    return-void
.end method

.method private onStartSessionDoneSuccess(Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V
    .locals 7
    .param p1, "startResult"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;
    .param p2, "info"    # Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 639
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    iput-object v0, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 640
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    iput-object v0, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsMsgFallbackSupported:Z

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsMsgRevokeSupported:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setNetworkFallbackMech(ZZ)V

    .line 646
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isMsgRevocationSupported()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v1

    .line 649
    .local v1, "needToRevokeMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 650
    .local v3, "imdnId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v4, v3, v5}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_1

    .line 652
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    goto :goto_1

    .line 654
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message from mGetter is null. imdnId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 656
    .end local v3    # "imdnId":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 657
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMsgFromListForRevoke(Ljava/util/Collection;)V

    .line 660
    .end local v0    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v1    # "needToRevokeMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsChatbotRole:Z

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIsChatbotRole(Z)V

    .line 661
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->startSessionEstablishmentTimer(Ljava/lang/Object;)V

    .line 667
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_4

    .line 668
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 670
    .local v0, "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRemoteUserDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    .line 672
    .end local v0    # "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_4
    return-void
.end method

.method private onStartSessionProvisionalResponse(Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;)V
    .locals 5
    .param p1, "startResult"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 484
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START_SESSION_PROVISIONAL_RESPONSE : response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 485
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    .line 486
    .local v1, "error":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    if-eqz v0, :cond_4

    .line 487
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isFirstMessageInStart(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 488
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getLatestActiveImSessionInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRYING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v2, v3, :cond_3

    .line 490
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string/jumbo v3, "trigger_invite_after_18x"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 491
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->RINGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CALL_IS_BEING_FORWARDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_PROGRESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v2, :cond_3

    .line 492
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 493
    .local v2, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 494
    .end local v2    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_0

    .line 495
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-nez v2, :cond_3

    .line 496
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 497
    .restart local v2    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 500
    .end local v2    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_3
    :goto_0
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 502
    :cond_4
    return-void
.end method

.method private preCheckToStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/util/Set;Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 8
    .param p1, "imMsg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;"
        }
    .end annotation

    .line 515
    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .local p3, "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGroupChatEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GROUPCHAT_DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    .local v0, "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    goto :goto_0

    .line 517
    .end local v0    # "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    .line 518
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "allow_only_opengroupchat"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-ne v0, v1, :cond_1

    .line 520
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    .restart local v0    # "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    goto :goto_0

    .line 522
    .end local v0    # "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    .restart local v0    # "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    goto :goto_0

    .line 525
    .end local v0    # "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_IM_SERVICE:J

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 526
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v7

    .line 525
    move-object v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkCapability(Ljava/util/Set;JLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    .line 529
    .restart local v0    # "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-ne v1, v2, :cond_3

    .line 530
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v1, v2, :cond_3

    .line 531
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v2, "onStartSession : GLS fallback to legacy"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 532
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    move-object v0, v1

    .line 534
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 535
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v2, "onStartSession : Invalid receiver"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 536
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    move-object v0, v1

    .line 538
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 539
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq v1, v2, :cond_5

    .line 540
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v1, v2, :cond_6

    .line 541
    :cond_5
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    move-object v0, v1

    .line 543
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartSession: statusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 545
    return-object v0
.end method

.method private restartSession(ZZ)V
    .locals 7
    .param p1, "isInviteForBye"    # Z
    .param p2, "withNewID"    # Z

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 380
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->RESTARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    .line 381
    .local v0, "reason":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;
    if-eqz p2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v2, v3, :cond_0

    .line 383
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    goto :goto_1

    .line 385
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "conversationId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setConversationId(Ljava/lang/String;)V

    .line 387
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    .line 389
    .end local v2    # "conversationId":Ljava/lang/String;
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->RESTARTING_WITH_NEW_ID:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    .line 393
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 394
    .local v2, "removedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getOwnUris(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    .line 395
    .local v4, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v5

    .line 396
    .local v5, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    if-eqz v5, :cond_3

    .line 397
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 398
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    .end local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v5    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_3
    goto :goto_2

    .line 401
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 402
    const-string v3, "StartingState"

    const-string/jumbo v4, "restartSession: remove own uris from participants list"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 406
    :cond_5
    invoke-virtual {p0, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 407
    return-void
.end method

.method private shouldRestartSessionWithNewID(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 4
    .param p1, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 356
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 357
    return v1

    .line 360
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 367
    return v1

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartingState enter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatStatusUpdate(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isAutoRejoinSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->INACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 80
    :cond_0
    return-void
.end method

.method protected onAcceptSessionDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 743
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 744
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 745
    .local v1, "acceptResult":Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAcceptSessionDone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 746
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    .line 747
    .local v2, "error":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v2, v3, :cond_0

    .line 749
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->startSessionEstablishmentTimer(Ljava/lang/Object;)V

    goto :goto_0

    .line 751
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 752
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasActiveImSessionInfo()Z

    move-result v3

    if-nez v3, :cond_1

    .line 753
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 755
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 758
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->releaseWakeLock(Ljava/lang/Object;)V

    .line 759
    return-void
.end method

.method public onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V
    .locals 43
    .param p1, "imMsg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "startingReason"    # Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;
    .param p3, "isInviteForBye"    # Z

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v15, p3

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v4, "onStartSession"

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 189
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v14

    .line 191
    .local v14, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    const/4 v13, 0x1

    if-nez v3, :cond_0

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v3

    if-le v3, v13, :cond_0

    .line 192
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)V

    .line 195
    :cond_0
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v0, v3, v2, v15}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->dumpOnStartSession(ILcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 202
    invoke-direct {v0, v14}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->generateReceivers(Ljava/util/Set;)Ljava/util/List;

    move-result-object v12

    .line 204
    .local v12, "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-direct {v0, v1, v14, v12}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->preCheckToStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/util/Set;Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v11

    .line 206
    .local v11, "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq v3, v4, :cond_1

    .line 207
    invoke-direct {v0, v1, v11}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->handleStartSessionFailure(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 208
    return-void

    .line 211
    :cond_1
    const/4 v3, 0x0

    .line 212
    .local v3, "msgParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
    if-eqz v1, :cond_3

    .line 213
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isFirstMessageInStart(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionTimeoutThreshold(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 215
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->createFirstMessageParams(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    move-result-object v3

    move-object v10, v3

    goto :goto_0

    .line 220
    :cond_2
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_3
    move-object v10, v3

    .end local v3    # "msgParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
    .local v10, "msgParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->generateSessionIds()V

    .line 232
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateUuid()Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, "sessionKey":Ljava/lang/String;
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStartSession, sendMessage IM. temporary sessionKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", msgParams : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 235
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0x3ea

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    .line 236
    .local v28, "cb":Landroid/os/Message;
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0x3f9

    invoke-virtual {v3, v4, v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    .line 237
    .local v29, "synchronousCb":Landroid/os/Message;
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0x3f8

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v30

    .line 239
    .local v30, "provisionalCb":Landroid/os/Message;
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    sget-object v18, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v19, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 240
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    move-object/from16 v20, v4

    goto :goto_1

    :cond_4
    const/16 v20, 0x0

    :goto_1
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v21

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v22

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 241
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInReplyToContributionId()Ljava/lang/String;

    move-result-object v23

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSdpContentType()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v3

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v24}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;-><init>(Ljava/lang/Object;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v3

    .line 242
    .local v7, "sessionInfo":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iput-boolean v15, v7, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    .line 243
    if-eqz v15, :cond_5

    .line 244
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 246
    :cond_5
    iput-object v2, v7, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mStartingReason:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    .line 248
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 249
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->checkIconUpdateRequired()V

    .line 253
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSdpContentType()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "contentTypeStack":Ljava/lang/String;
    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v31, v3

    goto :goto_2

    .line 258
    :cond_6
    move-object/from16 v31, v3

    .end local v3    # "contentTypeStack":Ljava/lang/String;
    .local v31, "contentTypeStack":Ljava/lang/String;
    :goto_2
    new-instance v32, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 259
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getUserAlias()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v20

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 260
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v21

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 261
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInReplyToContributionId()Ljava/lang/String;

    move-result-object v22

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v23

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isClosedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v24

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 262
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v25

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v6, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptTypes:Ljava/util/List;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptWrappedTypes:Ljava/util/List;

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 263
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v33

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 264
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_7

    move/from16 v34, v13

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    move/from16 v34, v8

    :goto_3
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 265
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v27

    move-object/from16 v35, v3

    move-object/from16 v3, v32

    move-object/from16 v36, v6

    move-object v6, v12

    move-object/from16 v37, v7

    .end local v7    # "sessionInfo":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .local v37, "sessionInfo":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v38, v9

    .end local v9    # "sessionKey":Ljava/lang/String;
    .local v38, "sessionKey":Ljava/lang/String;
    move-object/from16 v9, v18

    move-object/from16 v39, v10

    .end local v10    # "msgParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
    .local v39, "msgParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
    move-object/from16 v10, v19

    move-object/from16 v40, v11

    .end local v11    # "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .local v40, "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    move/from16 v11, v20

    move-object/from16 v41, v12

    .end local v12    # "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local v41, "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v12, v31

    move-object/from16 v13, v28

    move-object/from16 v42, v14

    .end local v14    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .local v42, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v14, v30

    move-object/from16 v15, v29

    move-object/from16 v16, v39

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v20, v24

    move/from16 v21, p3

    move-object/from16 v22, v25

    move-object/from16 v23, v36

    move-object/from16 v24, v35

    move-object/from16 v25, v33

    move/from16 v26, v34

    invoke-direct/range {v3 .. v27}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;ZLjava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)V

    .line 268
    .local v3, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;
    if-eqz v1, :cond_8

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    const-string v5, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 269
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsGeolocationPush:Z

    .line 272
    :cond_8
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v4, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->startImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V

    .line 274
    if-eqz v39, :cond_9

    .line 275
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onMessageSending(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 278
    :cond_9
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v4

    if-nez v4, :cond_a

    if-nez p3, :cond_a

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->RESTARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    if-eq v2, v4, :cond_a

    .line 279
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantsStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 281
    :cond_a
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedEvent:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    .line 282
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 283
    return-void
.end method

.method public onStartSessionDone(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 325
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 326
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 327
    .local v1, "startResult":Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    .line 328
    .local v2, "error":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRetryTimer:I

    iput v4, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    .line 330
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v3, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->toCriticalLog()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    const v6, 0x40000019    # 2.000006f

    invoke-static {v6, v4, v5, v3}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 335
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStartSessionDone : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 336
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v4

    .line 337
    .local v4, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    if-nez v4, :cond_0

    .line 338
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onStartSessionDone unknown rawHandle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 339
    return-void

    .line 342
    :cond_0
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v2, v5, :cond_1

    .line 343
    invoke-direct {p0, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSessionDoneSuccess(Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v5, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, v1, v4, v2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSessionDoneFailure(Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 347
    :goto_0
    return-void
.end method

.method protected processGroupChatManagementEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartingState, processGroupChatManagementEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    .line 110
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7d1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7da

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7dc

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7de

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d5

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d6

    if-eq v1, v2, :cond_1

    .line 127
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    .line 113
    goto :goto_0

    .line 121
    :cond_1
    const/4 v1, 0x1

    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 122
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 123
    nop

    .line 130
    :goto_0
    return v0
.end method

.method protected processMessagingEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartingState, processMessagingEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    .line 88
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xbb9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xbc2

    if-eq v1, v2, :cond_0

    .line 98
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onSendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 95
    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onSendMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 91
    nop

    .line 101
    :goto_0
    return v0
.end method

.method protected processSessionConnectionEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartingState, processSessionConnectionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x1

    .line 139
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3ef

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3f8

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3ec

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3ed

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3f4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3f5

    if-eq v1, v2, :cond_0

    .line 171
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->onCloseSessionDone(Landroid/os/Message;)V

    .line 146
    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onCloseAllSession(Landroid/os/Message;)Z

    move-result v0

    .line 164
    goto :goto_0

    .line 155
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onProcessIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    .line 156
    goto :goto_0

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onEstablishmentTimeOut(Ljava/lang/Object;)V

    .line 160
    goto :goto_0

    .line 167
    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSessionProvisionalResponse(Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;)V

    .line 168
    goto :goto_0

    .line 149
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onAcceptSessionDone(Landroid/os/Message;)V

    .line 150
    goto :goto_0

    .line 141
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSessionDone(Landroid/os/Message;)V

    .line 142
    nop

    .line 174
    :goto_0
    return v0
.end method

.method protected startSessionEstablishmentTimer(Ljava/lang/Object;)V
    .locals 7
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 767
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "session_establish_timer"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 768
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-eq v0, v2, :cond_0

    .line 769
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack response timer starts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x3ec

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 771
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->mPhoneId:I

    .line 772
    invoke-static {v3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 771
    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 774
    :cond_0
    return-void
.end method
