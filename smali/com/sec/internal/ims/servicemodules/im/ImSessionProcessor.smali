.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;
.super Landroid/os/Handler;
.source "ImSessionProcessor.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;


# static fields
.field private static final EVENT_RESET_INCOMING_SESSION_FOR_A2P:I = 0x2

.field private static final EVENT_VOLUNTARY_DEPARTURE_GROUPCHAT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field protected final mChatEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field private mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

.field private final mGroupChatsForDeparture:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mImBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field private final mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

.field private final mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field private final mImSessionListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/im/IImSessionListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

.field private mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

.field private final mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imService"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .param p3, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;
    .param p4, "imCache"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    .line 115
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 117
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 118
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 119
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    .line 121
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;

    invoke-direct {v0, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;

    .line 122
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-direct {v0, p1, p3, p4, p0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    .line 123
    return-void
.end method

.method private checkForRejectIncomingSession(IZZ)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "isGroupChat"    # Z
    .param p3, "isCGC"    # Z

    .line 2113
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 2115
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    const-string v1, "check_msgapp_imsession_reject"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDefaultMessageAppInUse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2116
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkForRejectIncomingSession: default message app is not samsung"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    return-object v1

    .line 2120
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkMainSwitchOff(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2121
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkForRejectIncomingSession: main Switch Off"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    if-eqz p2, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    :goto_0
    return-object v1

    .line 2125
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "participantbased_closed_groupchat"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2128
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkForRejectIncomingSession: group chat type mismatched"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    return-object v1

    .line 2132
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private checkFromBlocked(IZLcom/sec/ims/util/ImsUri;Ljava/lang/String;)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "isGroupChat"    # Z
    .param p3, "initiator"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "senderUri"    # Ljava/lang/String;

    .line 2101
    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "block_msg"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2102
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "skip_block_chatbot_msg"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2103
    invoke-static {p3, p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->isChatbotUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/sec/internal/helper/BlockedNumberUtil;->isBlockedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2104
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming session from blocked number ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") - reject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    const/4 v0, 0x1

    return v0

    .line 2107
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private closeChatInternal(Ljava/util/List;ZZ)V
    .locals 8
    .param p2, "isVoluntary"    # Z
    .param p3, "isDismissGroupChat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1342
    .local p1, "chatList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeChatInternal: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    .local v0, "leaveSessionList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    .local v1, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1346
    .local v3, "cid":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v4

    .line 1347
    .local v4, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v4, :cond_0

    .line 1348
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Session not found in the cache."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1350
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1352
    .end local v3    # "cid":Ljava/lang/String;
    .end local v4    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :goto_1
    goto :goto_0

    .line 1353
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1354
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v5

    .line 1355
    .local v5, "phoneId":I
    const v6, 0x4000000a    # 2.0000024f

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;)V

    .line 1356
    if-eqz p3, :cond_3

    .line 1357
    if-eqz p2, :cond_2

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    instance-of v6, v6, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;

    if-eqz v6, :cond_2

    .line 1358
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 1360
    :cond_2
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->GC_FORCE_CLOSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v3, v4, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    goto :goto_3

    .line 1361
    :cond_3
    if-eqz p2, :cond_5

    .line 1362
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1363
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1365
    :cond_4
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v3, v4, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    goto :goto_3

    .line 1368
    :cond_5
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 1370
    :goto_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1371
    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v5    # "phoneId":I
    goto :goto_2

    .line 1372
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1373
    invoke-direct {p0, v0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->handleVoluntaryDeparture(Ljava/util/List;Z)V

    .line 1375
    :cond_7
    return-void
.end method

.method private handleVoluntaryDeparture(Ljava/util/List;Z)V
    .locals 7
    .param p2, "isReusable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;Z)V"
        }
    .end annotation

    .line 1894
    .local p1, "chats":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1895
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1896
    .local v1, "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 1897
    .local v2, "phoneId":I
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isEmptySession()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1898
    if-nez p2, :cond_5

    .line 1899
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_2

    .line 1902
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateIsReusable(Z)V

    .line 1903
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 1904
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isOwnNumberChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1905
    if-nez p2, :cond_5

    .line 1906
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_2

    .line 1908
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1909
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isEstablishedState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1910
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    goto :goto_2

    .line 1912
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1915
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessagesForPendingNotificationByChatId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1916
    .local v3, "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1917
    .local v5, "noti":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 1918
    .end local v5    # "noti":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_1

    .line 1919
    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processCancelMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    .line 1922
    .end local v1    # "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v2    # "phoneId":I
    .end local v3    # "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :cond_5
    :goto_2
    goto :goto_0

    .line 1924
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1925
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->handleEventVoluntaryDeparture()V

    .line 1927
    :cond_7
    return-void
.end method

.method private makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)V
    .locals 8
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ")V"
        }
    .end annotation

    .line 1860
    .local p2, "participants":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Ljava/util/Date;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1861
    .local v0, "dateList":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Date;Ljava/lang/StringBuilder;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1862
    .local v1, "participantSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ";"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1863
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Ljava/util/Date;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    .line 1864
    .local v5, "date":Ljava/util/Date;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1865
    .local v6, "uri":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1866
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    .line 1867
    .local v7, "builder":Ljava/lang/StringBuilder;
    if-nez v7, :cond_0

    .line 1868
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1869
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .local v4, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1871
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v7    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    goto :goto_2

    .line 1874
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1876
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Ljava/util/Date;>;"
    .end local v5    # "date":Ljava/util/Date;
    .end local v6    # "uri":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1877
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1878
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/Date;Ljava/lang/StringBuilder;>;"
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    invoke-virtual {v5, p1, v6, p3, v7}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Ljava/util/Date;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 1879
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/Date;Ljava/lang/StringBuilder;>;"
    goto :goto_3

    .line 1880
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1881
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 1883
    :cond_4
    return-void
.end method

.method private processIncomingSessionForA2P(II)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "delay"    # I

    .line 2172
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processIncomingSessionForA2P: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", delay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 2174
    .local v0, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    .line 2175
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->removeMessages(I)V

    .line 2176
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 2177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2179
    :cond_0
    return-void
.end method


# virtual methods
.method protected acceptChat(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "isAccept"    # Z
    .param p3, "reason"    # I

    .line 1261
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$T4dp0imFputpqBL1FmgkJvOgGpU;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$T4dp0imFputpqBL1FmgkJvOgGpU;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1280
    return-void
.end method

.method protected addParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 998
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6islrKrchLzbUWfZKcGEQhfyVAY;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6islrKrchLzbUWfZKcGEQhfyVAY;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1001
    return-void
.end method

.method public addToRevokingMessages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;

    .line 2063
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->addToRevokingMessages(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    return-void
.end method

.method protected answerGcSession(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "answer"    # Z

    .line 1183
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$HQzrIeJcxgn3flomvRoO8nWtRhs;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$HQzrIeJcxgn3flomvRoO8nWtRhs;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1197
    return-void
.end method

.method protected changeGroupAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 1052
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$oHdgrO6Z8NDIyhVrSnWVx0_bCso;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$oHdgrO6Z8NDIyhVrSnWVx0_bCso;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1055
    return-void
.end method

.method protected changeGroupChatIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "icon_path"    # Ljava/lang/String;

    .line 1040
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$KBSvhmyf5zLCKvqazrvENhuCQy0;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$KBSvhmyf5zLCKvqazrvENhuCQy0;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1043
    return-void
.end method

.method protected changeGroupChatLeader(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1022
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pgJCT2pkrpC-GjB3BYSK8Sy7klk;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pgJCT2pkrpC-GjB3BYSK8Sy7klk;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1025
    return-void
.end method

.method protected changeGroupChatSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .line 1034
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6nBxihnmNpWuMgQORhp57RuFpAE;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6nBxihnmNpWuMgQORhp57RuFpAE;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1037
    return-void
.end method

.method protected closeChat(Ljava/lang/String;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .line 1318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    .local v0, "chatList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$w2cOXJGaDFoK_qLt0Q8JxqYf3H0;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$w2cOXJGaDFoK_qLt0Q8JxqYf3H0;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1321
    return-void
.end method

.method protected closeChat(Ljava/util/List;ZZ)V
    .locals 1
    .param p2, "isVoluntary"    # Z
    .param p3, "isDismissGroupChat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1331
    .local p1, "chatList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$QXkEyhRrUzoaHbN3VVefQ6CTgZQ;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$QXkEyhRrUzoaHbN3VVefQ6CTgZQ;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;ZZ)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1332
    return-void
.end method

.method public createChat(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZZ)Ljava/util/concurrent/Future;
    .locals 15
    .param p1, "phoneId"    # I
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "sdpContentType"    # Ljava/lang/String;
    .param p5, "threadId"    # I
    .param p6, "requestMessageId"    # Ljava/lang/String;
    .param p7, "isBroadcastChat"    # Z
    .param p8, "isClosedGC"    # Z
    .param p9, "iconPath"    # Ljava/lang/String;
    .param p10, "isTokenUsed"    # Z
    .param p11, "isTokenLink"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    .line 843
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v14}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->createChat(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected createChat(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Ljava/util/concurrent/Future;
    .locals 18
    .param p1, "phoneId"    # I
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "sdpContentType"    # Ljava/lang/String;
    .param p5, "threadId"    # I
    .param p6, "requestMessageId"    # Ljava/lang/String;
    .param p7, "isBroadcastChat"    # Z
    .param p8, "isClosedGC"    # Z
    .param p9, "iconPath"    # Ljava/lang/String;
    .param p10, "isTokenUsed"    # Z
    .param p11, "isTokenLink"    # Z
    .param p12, "conversationId"    # Ljava/lang/String;
    .param p13, "contributionId"    # Ljava/lang/String;
    .param p14, "sessionUri"    # Lcom/sec/ims/util/ImsUri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    .line 868
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v15, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    move-object/from16 v1, v17

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v0, v1

    .line 986
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 987
    return-object v0
.end method

.method protected createChat(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 15
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "sdpContentType"    # Ljava/lang/String;
    .param p4, "threadId"    # I
    .param p5, "requestMessageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    .line 821
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v14}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->createChat(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected deleteAllChats()Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1156
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$IcVgj1rLmbAevphphH0Hueg6HZ8;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$IcVgj1rLmbAevphphH0Hueg6HZ8;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1171
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1172
    return-object v0
.end method

.method protected deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;
    .locals 2
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1070
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$x-r-HU1yZNGr90FFrm32YKRmAfU;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$x-r-HU1yZNGr90FFrm32YKRmAfU;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;Z)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1118
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1119
    return-object v0
.end method

.method protected deleteChatsForUnsubscribe()Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1129
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6wYir1g8t_KMeKCXHiYNPP6luOI;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6wYir1g8t_KMeKCXHiYNPP6luOI;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1143
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1144
    return-object v0
.end method

.method protected findSession(ILjava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "ownImsi"    # Ljava/lang/String;
    .param p3, "isGroupChat"    # Z
    .param p4, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p5, "prevContributionId"    # Ljava/lang/String;
    .param p6, "contributionId"    # Ljava/lang/String;
    .param p7, "conversationId"    # Ljava/lang/String;
    .param p9, "chatMode"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .line 2137
    .local p8, "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    const/4 v0, 0x0

    .line 2139
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz p3, :cond_3

    .line 2141
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2144
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p5, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 2147
    :cond_0
    if-nez v0, :cond_2

    .line 2148
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v1, v2, :cond_1

    .line 2149
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, p7, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByConversationId(Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    goto :goto_0

    .line 2151
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, p2, p6, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 2160
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p4, v1, :cond_4

    .line 2161
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v1, p8, v2, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    goto :goto_1

    .line 2166
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v1, p8, v2, p2, p9}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 2168
    :cond_4
    :goto_1
    return-object v0
.end method

.method protected generateChatType(ZZZ)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 1
    .param p1, "isGroupChat"    # Z
    .param p2, "isParticipantsBasedGC"    # Z
    .param p3, "isBroadcastChat"    # Z

    .line 2088
    if-eqz p3, :cond_0

    .line 2089
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object v0

    .line 2091
    :cond_0
    if-nez p1, :cond_1

    .line 2092
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object v0

    .line 2094
    :cond_1
    if-eqz p2, :cond_2

    .line 2095
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object v0

    .line 2097
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object v0
.end method

.method protected getBigDataProcessor()Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;
    .locals 1

    .line 2043
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;

    return-object v0
.end method

.method protected getChatEventListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;",
            ">;"
        }
    .end annotation

    .line 2072
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    return-object v0
.end method

.method public getComposingActiveUris(Ljava/lang/String;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;

    .line 284
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$H_N-BVSLAqbXk8_G2-qBW8B6am4;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$H_N-BVSLAqbXk8_G2-qBW8B6am4;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method

.method protected getFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;",
            ">;"
        }
    .end annotation

    .line 2084
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;
    .locals 1

    .line 2076
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    return-object v0
.end method

.method protected getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;

    .line 1652
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    return-object v0
.end method

.method protected getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;",
            ">;"
        }
    .end annotation

    .line 2080
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "timestamp"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1992
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getNormalizedParticipants(ILjava/util/List;Lcom/sec/ims/util/ImsUri;)Ljava/util/Set;
    .locals 2
    .param p1, "phoneId"    # I
    .param p3, "initiator"    # Lcom/sec/ims/util/ImsUri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/util/ImsUri;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 1605
    .local p2, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    if-eqz p2, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILjava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .local v0, "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    goto :goto_0

    .line 1608
    .end local v0    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1610
    .restart local v0    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->removeOwnNumberFromParticipants(Ljava/util/Set;Lcom/sec/ims/util/ImsUri;I)V

    .line 1612
    return-object v0
.end method

.method protected handleEventBlocklistChanged()V
    .locals 8

    .line 1968
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEventBlocklistChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/BlockedNumberUtil;->getBlockedNumbersList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 1970
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1971
    .local v2, "number":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1972
    .local v3, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 1973
    .local v4, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v4, :cond_0

    .line 1974
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1975
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v7, ""

    invoke-virtual {v5, v3, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v5

    .line 1976
    .local v5, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDetailedState()Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne v6, v7, :cond_0

    .line 1977
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 1980
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v4    # "normalizedUri":Lcom/sec/ims/util/ImsUri;
    .end local v5    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_0
    goto :goto_0

    .line 1981
    :cond_1
    return-void
.end method

.method protected handleEventVoluntaryDeparture()V
    .locals 8

    .line 1934
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEventVoluntaryDeparture: mGroupChatsForDeparture size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
    return-void

    .line 1939
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "max_sipinvite_atonce"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v0

    .line 1940
    .local v0, "limit":I
    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1941
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/CollectionUtils;->partition(Ljava/util/List;I)Lcom/sec/internal/helper/CollectionUtils$Partition;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/CollectionUtils$Partition;->get(I)Ljava/util/List;

    move-result-object v1

    .line 1942
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1943
    .local v3, "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isReusable()Z

    move-result v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 1944
    .end local v3    # "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_0

    .line 1945
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1946
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1947
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->removeMessages(I)V

    .line 1948
    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->sendEmptyMessageDelayed(IJ)Z

    .line 1950
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    :cond_2
    goto :goto_4

    .line 1951
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1952
    .local v2, "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1953
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isReusable()Z

    move-result v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    goto :goto_3

    .line 1955
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 1956
    .local v4, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEAVE_SESSION_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-interface {v4, v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatClosed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V

    .line 1957
    .end local v4    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_2

    .line 1959
    .end local v2    # "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_5
    :goto_3
    goto :goto_1

    .line 1960
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1962
    :goto_4
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 144
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 153
    .local v0, "phoneId":I
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RESET_INCOMING_SESSION_FOR_A2P: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 155
    goto :goto_0

    .line 148
    .end local v0    # "phoneId":I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->handleEventVoluntaryDeparture()V

    .line 149
    nop

    .line 158
    :goto_0
    return-void
.end method

.method protected hasEstablishedSession()Z
    .locals 5

    .line 1824
    const/4 v0, 0x0

    .line 1825
    .local v0, "hasSession":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1826
    .local v1, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_1

    .line 1827
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isEstablishedSessionExist()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasFileTransferInprogress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1828
    :cond_0
    const/4 v0, 0x1

    .line 1831
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasEstablishedSession : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    return v0
.end method

.method protected ignoreIncomingMsgSet(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "isIgnore"    # Z

    .line 1221
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$7Ab1u-0LsOWhTbOxL19hDRTcA08;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$7Ab1u-0LsOWhTbOxL19hDRTcA08;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1236
    return-void
.end method

.method protected init(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V
    .locals 8
    .param p1, "imProcessor"    # Lcom/sec/internal/ims/servicemodules/im/ImProcessor;
    .param p2, "ftProcessor"    # Lcom/sec/internal/ims/servicemodules/im/FtProcessor;
    .param p3, "imTranslation"    # Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 126
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    .line 127
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    .line 128
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 129
    new-instance v7, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-object v0, v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V

    iput-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    .line 130
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {v0, v1, v2, p0, p3}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    .line 131
    return-void
.end method

.method protected isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2037
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 2038
    .local v0, "phoneId":I
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "onekey_report_psi"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->stringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 2039
    .local v1, "psi":Lcom/sec/ims/util/ImsUri;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public synthetic lambda$acceptChat$14$ImSessionProcessor(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "isAccept"    # Z
    .param p3, "reason"    # I

    .line 1262
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptChat: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isAccept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1264
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 1265
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "acceptChat: Session not found in the cache"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return-void

    .line 1268
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1269
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1270
    return-void

    .line 1274
    .end local v1    # "phoneId":I
    :cond_1
    if-eqz p2, :cond_2

    .line 1275
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acceptSession(Z)V

    goto :goto_0

    .line 1277
    :cond_2
    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->rejectSession(I)V

    .line 1279
    :goto_0
    return-void
.end method

.method public synthetic lambda$addParticipants$2$ImSessionProcessor(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "participants"    # Ljava/util/List;

    .line 999
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->addParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 1000
    return-void
.end method

.method public synthetic lambda$answerGcSession$11$ImSessionProcessor(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "answer"    # Z

    .line 1184
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "answerSession: %s %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1187
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 1188
    return-void

    .line 1190
    :cond_0
    if-eqz p2, :cond_1

    .line 1191
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acceptSession(Z)V

    goto :goto_0

    .line 1193
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->rejectSession()V

    .line 1196
    :goto_0
    return-void
.end method

.method public synthetic lambda$changeGroupAlias$7$ImSessionProcessor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 1053
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->changeGroupAlias(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method public synthetic lambda$changeGroupChatIcon$6$ImSessionProcessor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "icon_path"    # Ljava/lang/String;

    .line 1041
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->changeGroupChatIcon(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method public synthetic lambda$changeGroupChatLeader$4$ImSessionProcessor(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "participants"    # Ljava/util/List;

    .line 1023
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->changeGroupChatLeader(Ljava/lang/String;Ljava/util/List;)V

    .line 1024
    return-void
.end method

.method public synthetic lambda$changeGroupChatSubject$5$ImSessionProcessor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .line 1035
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->changeGroupChatSubject(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    return-void
.end method

.method public synthetic lambda$closeChat$16$ImSessionProcessor(Ljava/util/List;)V
    .locals 2
    .param p1, "chatList"    # Ljava/util/List;

    .line 1320
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->closeChatInternal(Ljava/util/List;ZZ)V

    return-void
.end method

.method public synthetic lambda$closeChat$17$ImSessionProcessor(Ljava/util/List;ZZ)V
    .locals 0
    .param p1, "chatList"    # Ljava/util/List;
    .param p2, "isVoluntary"    # Z
    .param p3, "isDismissGroupChat"    # Z

    .line 1331
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->closeChatInternal(Ljava/util/List;ZZ)V

    return-void
.end method

.method public synthetic lambda$createChat$1$ImSessionProcessor(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 22
    .param p1, "phoneId"    # I
    .param p2, "participants"    # Ljava/util/List;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "sdpContentType"    # Ljava/lang/String;
    .param p5, "threadId"    # I
    .param p6, "requestMessageId"    # Ljava/lang/String;
    .param p7, "isBroadcastChat"    # Z
    .param p8, "isClosedGC"    # Z
    .param p9, "iconPath"    # Ljava/lang/String;
    .param p10, "isTokenUsed"    # Z
    .param p11, "isTokenLink"    # Z
    .param p12, "conversationId"    # Ljava/lang/String;
    .param p13, "contributionId"    # Ljava/lang/String;
    .param p14, "sessionUri"    # Lcom/sec/ims/util/ImsUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 869
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v15, p5

    move-object/from16 v14, p6

    move/from16 v13, p7

    move/from16 v12, p8

    move-object/from16 v11, p9

    move/from16 v10, p10

    move/from16 v9, p11

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createChat: participants="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " subject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sdpContentType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requestMessageId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isBroadcastChat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isClosedGC="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " iconPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isTokenUsed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isTokenLink="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " conversationId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p12

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " contributionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p13

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sessionUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p14

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 869
    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 876
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v4

    .line 878
    .local v4, "imsi":Ljava/lang/String;
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 879
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string/jumbo v3, "pending_for_regi"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 880
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 881
    .local v3, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    move-object/from16 v17, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v3, v1, v15, v2, v14}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V

    .line 882
    .end local v3    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    move-object/from16 v2, v17

    goto :goto_0

    .line 883
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 886
    :cond_1
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    new-instance v3, Ljava/util/HashSet;

    move-object/from16 v8, p2

    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILjava/util/Collection;)Ljava/util/Set;

    move-result-object v3

    .line 890
    .local v3, "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    if-eqz v3, :cond_17

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p3

    move v7, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object v1, v14

    goto/16 :goto_f

    .line 899
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v5, 0x1

    if-gt v2, v5, :cond_4

    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v5

    .line 903
    .local v2, "isGroupChat":Z
    :goto_2
    if-nez v13, :cond_6

    if-eqz v2, :cond_6

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGroupChatEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 904
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v6, "GroupChat is disabled. getGroupChatEnabled=false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 906
    .local v6, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    move-object/from16 v17, v5

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v6, v1, v15, v5, v14}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V

    .line 907
    .end local v6    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    move-object/from16 v5, v17

    goto :goto_3

    .line 908
    :cond_5
    const/4 v5, 0x0

    return-object v5

    .line 911
    :cond_6
    if-eqz v2, :cond_9

    if-eqz v11, :cond_9

    .line 912
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 913
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    .line 914
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v19, v5

    .end local v5    # "file":Ljava/io/File;
    .local v19, "file":Ljava/io/File;
    const-string v5, "icon file doesn\'t exist"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 916
    .restart local v6    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    move-object/from16 v17, v5

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID_ICON_PATH:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v6, v1, v15, v5, v14}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V

    .line 917
    .end local v6    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    move-object/from16 v5, v17

    goto :goto_4

    .line 918
    :cond_7
    const/4 v5, 0x0

    return-object v5

    .line 913
    .end local v19    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_8
    move-object/from16 v19, v5

    .line 922
    .end local v5    # "file":Ljava/io/File;
    :cond_9
    const/4 v5, 0x0

    .line 923
    .local v5, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    .line 925
    .local v6, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v12, :cond_a

    .line 926
    move-object/from16 v16, v5

    .end local v5    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v16, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    const-string/jumbo v5, "participantbased_closed_groupchat"

    invoke-interface {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_5

    .line 925
    .end local v16    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v5    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_a
    move-object/from16 v16, v5

    .line 926
    .end local v5    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v16    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_b
    const/4 v5, 0x0

    .line 925
    :goto_5
    invoke-virtual {v0, v2, v5, v13}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->generateChatType(ZZZ)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v5

    .line 928
    .local v5, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    sget-object v19, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 930
    .local v19, "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    if-eqz v9, :cond_c

    goto :goto_6

    .line 932
    :cond_c
    if-eqz v10, :cond_d

    .line 933
    sget-object v19, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->ON:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-object/from16 v1, v19

    goto :goto_7

    .line 941
    :cond_d
    :goto_6
    move-object/from16 v1, v19

    .end local v19    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .local v1, "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    :goto_7
    if-eqz v2, :cond_f

    move-object/from16 v19, v6

    .end local v6    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v19, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v5, v6, :cond_e

    goto :goto_8

    :cond_e
    move-object/from16 v6, v16

    goto :goto_9

    .end local v19    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v6    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_f
    move-object/from16 v19, v6

    .line 942
    .end local v6    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v19    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :goto_8
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v6, v3, v5, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v6

    .line 945
    .end local v16    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v6, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :goto_9
    if-nez v2, :cond_11

    if-nez v6, :cond_11

    .line 946
    move/from16 v16, v2

    .end local v2    # "isGroupChat":Z
    .local v16, "isGroupChat":Z
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v2

    move-object/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .local v20, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    invoke-static {v3, v4, v5, v2}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, "chatId":Ljava/lang/String;
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v6

    .line 950
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v5

    const/4 v7, 0x1

    if-ge v5, v7, :cond_10

    .line 951
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v5, "insertedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/util/ImsUri;

    .line 953
    .local v7, "normalizedParticipant":Lcom/sec/ims/util/ImsUri;
    move-object/from16 v17, v3

    .end local v3    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .local v17, "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-direct {v3, v2, v8, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    .line 954
    .local v3, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v18, v2

    .end local v2    # "chatId":Ljava/lang/String;
    .local v18, "chatId":Ljava/lang/String;
    const-string v2, "createChat() : error, participant table is empty"

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-virtual {v0, v6, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    goto :goto_a

    .line 950
    .end local v5    # "insertedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    .end local v7    # "normalizedParticipant":Lcom/sec/ims/util/ImsUri;
    .end local v17    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v18    # "chatId":Ljava/lang/String;
    .restart local v2    # "chatId":Ljava/lang/String;
    .local v3, "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :cond_10
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    .end local v2    # "chatId":Ljava/lang/String;
    .end local v3    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v17    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v18    # "chatId":Ljava/lang/String;
    goto :goto_a

    .line 945
    .end local v16    # "isGroupChat":Z
    .end local v17    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v18    # "chatId":Ljava/lang/String;
    .end local v20    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .local v2, "isGroupChat":Z
    .restart local v3    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .local v5, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    :cond_11
    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v20, v5

    .line 961
    .end local v2    # "isGroupChat":Z
    .end local v3    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v5    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .restart local v16    # "isGroupChat":Z
    .restart local v17    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v20    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    :goto_a
    move-object v8, v6

    .end local v6    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v8, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v8, :cond_12

    .line 962
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-object v3, v4

    move-object/from16 v18, v4

    .end local v4    # "imsi":Ljava/lang/String;
    .local v18, "imsi":Ljava/lang/String;
    move-object/from16 v4, v17

    move-object/from16 v5, v20

    move-object/from16 v7, v19

    .end local v19    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v7, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    move-object/from16 v6, p3

    move-object v0, v7

    .end local v7    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    move-object/from16 v7, p4

    move-object/from16 v19, v0

    move-object v0, v8

    .end local v8    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v19    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p9

    move-object v11, v1

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v21, v1

    move-object v1, v14

    .end local v1    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .local v21, "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    move-object/from16 v14, p14

    invoke-virtual/range {v2 .. v14}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v8

    move-object/from16 v2, p3

    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v8    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_b

    .line 965
    .end local v18    # "imsi":Ljava/lang/String;
    .end local v21    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .restart local v1    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .restart local v4    # "imsi":Ljava/lang/String;
    :cond_12
    move-object/from16 v21, v1

    move-object/from16 v18, v4

    move-object v0, v8

    move-object v1, v14

    .end local v1    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v8    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v0    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v18    # "imsi":Ljava/lang/String;
    .restart local v21    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->restartSession(ILjava/lang/String;Ljava/lang/String;)V

    .line 968
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v8    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :goto_b
    const-string/jumbo v0, "start_session_when_create_groupchat"

    move-object/from16 v3, v19

    .end local v19    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v3, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    invoke-interface {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 969
    invoke-static/range {v20 .. v20}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 970
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    .line 973
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 974
    .local v5, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v5, v8}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onCreateChatSucceeded(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 975
    .end local v5    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_c

    .line 977
    :cond_14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .local v4, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    const-string v5, "1"

    const-string v6, "0"

    if-eqz v16, :cond_15

    move-object v7, v5

    goto :goto_d

    :cond_15
    move-object v7, v6

    :goto_d
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    if-eqz p8, :cond_16

    goto :goto_e

    :cond_16
    move-object v5, v6

    :goto_e
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    const v5, 0x40000009    # 2.0000021f

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    move/from16 v7, p1

    move-object/from16 v19, v21

    .end local v21    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .local v19, "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    invoke-static {v5, v7, v6, v4}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 983
    return-object v8

    .line 890
    .end local v8    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v16    # "isGroupChat":Z
    .end local v17    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v18    # "imsi":Ljava/lang/String;
    .end local v19    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .end local v20    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .local v3, "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .local v4, "imsi":Ljava/lang/String;
    :cond_17
    move-object/from16 v2, p3

    move v7, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object v1, v14

    .line 891
    .end local v3    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v4    # "imsi":Ljava/lang/String;
    .restart local v17    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v18    # "imsi":Ljava/lang/String;
    :goto_f
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "createChat: normalizedParticipants is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 893
    .local v4, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v4, v7, v15, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V

    .line 894
    .end local v4    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_10

    .line 895
    :cond_18
    const/4 v3, 0x0

    return-object v3
.end method

.method public synthetic lambda$deleteAllChats$10$ImSessionProcessor()Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1157
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deleteAllChats"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1160
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 1161
    .local v2, "phoneId":I
    invoke-static {v2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    .line 1162
    .local v3, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteAllMessages(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatStateId()I

    move-result v4

    .line 1164
    .local v4, "stateId":I
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteChats, stateId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isDeleteSessionSupported(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1166
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1168
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v2    # "phoneId":I
    .end local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v4    # "stateId":I
    :cond_0
    goto :goto_0

    .line 1169
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$deleteChats$8$ImSessionProcessor(Ljava/util/List;Z)Ljava/lang/Boolean;
    .locals 11
    .param p1, "list"    # Ljava/util/List;
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1076
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteChats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    .local v0, "deletingGroupChats":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1079
    .local v1, "deleteAllCid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1080
    .local v3, "cid":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v4

    .line 1081
    .local v4, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1082
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v5

    .line 1083
    .local v5, "remoteUri":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v6, v5, v7}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/Set;

    move-result-object v6

    .line 1084
    .local v6, "allSession":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1085
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1086
    .local v8, "tempSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    .end local v8    # "tempSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_1

    .line 1090
    .end local v5    # "remoteUri":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v6    # "allSession":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    .end local v3    # "cid":Ljava/lang/String;
    .end local v4    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_0

    .line 1093
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1094
    .restart local v3    # "cid":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteAllMessages(Ljava/lang/String;)V

    .line 1095
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v4

    .line 1096
    .restart local v4    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v4, :cond_3

    .line 1097
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatStateId()I

    move-result v5

    .line 1098
    .local v5, "stateId":I
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    .line 1099
    .local v6, "phoneId":I
    invoke-static {v6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    const-string/jumbo v8, "wait_deactvaing_delete_chat"

    invoke-interface {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v7

    .line 1100
    .local v7, "waitDeactivating":Z
    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteChats, stateId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const v8, 0x4000000b    # 2.0000026f

    invoke-static {v8, v6, v3}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;)V

    .line 1102
    invoke-static {v6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v9

    invoke-interface {v8, v9, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isDeleteSessionSupported(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1103
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1104
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1105
    :cond_2
    if-nez v7, :cond_3

    .line 1106
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 1107
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v8, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1111
    .end local v3    # "cid":Ljava/lang/String;
    .end local v4    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v5    # "stateId":I
    .end local v6    # "phoneId":I
    .end local v7    # "waitDeactivating":Z
    :cond_3
    :goto_3
    goto :goto_2

    .line 1112
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1113
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->handleVoluntaryDeparture(Ljava/util/List;Z)V

    .line 1115
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessagesforCloudSyncUsingChatId(Ljava/util/List;Z)V

    .line 1116
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public synthetic lambda$deleteChatsForUnsubscribe$9$ImSessionProcessor()Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1130
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deleteChatsForUnsubscribe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadImSessionByChatType(Z)V

    .line 1132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1133
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v3, v4, :cond_0

    .line 1134
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteAllMessages(Ljava/lang/String;)V

    .line 1135
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1136
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 1137
    .local v4, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEFT_BY_SERVER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-interface {v4, v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatClosed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V

    .line 1138
    .end local v4    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 1140
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_0
    goto :goto_0

    .line 1141
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getComposingActiveUris$0$ImSessionProcessor(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;

    .line 285
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getComposingActiveUris: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 288
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 289
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Session not found in the cache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->notifyComposingActiveUris(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getComposingActiveUris()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->notifyComposingActiveUris(Ljava/lang/String;Ljava/util/Set;)V

    .line 294
    :goto_0
    return-void
.end method

.method public synthetic lambda$ignoreIncomingMsgSet$12$ImSessionProcessor(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "isIgnore"    # Z

    .line 1222
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoreIncomingMsgSet: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isIgnore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1225
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1227
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1228
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    .line 1229
    .local v2, "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    invoke-virtual {v2, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateIsMuted(Z)V

    .line 1230
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onIgnoreIncomingMsgSetResponse(Ljava/lang/String;Z)V

    .line 1231
    return-void

    .line 1234
    .end local v1    # "phoneId":I
    .end local v2    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onIgnoreIncomingMsgSetResponse(Ljava/lang/String;Z)V

    .line 1235
    return-void
.end method

.method public synthetic lambda$notifyImSessionClosed$21$ImSessionProcessor(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 1796
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyImSessionClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1798
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->doPendingUpdateRegistration()V

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1801
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1802
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/im/IImSessionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/im/IImSessionListener;

    .line 1804
    .local v2, "listener":Lcom/sec/ims/im/IImSessionListener;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Lcom/sec/ims/im/IImSessionListener;->onImSessionEstablished(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    goto :goto_1

    .line 1805
    :catch_0
    move-exception v3

    .line 1806
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "notifyImSessionClosed failed to send IImSessionListener.onImSessionEstablished"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    .end local v2    # "listener":Lcom/sec/ims/im/IImSessionListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1811
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/im/IImSessionListener;>;"
    :cond_1
    return-void
.end method

.method public synthetic lambda$notifyImSessionEstablished$20$ImSessionProcessor(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 1775
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyImSessionEstablished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1778
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/im/IImSessionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/im/IImSessionListener;

    .line 1780
    .local v2, "listener":Lcom/sec/ims/im/IImSessionListener;
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, v3}, Lcom/sec/ims/im/IImSessionListener;->onImSessionEstablished(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1783
    goto :goto_1

    .line 1781
    :catch_0
    move-exception v3

    .line 1782
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "notifyImSessionEstablished failed to send IImSessionListener.onImSessionEstablished"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    .end local v2    # "listener":Lcom/sec/ims/im/IImSessionListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1786
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/im/IImSessionListener;>;"
    :cond_0
    return-void
.end method

.method public synthetic lambda$onIncomingSessionReceived$19$ImSessionProcessor(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 21
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    .line 1493
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->acquireWakeLock(Ljava/lang/Object;)V

    .line 1496
    iget-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mServiceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1497
    iget-object v0, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->releaseWakeLock(Ljava/lang/Object;)V

    .line 1498
    return-void

    .line 1500
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingSessionReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-object v0, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingSessionReceived: conversationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 1503
    iget-object v0, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v13

    .line 1504
    .local v13, "phoneId":I
    invoke-static {v13}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v14

    .line 1506
    .local v14, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    iget-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRecipients:Ljava/util/List;

    iget-object v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v11, v13, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getNormalizedParticipants(ILjava/util/List;Lcom/sec/ims/util/ImsUri;)Ljava/util/Set;

    move-result-object v15

    .line 1508
    .local v15, "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    iget-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;->CONFERENCE:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    move v10, v0

    .line 1510
    .local v10, "isGroupChat":Z
    iget-boolean v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsClosedGroupChat:Z

    invoke-direct {v11, v13, v10, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->checkForRejectIncomingSession(IZZ)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    move-result-object v9

    .line 1511
    .local v9, "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    if-eqz v9, :cond_3

    .line 1512
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onIncomingSessionReceived: reject"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v0, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    iget-object v2, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v9, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 1514
    iget-object v0, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->releaseWakeLock(Ljava/lang/Object;)V

    .line 1515
    return-void

    .line 1518
    :cond_3
    iget-boolean v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsClosedGroupChat:Z

    if-eqz v0, :cond_4

    .line 1519
    const-string/jumbo v0, "participantbased_closed_groupchat"

    invoke-interface {v14, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    .line 1518
    :goto_2
    invoke-virtual {v11, v10, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->generateChatType(ZZZ)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v8

    .line 1521
    .local v8, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    iget-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_5

    iget-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v7, v0

    .line 1523
    .local v7, "senderUri":Ljava/lang/String;
    iget-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-direct {v11, v13, v10, v0, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->checkFromBlocked(IZLcom/sec/ims/util/ImsUri;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mFromBlocked:Z

    .line 1524
    monitor-enter p0

    .line 1525
    :try_start_0
    iget-object v3, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    iget-object v6, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mPrevContributionId:Ljava/lang/String;

    iget-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    iget-object v5, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 1526
    iget-boolean v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsTokenUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_6

    :try_start_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->ON:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1585
    :catchall_0
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v17, v9

    move/from16 v20, v10

    move-object/from16 v19, v14

    move-object v14, v8

    goto/16 :goto_7

    .line 1526
    :cond_6
    :try_start_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    move-object/from16 v16, v1

    .line 1525
    move-object/from16 v1, p0

    move v2, v13

    move v4, v10

    move-object/from16 v17, v5

    move-object v5, v8

    move-object/from16 v18, v7

    .end local v7    # "senderUri":Ljava/lang/String;
    .local v18, "senderUri":Ljava/lang/String;
    move-object v7, v0

    move-object/from16 v19, v14

    move-object v14, v8

    .end local v8    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .local v14, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .local v19, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    move-object/from16 v8, v17

    move-object/from16 v17, v9

    .end local v9    # "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .local v17, "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    move-object v9, v15

    move/from16 v20, v10

    .end local v10    # "isGroupChat":Z
    .local v20, "isGroupChat":Z
    move-object/from16 v10, v16

    :try_start_3
    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->findSession(ILjava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1528
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {v1, v0, v15}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->updateParticipants(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Set;)V

    .line 1530
    if-nez v0, :cond_9

    .line 1531
    iget-boolean v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsForStoredNoti:Z

    if-eqz v1, :cond_7

    .line 1532
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onIncomingSessionReceived: no session. accept rcse-standfw invite"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;

    const/4 v4, 0x0

    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v13}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLandroid/os/Message;)V

    .line 1535
    .local v1, "acceptParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;
    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->acceptImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V

    .line 1537
    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->releaseWakeLock(Ljava/lang/Object;)V

    .line 1538
    monitor-exit p0

    return-void

    .line 1542
    .end local v1    # "acceptParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;
    :cond_7
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onIncomingSessionReceived: Make new incoming session."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-boolean v2, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsTokenUsed:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->ON:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    goto :goto_5

    :cond_8
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    :goto_5
    invoke-virtual {v1, v12, v15, v14, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    move-object v0, v1

    .line 1545
    invoke-static {v13}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "check_initiator_sessionuri"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v20, :cond_9

    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    .line 1546
    invoke-virtual {v1, v13, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v13, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1547
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 1551
    :cond_9
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    iget-boolean v2, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    iget-boolean v3, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsForStoredNoti:Z

    invoke-virtual {v1, v13, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->dumpIncomingSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;ZZ)V

    .line 1553
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v13}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v20, :cond_a

    .line 1554
    iget-object v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiatorAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setInitiatorAlias(Ljava/lang/String;)V

    .line 1557
    :cond_a
    if-eqz v20, :cond_b

    .line 1558
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v13, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setInitiator(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_6

    .line 1559
    :cond_b
    iget-boolean v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsChatbotRole:Z

    if-eqz v1, :cond_c

    .line 1560
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncomingSessionReceived: event.mIsChatbotRole=true, event.mInitiator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-static {v1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->removeUriParameters(Lcom/sec/ims/util/ImsUri;)V

    .line 1562
    iget-object v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setInitiator(Lcom/sec/ims/util/ImsUri;)V

    .line 1563
    invoke-static {v13}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "delay_to_deregi_for_a2p_session"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v1

    .line 1564
    .local v1, "delayForA2P":I
    if-lez v1, :cond_c

    .line 1565
    invoke-direct {v11, v13, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->processIncomingSessionForA2P(II)V

    .line 1569
    .end local v1    # "delayForA2P":I
    :cond_c
    :goto_6
    iget-boolean v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsTokenUsed:Z

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setIsTokenUsed(Z)V

    .line 1570
    iget-object v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDeviceId(Ljava/lang/String;)V

    .line 1571
    iget-boolean v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-nez v1, :cond_d

    .line 1572
    iget-boolean v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsMsgFallbackSupported:Z

    iget-boolean v2, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsMsgRevokeSupported:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setNetworkFallbackMech(ZZ)V

    .line 1573
    iget-object v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mAcceptTypes:Ljava/util/List;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    .line 1574
    iget-object v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mAcceptWrappedTypes:Ljava/util/List;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    .line 1576
    :cond_d
    iget-boolean v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsChatbotRole:Z

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIsChatbotRole(Z)V

    .line 1578
    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    .line 1580
    iget-object v1, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    if-eqz v1, :cond_e

    .line 1581
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    iget-object v3, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    iget-object v3, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    iget-object v4, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    iget-object v4, v4, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateServiceAvailability(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    .line 1584
    :cond_e
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->releaseWakeLock(Ljava/lang/Object;)V

    .line 1585
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    monitor-exit p0

    .line 1586
    return-void

    .line 1585
    .end local v17    # "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .end local v18    # "senderUri":Ljava/lang/String;
    .end local v19    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v20    # "isGroupChat":Z
    .restart local v7    # "senderUri":Ljava/lang/String;
    .restart local v8    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .restart local v9    # "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .restart local v10    # "isGroupChat":Z
    .local v14, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v17, v9

    move/from16 v20, v10

    move-object/from16 v19, v14

    move-object v14, v8

    .end local v7    # "senderUri":Ljava/lang/String;
    .end local v8    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .end local v9    # "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .end local v10    # "isGroupChat":Z
    .local v14, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .restart local v17    # "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .restart local v18    # "senderUri":Ljava/lang/String;
    .restart local v19    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v20    # "isGroupChat":Z
    :goto_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_7
.end method

.method public synthetic lambda$openChat$15$ImSessionProcessor(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "hasInvitationUI"    # Z

    .line 1292
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openChat: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", has Invitation UI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1295
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 1296
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "openChat: Session not found in the cache"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    return-void

    .line 1299
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1300
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1301
    return-void

    .line 1305
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isAutoAccept()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImSessionStart()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_OPENS_CHAT_WINDOW:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    if-ne v2, v3, :cond_2

    if-nez p2, :cond_2

    .line 1307
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acceptSession(Z)V

    .line 1309
    :cond_2
    return-void
.end method

.method public synthetic lambda$processRejoinGCSession$18$ImSessionProcessor(Ljava/util/List;ILjava/lang/String;)V
    .locals 3
    .param p1, "l"    # Ljava/util/List;
    .param p2, "phoneId"    # I
    .param p3, "imsi"    # Ljava/lang/String;

    .line 1398
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1399
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1400
    goto :goto_0

    .line 1402
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1403
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processRejoinGCSession()V

    .line 1405
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_1
    goto :goto_0

    .line 1406
    :cond_2
    return-void
.end method

.method public synthetic lambda$receiveDeliveryTimeout$22$ImSessionProcessor(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;

    .line 1843
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1844
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 1845
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "receiveDeliveryTimeout session not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    return-void

    .line 1848
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveDeliveryTimeout()V

    .line 1849
    return-void
.end method

.method public synthetic lambda$removeParticipants$3$ImSessionProcessor(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "participants"    # Ljava/util/List;

    .line 1011
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->removeParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 1012
    return-void
.end method

.method public synthetic lambda$sendComposingNotification$13$ImSessionProcessor(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "interval"    # I
    .param p3, "isTyping"    # Z

    .line 1248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->sendComposingNotification(Ljava/lang/String;IZ)V

    .line 1249
    return-void
.end method

.method protected notifyImSessionClosed(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 1794
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isEstablishedSessionExist()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasFileTransferInprogress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1795
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$W-1E_SSTewFZp5iOyeWGpW49jKk;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$W-1E_SSTewFZp5iOyeWGpW49jKk;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;I)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1813
    :cond_0
    return-void
.end method

.method protected notifyImSessionEstablished(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 1773
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isEstablishedSessionExist()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasFileTransferInprogress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1774
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$wy54YghAqSYuf6nU-sL2MLhGucs;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$wy54YghAqSYuf6nU-sL2MLhGucs;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;I)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1788
    :cond_1
    return-void
.end method

.method public onAddParticipantsFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 324
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 325
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 326
    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAddParticipantsFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v2, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    const v3, 0x4000000e    # 2.0000033f

    invoke-static {v3, v1, p1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 333
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 334
    .local v4, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v4, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onAddParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 335
    .end local v4    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_2

    .line 336
    :cond_2
    return-void
.end method

.method public onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 307
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddParticipantsSucceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 309
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/Collection;)V

    .line 310
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method public onBlockedMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    .line 796
    return-void
.end method

.method public onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 494
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 495
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 496
    :cond_0
    return-void
.end method

.method public onChangeGroupAliasSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 478
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupAliasSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 480
    :cond_0
    return-void
.end method

.method public onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "icon_path"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 459
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeGroupChatIconFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", icon_path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 463
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v2, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 464
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 465
    :cond_1
    return-void
.end method

.method public onChangeGroupChatIconSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "icon_path"    # Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 449
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeGroupChatIconSuccess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", icon_path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 452
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatIconSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 454
    :cond_1
    return-void
.end method

.method public onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 404
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 405
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 406
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method

.method public onChangeGroupChatLeaderSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 388
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 389
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatLeaderSucceeded(Ljava/lang/String;Ljava/util/List;)V

    .line 390
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method

.method public onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 439
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeGroupChatSubjectFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 442
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v2, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 443
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 444
    :cond_1
    return-void
.end method

.method public onChangeGroupChatSubjectSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 420
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeGroupChatSubjectSucceeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 423
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatSubjectSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 425
    :cond_1
    return-void
.end method

.method public onChatClosed(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V
    .locals 4
    .param p1, "chat"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 200
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-eq p2, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 202
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatClosed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V

    .line 203
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->notifyImSessionClosed(I)V

    .line 207
    return-void
.end method

.method public onChatDeparted(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 3
    .param p1, "chat"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 218
    if-nez p1, :cond_0

    .line 219
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChatDeparted : invalid ImSession"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 222
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChatDeparted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isReusable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isReusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public onChatEstablished(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 8
    .param p1, "chat"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 170
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    iget-object v7, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    move-object v2, v1

    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatEstablished(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/util/List;)V

    .line 171
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->notifyImSessionEstablished(I)V

    .line 173
    return-void
.end method

.method public onChatStatusUpdate(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V
    .locals 4
    .param p1, "chat"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "state"    # Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 186
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatUpdateState(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V

    .line 187
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method public onChatSubjectUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subjectData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 745
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 746
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChatSubjectUpdated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 746
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 748
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 749
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatSubjectUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V

    .line 750
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 751
    :cond_1
    return-void
.end method

.method protected onComposingNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->onComposingNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V

    .line 276
    return-void
.end method

.method public onComposingReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V
    .locals 9
    .param p1, "chat"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "eventUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "userAlias"    # Ljava/lang/String;
    .param p4, "isComposing"    # Z
    .param p5, "interval"    # I

    .line 253
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyComposingReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isComposing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 255
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    move-object v2, v1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onComposingNotificationReceived(Ljava/lang/String;ZLcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V

    .line 256
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method protected onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    .line 1427
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceInfoUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1429
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 1430
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onConferenceInfoUpdated: Session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1432
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v1, v2, :cond_1

    .line 1433
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onConferenceInfoUpdated: ignore the event."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    return-void

    .line 1436
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveConferenceInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    .line 1438
    :goto_0
    return-void
.end method

.method public onGroupChatIconDeleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 765
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGroupChatIconDeleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 767
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onGroupChatIconDeleted(Ljava/lang/String;)V

    .line 768
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 769
    :cond_1
    return-void
.end method

.method public onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "iconData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 755
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 756
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGroupChatIconUpdated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 758
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 759
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 760
    :cond_1
    return-void
.end method

.method public onGroupChatLeaderChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "leaderParticipants"    # Ljava/lang/String;

    .line 623
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupChatLeaderChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_LEADER_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 628
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 629
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onGroupChatLeaderUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 631
    :cond_0
    return-void
.end method

.method public onGroupChatLeaderInformed(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "leaderParticipants"    # Ljava/lang/String;

    .line 642
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupChatLeaderInformed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_LEADER_INFORMED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 644
    return-void
.end method

.method public onImErrorReport(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)V
    .locals 6
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "phoneId"    # I

    .line 698
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onImErrorReport"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 700
    .local v0, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_2

    .line 701
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    .line 702
    .local v1, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v2, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    const v3, 0x40000016    # 2.0000052f

    const-string v4, "none"

    invoke-static {v3, p2, v4, v2}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 705
    if-eqz v1, :cond_2

    .line 706
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const-string v5, "im"

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onImErrorReport : 403 forbidden service not authorised"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/ims/util/SipError;

    invoke-interface {v1, v5, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 714
    goto :goto_0

    .line 708
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onImErrorReport : 403 forbidden no warning header, try re-regi"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-interface {v1, v5, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 720
    .end local v1    # "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .end local v2    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-void
.end method

.method protected onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V

    .line 267
    return-void
.end method

.method public onIncomingMessageProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 3
    .param p1, "msgEvent"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 682
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received a message in INVITE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mChatId:Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    .line 687
    :cond_0
    return-void
.end method

.method public onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;Z)V
    .locals 4
    .param p1, "msgEvent"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "notify"    # Z

    .line 656
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingSessionProcessed, need to notify?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 659
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_1

    .line 660
    if-eqz p1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 663
    .local v1, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v1, :cond_1

    .line 664
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto :goto_0

    .line 666
    .end local v1    # "normalizedUri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 667
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiatorAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    nop

    .line 671
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 672
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 673
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatInvitationReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 674
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 677
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onIncomingMessageProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 678
    return-void
.end method

.method protected onIncomingSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    .line 1492
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$LPCsZ-4Hl0cUOIzuVShLQI8XTbk;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$LPCsZ-4Hl0cUOIzuVShLQI8XTbk;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1586
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1587
    return-void
.end method

.method protected onIncomingSlmLMMSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;

    .line 1595
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingSlmLMMSessionReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1598
    .local v0, "phoneId":I
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Message;Ljava/lang/String;)V

    .line 1600
    .local v1, "acceptParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->acceptSlmLMMSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;)V

    .line 1601
    return-void
.end method

.method public onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 1
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .param p3, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ")V"
        }
    .end annotation

    .line 2058
    .local p2, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 2059
    return-void
.end method

.method public onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2053
    .local p2, "imdnIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    .line 2054
    return-void
.end method

.method protected onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 1706
    if-nez p1, :cond_0

    .line 1707
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingFailed: msg is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    return-void

    .line 1710
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1711
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingFailed: temporary message."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 1713
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1714
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    goto :goto_0

    .line 1715
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    .line 1716
    return-void

    .line 1718
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1720
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 1721
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1722
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMessageSendingFailed: engine error and deregistered. fallback to legacy."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    move-object p2, v1

    .line 1726
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-eq v1, v2, :cond_4

    .line 1727
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1730
    :cond_4
    if-nez v0, :cond_5

    .line 1731
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMessageSendingFailed: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    return-void

    .line 1735
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result v3

    iget-object v6, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    .line 1736
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1735
    move-object v4, v0

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->dumpMessageSendingFailed(ILcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1739
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    .line 1740
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamMsgId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onMessageReportResponse(Ljava/lang/Long;Z)V

    .line 1741
    return-void

    .line 1744
    :cond_6
    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1746
    const-string v1, "GATE"

    const-string v2, "<GATE-M>MMS_ERROR</GATE-M>"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageSendingFailed: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", conversationId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", imdnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_8
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", required_action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1749
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 1752
    instance-of v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    const-string v2, ", result="

    const-string v3, ", strategy="

    if-eqz v1, :cond_a

    .line 1753
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMessageSendingFailed ImMessage: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 1755
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    invoke-interface {v2, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1756
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    goto :goto_2

    :cond_9
    goto :goto_4

    .line 1757
    :cond_a
    instance-of v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v1, :cond_b

    .line 1758
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMessageSendingFailed FtMessage: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 1760
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    invoke-interface {v2, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1761
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    goto :goto_3

    .line 1764
    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    .line 1765
    return-void
.end method

.method protected onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 14
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1656
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;

    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->sendRCSMInfoToHQM(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)Z

    .line 1658
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1659
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 1660
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMessageSendingSucceeded: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    return-void

    .line 1663
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageSendingSucceeded: type= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", conversationId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", imdnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1663
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1667
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1668
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    .line 1669
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamMsgId()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onMessageReportResponse(Ljava/lang/Long;Z)V

    .line 1671
    :cond_1
    return-void

    .line 1674
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 1675
    .local v3, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    invoke-interface {v3, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1676
    .end local v3    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    goto :goto_0

    .line 1677
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1678
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    .line 1679
    return-void

    .line 1681
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-eq v1, v3, :cond_5

    .line 1682
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->removeFromPendingListWithDelay(I)V

    .line 1685
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1686
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    .line 1687
    .local v3, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v3, :cond_7

    const-string v4, "central_msg_store"

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1688
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMessageSendingSucceeded for cloud sync: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :try_start_0
    const-string v4, "com.sec.internal.ims.cmstore.CloudMessageServiceWrapper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1691
    .local v4, "cldMsgServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_6

    .line 1692
    const-string v5, "getInstance"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1693
    .local v5, "cldGetInstance":Ljava/lang/reflect/Method;
    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mContext:Landroid/content/Context;

    aput-object v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1694
    .local v6, "cldMsgServiceObj":Ljava/lang/Object;
    if-eqz v6, :cond_6

    .line 1695
    const-string/jumbo v9, "sentRCSMessage"

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v8

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v2

    const-class v12, Ljava/lang/String;

    const/4 v13, 0x2

    aput-object v12, v11, v13

    invoke-virtual {v4, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1696
    .local v9, "method":Ljava/lang/reflect/Method;
    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v2

    aput-object v7, v10, v13

    invoke-static {v9, v6, v10}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    .end local v4    # "cldMsgServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "cldGetInstance":Ljava/lang/reflect/Method;
    .end local v6    # "cldMsgServiceObj":Ljava/lang/Object;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    :cond_6
    goto :goto_1

    .line 1699
    :catch_0
    move-exception v2

    .line 1700
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1703
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    return-void
.end method

.method public onNotifyParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 555
    .local p2, "participants":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Ljava/util/Date;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyParticipantsAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 557
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)V

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 560
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 561
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 562
    :cond_0
    return-void
.end method

.method public onNotifyParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 574
    .local p2, "participants":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Ljava/util/Date;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyParticipantsJoined: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 576
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)V

    .line 578
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 579
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 580
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 581
    :cond_0
    return-void
.end method

.method public onNotifyParticipantsKickedOut(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 612
    .local p2, "participants":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Ljava/util/Date;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyParticipantsKickedOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 614
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_KICKOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)V

    .line 616
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 617
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 618
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 619
    :cond_0
    return-void
.end method

.method public onNotifyParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 593
    .local p2, "participants":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Ljava/util/Date;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyParticipantsLeft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 595
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)V

    .line 597
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 598
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 599
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 600
    :cond_0
    return-void
.end method

.method public onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 782
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 783
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    .line 784
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 785
    :cond_0
    return-void
.end method

.method public onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 539
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantsDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteParticipant(Ljava/util/Collection;)V

    .line 542
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deleteParticipant(Ljava/util/Collection;)V

    .line 543
    return-void
.end method

.method public onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 508
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantsInserted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addParticipant(Ljava/util/Collection;)V

    .line 511
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addParticipant(Ljava/util/Collection;)V

    .line 512
    return-void
.end method

.method public onParticipantsUpdated(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 524
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantsUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;)V

    .line 527
    return-void
.end method

.method public onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 731
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasProcessingFileTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 732
    .local v0, "state":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyOngoingFtEvent(ZI)V

    .line 733
    return-void
.end method

.method public onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 364
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 365
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 366
    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRemoveParticipantsFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 369
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v2, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    const v3, 0x4000000f    # 2.0000036f

    invoke-static {v3, v1, p1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 373
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 374
    .local v4, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v4, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 375
    .end local v4    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_2

    .line 376
    :cond_2
    return-void
.end method

.method public onRemoveParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 349
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onRemoveParticipantsSucceeded(Ljava/lang/String;Ljava/util/Collection;)V

    .line 350
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 351
    :cond_0
    return-void
.end method

.method public onRequestSendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 806
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->sendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 807
    return-void
.end method

.method protected onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;)V

    .line 238
    return-void
.end method

.method protected onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    .line 1466
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionClosed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mChatId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByRawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_0

    .line 1471
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1473
    .restart local v0    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :goto_0
    if-nez v0, :cond_1

    .line 1474
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSessionClosed: Session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1476
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 1478
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1479
    .local v1, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1480
    const v2, 0x40000014    # 2.0000048f

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v3

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mChatId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 1482
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V

    .line 1484
    .end local v1    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-void
.end method

.method protected onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    .line 1446
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionEstablished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1449
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1450
    .local v1, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1451
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSessionEstablished: Session not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1453
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "none"

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1455
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V

    .line 1456
    const v2, 0x40000010    # 2.0000038f

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v3

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mChatId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 1458
    :goto_1
    return-void
.end method

.method public openChat(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "hasInvitationUI"    # Z

    .line 1291
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$UoUHyIoE91IEMDgP99VeTMGgxXY;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$UoUHyIoE91IEMDgP99VeTMGgxXY;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1310
    return-void
.end method

.method protected processRejoinGCSession(I)V
    .locals 13
    .param p1, "phoneId"    # I

    .line 1382
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 1383
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    const/4 v1, 0x0

    .line 1384
    .local v1, "count":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    .line 1386
    .local v2, "imsi":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1388
    .local v3, "rejoinSession":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1389
    .local v5, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isAutoRejoinSession()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1390
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1392
    .end local v5    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_0
    goto :goto_0

    .line 1393
    :cond_1
    const-string v4, "max_sipinvite_atonce"

    invoke-interface {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v4

    .line 1394
    .local v4, "limit":I
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rejoinSession: list size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " limit : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    if-lez v4, :cond_3

    .line 1396
    invoke-static {v3, v4}, Lcom/sec/internal/helper/CollectionUtils;->partition(Ljava/util/List;I)Lcom/sec/internal/helper/CollectionUtils$Partition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/helper/CollectionUtils$Partition;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1397
    .local v6, "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    new-instance v7, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$cG0KFOeigYjpWQheiZ0ZQ6qbEuA;

    invoke-direct {v7, p0, v6, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$cG0KFOeigYjpWQheiZ0ZQ6qbEuA;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;ILjava/lang/String;)V

    const-wide/16 v8, 0x3e8

    add-int/lit8 v10, v1, 0x1

    .end local v1    # "count":I
    .local v10, "count":I
    int-to-long v11, v1

    mul-long/2addr v11, v8

    invoke-virtual {p0, v7, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1407
    .end local v6    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    move v1, v10

    goto :goto_1

    .end local v10    # "count":I
    .restart local v1    # "count":I
    :cond_2
    goto :goto_3

    .line 1409
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1410
    .local v6, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v7, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1411
    goto :goto_2

    .line 1413
    :cond_4
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1414
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processRejoinGCSession()V

    .line 1416
    .end local v6    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_5
    goto :goto_2

    .line 1418
    :cond_6
    :goto_3
    return-void
.end method

.method protected readMessages(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1207
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->readMessages(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1208
    return-void
.end method

.method protected readMessages(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
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

    .line 1211
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->readMessages(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1212
    return-void
.end method

.method protected receiveDeliveryTimeout(Ljava/lang/String;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;

    .line 1842
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$ibPKEcUHzdyiY3Jvi-I-wbLAE-c;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$ibPKEcUHzdyiY3Jvi-I-wbLAE-c;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1850
    return-void
.end method

.method protected registerChatEventListener(Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method protected registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/im/IImSessionListener;
    .param p2, "phoneId"    # I

    .line 2002
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerImSessionListener phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    if-eqz p1, :cond_2

    .line 2004
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2007
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2008
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/im/IImSessionListener;>;"
    if-eqz v0, :cond_1

    .line 2009
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/im/IImSessionListener;>;"
    :cond_1
    nop

    .line 2015
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->notifyImSessionEstablished(I)V

    .line 2016
    return-void

    .line 2012
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "no registerImSessionListener and not work"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    return-void
.end method

.method public removeFromRevokingMessages(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2068
    .local p1, "imdnIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->removeFromRevokingMessages(Ljava/util/Collection;)V

    .line 2069
    return-void
.end method

.method protected removeOwnNumberFromParticipants(Ljava/util/Set;Lcom/sec/ims/util/ImsUri;I)V
    .locals 6
    .param p2, "sender"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/util/ImsUri;",
            "I)V"
        }
    .end annotation

    .line 1623
    .local p1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeOwnNumberFromParticipants participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,sender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    if-eqz p2, :cond_0

    .line 1625
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1628
    .local v0, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_2

    .line 1629
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    .local v1, "ownUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    .line 1635
    .local v3, "addr":Lcom/sec/ims/util/NameAddr;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1636
    .end local v3    # "addr":Lcom/sec/ims/util/NameAddr;
    goto :goto_0

    .line 1638
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1639
    invoke-interface {p1, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1642
    .end local v1    # "ownUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    :cond_2
    return-void
.end method

.method protected removeParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1010
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Gkn5sIR-YlPGFSHLWcsz-Fhn8KM;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Gkn5sIR-YlPGFSHLWcsz-Fhn8KM;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1013
    return-void
.end method

.method public sendComposingNotification(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "interval"    # I
    .param p3, "isTyping"    # Z

    .line 1247
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Pkhb5PwFOUCjrxtn7m5ULgwZBeM;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Pkhb5PwFOUCjrxtn7m5ULgwZBeM;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1250
    return-void
.end method

.method public setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "b"    # Z
    .param p3, "imsi"    # Ljava/lang/String;

    .line 2048
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    .line 2049
    return-void
.end method

.method protected unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/im/IImSessionListener;
    .param p2, "phoneId"    # I

    .line 2023
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterImSessionListener phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2025
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2026
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/im/IImSessionListener;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2028
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/im/IImSessionListener;>;"
    :cond_0
    return-void
.end method
