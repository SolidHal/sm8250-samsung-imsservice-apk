.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;
.super Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;
.source "ImSessionClosingState.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ClosingState"


# direct methods
.method constructor <init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "imSession"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 35
    return-void
.end method

.method private onCloseAllSession(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "Voluntary departure in ClosingState. DeferMessage"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 189
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onProcessIncomingSession(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    .line 139
    .local v0, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v2, "Explicit departure is in progress. Reject the incoming invite"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->leaveSessionWithReject(Ljava/lang/Object;)V

    .line 141
    .end local v0    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;
    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 144
    :goto_0
    return-void
.end method

.method private onSendDeliveredNotification(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 152
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 153
    .local v0, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfoByMessageId(I)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v9

    .line 154
    .local v9, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v1, v2, :cond_0

    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 156
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v5, 0xbc3

    .line 157
    invoke-virtual {v1, v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 158
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v8

    .line 155
    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendDeliveredNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 162
    :goto_1
    return-void
.end method

.method private onSendDisplayedNotification(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 167
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 168
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 169
    .local v3, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfoByMessageId(I)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v4

    move-object v12, v4

    .line 170
    .local v12, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    nop

    .line 172
    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v4, v5, :cond_0

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move-object v5, v4

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 173
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v8, 0xbc5

    .line 174
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->toList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 175
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v9

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v10

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v11

    .line 171
    move-object v4, v3

    invoke-virtual/range {v4 .. v11}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendDisplayedNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    .line 176
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 178
    .end local v3    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v12    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_1
    goto :goto_0

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 180
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 182
    :cond_3
    monitor-exit v0

    .line 183
    return-void

    .line 182
    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClosingState enter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatStatusUpdate(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V

    .line 41
    return-void
.end method

.method protected processGroupChatManagementEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClosingState, processGroupChatManagementEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    .line 75
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

    .line 90
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    .line 87
    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 83
    nop

    .line 93
    :goto_0
    return v0
.end method

.method protected processMessagingEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClosingState, processMessagingEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    .line 49
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xbb9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xbc2

    if-eq v1, v2, :cond_1

    const/16 v2, 0xbc4

    if-eq v1, v2, :cond_0

    .line 63
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->onSendDisplayedNotification(Landroid/os/Message;)V

    .line 60
    goto :goto_0

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->onSendDeliveredNotification(Landroid/os/Message;)V

    .line 56
    goto :goto_0

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 52
    nop

    .line 66
    :goto_0
    return v0
.end method

.method protected processSessionConnectionEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClosingState, processSessionConnectionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x1

    .line 102
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3ed

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V

    .line 119
    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->onCloseSessionDone(Landroid/os/Message;)V

    .line 109
    goto :goto_0

    .line 126
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->onCloseAllSession(Landroid/os/Message;)Z

    move-result v0

    .line 127
    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->onProcessIncomingSession(Landroid/os/Message;)V

    .line 123
    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 105
    nop

    .line 133
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3f4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
