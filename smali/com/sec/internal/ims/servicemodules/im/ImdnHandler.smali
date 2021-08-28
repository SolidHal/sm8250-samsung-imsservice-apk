.class public Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;
.super Ljava/lang/Object;
.source "ImdnHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field private mContext:Landroid/content/Context;

.field private mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field private mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;
    .param p3, "imCache"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .param p4, "imProcessor"    # Lcom/sec/internal/ims/servicemodules/im/ImProcessor;
    .param p5, "ftProcessor"    # Lcom/sec/internal/ims/servicemodules/im/FtProcessor;
    .param p6, "imSessionProcessor"    # Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 44
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 45
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    .line 46
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    .line 47
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 48
    return-void
.end method

.method private getMessagesForReceivedImdn(ZLcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;
    .locals 5
    .param p1, "isAggregationUsed"    # Z
    .param p2, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p3, "chatId"    # Ljava/lang/String;
    .param p4, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    if-eqz p1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne p2, v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDeliveredTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p3, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    .line 213
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    :cond_0
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 221
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImdnHandler$fRENq26WtFZXuhB2I24m9IDwPa0;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImdnHandler$fRENq26WtFZXuhB2I24m9IDwPa0;

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 226
    .end local v1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 227
    :cond_2
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :goto_0
    return-object v0
.end method

.method private isValidImdnNotification(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Z
    .locals 1
    .param p1, "currentStatus"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p2, "receivedStatus"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 201
    if-eqz p1, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getMessagesForReceivedImdn$0(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I
    .locals 2
    .param p0, "m1"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p1, "m2"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 222
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    sub-int/2addr v0, v1

    .line 223
    .local v0, "value":I
    if-gez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private updateDbForReadMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 105
    if-eqz p1, :cond_2

    .line 106
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not update message with status FAILED: messageId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDisplayedTimestamp(J)V

    .line 109
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 110
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 115
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected onComposingNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;

    .line 234
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComposingNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 236
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 237
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onComposingNotificationReceived: Session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 240
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mUri:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 241
    .local v2, "remoteUri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    .line 242
    .local v3, "isGroupChat":Z
    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    const-string v5, "block_msg"

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/helper/BlockedNumberUtil;->isBlockedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incoming Composing Noti from blocked number ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    .line 248
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V

    .line 250
    if-nez v3, :cond_2

    .line 251
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    .line 254
    :cond_2
    const-string v4, ""

    .line 255
    .local v4, "alias":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 256
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mUserAlias:Ljava/lang/String;

    move-object v11, v4

    goto :goto_0

    .line 255
    :cond_3
    move-object v11, v4

    .line 259
    .end local v4    # "alias":Ljava/lang/String;
    .local v11, "alias":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 260
    .local v13, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    iget-boolean v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mIsComposing:Z

    iget v10, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mInterval:I

    move-object v4, v13

    move-object v7, v2

    move-object v8, v11

    invoke-interface/range {v4 .. v10}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onComposingNotificationReceived(Ljava/lang/String;ZLcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V

    .line 261
    .end local v13    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 263
    .end local v1    # "phoneId":I
    .end local v2    # "remoteUri":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "isGroupChat":Z
    .end local v11    # "alias":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void
.end method

.method protected onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V
    .locals 16
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImdnNotificationReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mImdnId:Ljava/lang/String;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    .line 142
    .local v2, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-nez v2, :cond_0

    .line 143
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onImdnNotificationReceived: Couldn\'t find the im message."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 146
    :cond_0
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 147
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mImdnId:Ljava/lang/String;

    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v3

    .line 149
    .local v3, "status":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-direct {v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->isValidImdnNotification(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onImdnNotificationReceived: ignore. current status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_1
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v4

    .line 155
    .local v4, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v4, :cond_2

    .line 156
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "onImdnNotificationReceived: Session not found."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 160
    :cond_2
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onImdnNotificationReceived: conversationId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", imdnId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 163
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v5

    .line 164
    .local v5, "phoneId":I
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    .line 165
    .local v6, "isGroupChat":Z
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v5}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    const-string/jumbo v9, "use_aggregation_displayed_imdn"

    invoke-interface {v7, v9}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    .line 168
    .local v7, "isAggregationUsed":Z
    :goto_0
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v7, v9, v10, v2}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->getMessagesForReceivedImdn(ZLcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v9

    .line 170
    .local v9, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 171
    .local v11, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {v11, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V

    .line 173
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 174
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 175
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMsgFromListForRevoke(Ljava/lang/String;)V

    .line 176
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    .line 180
    :cond_4
    instance-of v12, v11, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v12, :cond_6

    .line 181
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 182
    .local v13, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v15

    invoke-interface {v13, v11, v14, v15, v6}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V

    .line 183
    .end local v13    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    goto :goto_2

    :cond_5
    goto :goto_4

    .line 184
    :cond_6
    instance-of v12, v11, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v12, :cond_7

    .line 185
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 186
    .local v13, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    move-object v14, v11

    check-cast v14, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    iget-object v15, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v8

    invoke-interface {v13, v14, v15, v8, v6}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V

    .line 187
    .end local v13    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    goto :goto_3

    .line 189
    .end local v11    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_7
    :goto_4
    goto/16 :goto_1

    .line 191
    :cond_8
    if-nez v6, :cond_9

    .line 192
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12, v11}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    .line 195
    :cond_9
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v8, v10, :cond_a

    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v8, v10, :cond_b

    :cond_a
    if-nez v6, :cond_b

    .line 196
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v8, v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateServiceAvailability(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    .line 198
    :cond_b
    return-void
.end method

.method protected onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;

    .line 266
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSendImdnFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;->mImdnId:Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    .line 268
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v0, :cond_1

    .line 269
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 270
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 273
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSendImdnFailed: Session not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :goto_0
    goto :goto_1

    .line 276
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSendImdnFailed: Message not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_1
    return-void
.end method

.method protected readMessages(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 9
    .param p1, "cid"    # Ljava/lang/String;
    .param p3, "updateOnlyMStore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 51
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readMessage: cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->readMessagesforCloudSync(ILjava/util/List;)V

    .line 56
    if-eqz p3, :cond_1

    .line 57
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    .local v2, "idStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3

    .line 59
    .local v3, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->updateDbForReadMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 60
    .end local v2    # "idStr":Ljava/lang/String;
    .end local v3    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_0

    :cond_0
    goto/16 :goto_4

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 64
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v1, :cond_2

    .line 65
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "readMessage: Session not found in the cache."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 69
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDisplayedNotification: conversationId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", imdnIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 71
    .local v3, "messesages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 72
    .local v5, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .end local v5    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_1

    .line 74
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 77
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needToCapabilityCheckForImdn(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 78
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v4

    .line 79
    .local v4, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    if-eqz v4, :cond_6

    .line 80
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    sget-object v6, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v4, v5, v6, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    .line 82
    .local v5, "capx":Lcom/sec/ims/options/Capabilities;
    if-nez v5, :cond_4

    .line 84
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "readMessage: cap is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 85
    :cond_4
    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {v5, v6}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isEstablishedState()Z

    move-result v6

    if-nez v6, :cond_6

    .line 86
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 87
    .local v7, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 88
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendDisplayedNotificationDone()V

    .line 89
    .end local v7    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_2

    .line 90
    :cond_5
    return-void

    .line 94
    .end local v4    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .end local v5    # "capx":Lcom/sec/ims/options/Capabilities;
    :cond_6
    :goto_3
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->readMessages(Ljava/util/List;)V

    goto :goto_4

    .line 98
    :cond_7
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "readMessage: not registered, mark status as displayed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateDesiredNotificationStatusAsDisplay(Ljava/util/Collection;)V

    .line 102
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "messesages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :goto_4
    return-void
.end method

.method protected sendComposingNotification(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "interval"    # I
    .param p3, "isTyping"    # Z

    .line 118
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendComposingNotification: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " typing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 122
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 123
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Session not found in the cache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 128
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendComposingNotification: not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 132
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isAutoAccept()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImSessionStart()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_PRESSES_SEND_BUTTON:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    if-eq v2, v3, :cond_2

    .line 134
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acceptSession(Z)V

    .line 136
    :cond_2
    invoke-virtual {v0, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendComposing(ZI)V

    .line 137
    return-void
.end method
