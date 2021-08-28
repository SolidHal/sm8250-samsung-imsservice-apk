.class public Lcom/sec/internal/ims/servicemodules/im/ImCache;
.super Ljava/lang/Object;
.source "ImCache.java"


# static fields
.field private static final DEFAULT_MAX_CONCURRENT_SESSION:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_CACHED_MESSAGE:I = 0x1e

.field private static final MAX_CACHED_SESSION:I = 0x1f4

.field private static sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# instance fields
.field private final mActiveSessions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mCachingMessages:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mChatbotRoleUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private final mImSessions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mIsChatbotRoleUrisLoaded:Z

.field private mIsLoaded:Z

.field private final mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Ljava/util/Observer;

.field private final mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

.field private mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    .line 93
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Set;

    .line 99
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImCache$8cd4pvRrTJRIiy_5UxOf_z1mrjg;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImCache$8cd4pvRrTJRIiy_5UxOf_z1mrjg;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    .line 110
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;

    const/16 v1, 0x1f4

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    .line 133
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    .line 163
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Lcom/sec/internal/ims/servicemodules/im/ImPersister;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .param p1, "x1"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 72
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->createSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .param p1, "x1"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 72
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/im/ImCache;Ljava/util/Observable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .param p1, "x1"    # Ljava/util/Observable;

    .line 72
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    return-void
.end method

.method private cloudParticipantTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .locals 3
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 1075
    const-string v0, "chat_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, "chatId":Ljava/lang/String;
    const-string/jumbo v1, "uri"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 1080
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    return-object v2
.end method

.method private cloudSessionTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .locals 25
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 1043
    move-object/from16 v0, p1

    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, "chatId":Ljava/lang/String;
    const-string/jumbo v2, "own_sim_imsi"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1045
    .local v15, "ownNumber":Ljava/lang/String;
    const-string v2, "direction"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1046
    .local v2, "direction":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 1047
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_0

    .line 1046
    :cond_0
    move-object/from16 v16, v2

    .line 1049
    .end local v2    # "direction":Ljava/lang/Integer;
    .local v16, "direction":Ljava/lang/Integer;
    :goto_0
    const-string v2, "conversation_id"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1050
    .local v17, "convId":Ljava/lang/String;
    const-string v2, "contribution_id"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1051
    .local v18, "contrId":Ljava/lang/String;
    nop

    .line 1052
    const-string v2, "is_group_chat"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move/from16 v19, v2

    .line 1053
    .local v19, "is_group_chat":Z
    const-string/jumbo v2, "subject"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1054
    .local v20, "subject":Ljava/lang/String;
    const-string v21, ""

    .line 1055
    .local v21, "ownGroupAlias":Ljava/lang/String;
    const-string v2, "chat_type"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1056
    .local v2, "chatType":Ljava/lang/Integer;
    if-nez v2, :cond_3

    .line 1057
    if-eqz v19, :cond_2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    :goto_2
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_3

    .line 1056
    :cond_3
    move-object/from16 v22, v2

    .line 1059
    .end local v2    # "chatType":Ljava/lang/Integer;
    .local v22, "chatType":Ljava/lang/Integer;
    :goto_3
    const-string v2, "chat_mode"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1060
    .local v2, "chatMode":Ljava/lang/Integer;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set own sim imsi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sim_imsi"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    if-nez v2, :cond_4

    .line 1062
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_4

    .line 1061
    :cond_4
    move-object/from16 v23, v2

    .line 1064
    .end local v2    # "chatMode":Ljava/lang/Integer;
    .local v23, "chatMode":Ljava/lang/Integer;
    :goto_4
    new-instance v24, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v7

    .line 1065
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v8

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v2, v24

    move-object v3, v1

    move-object v4, v15

    move-object/from16 v5, v21

    move-object/from16 v6, v20

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    invoke-direct/range {v2 .. v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;)V

    .line 1064
    return-object v24
.end method

.method private declared-synchronized createSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 8
    .param p1, "chatData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    monitor-enter p0

    .line 467
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 468
    .local v0, "participants":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipantSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 469
    .local v2, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 471
    .end local v2    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 473
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 474
    .local v1, "phoneId":I
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load participants: size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", values()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v2, v3, :cond_3

    .line 479
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 480
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 482
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 483
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setContributionId(Ljava/lang/String;)V

    goto :goto_2

    .line 485
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 486
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setContributionId(Ljava/lang/String;)V

    .line 489
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadPendingMessages(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 490
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 492
    .local v2, "needToRevokeMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result v3

    if-lez v3, :cond_5

    .line 493
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadMessageListForRevoke(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Ljava/util/List;

    move-result-object v3

    .line 494
    .local v3, "messageListForRevoke":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 495
    .local v5, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    nop

    .end local v5    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_3

    .line 499
    .end local v3    # "messageListForRevoke":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 501
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 502
    .local v3, "sb":Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 503
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 504
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 506
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 507
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 508
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 509
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatData(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 510
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participants(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 511
    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->needToRevokeMessages(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 512
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 513
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    monitor-exit p0

    return-object v4

    .line 466
    .end local v0    # "participants":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    .end local v1    # "phoneId":I
    .end local v2    # "needToRevokeMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "sb":Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .end local p1    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2335
    if-eqz p1, :cond_1

    .line 2336
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_0

    .line 2337
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 2339
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(I)V

    .line 2343
    :cond_1
    return-void
.end method

.method public static getContentType(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .line 185
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getContentTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "contentType":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "extension":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isMetaDataExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-static {p0}, Lcom/sec/internal/helper/MetaDataUtil;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 193
    :cond_0
    if-nez v1, :cond_1

    .line 194
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v4, "ContentTypeTranslator error: UNKNOWN TYPE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "application/octet-stream"

    .line 198
    :cond_1
    return-object v1
.end method

.method private static getContentTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "contentType":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "extension":Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->isTranslationDefined(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-static {v1}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    return-object v0
.end method

.method private getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 174
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 5
    .param p1, "ftMsg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 2253
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeleteFtMessage: msgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " direction:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " transferState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2253
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->removeAutoResumeFileTimer()V

    .line 2256
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2257
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 2260
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_1

    .line 2261
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteFile()Z

    move-result v0

    .line 2262
    .local v0, "isFileDeleted":Z
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteThumbnail()Z

    move-result v1

    .line 2263
    .local v1, "isThumbnailDeleted":Z
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isDeleted:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isThumbnailDeleted:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    .end local v0    # "isFileDeleted":Z
    .end local v1    # "isThumbnailDeleted":Z
    :cond_1
    return-void
.end method

.method private static isMetaDataExtension(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .line 226
    const-string v0, "3gp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mp4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "heic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private declared-synchronized loadChatbotRoleUris()V
    .locals 3

    monitor-enter p0

    .line 2626
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadChatbotRoleUris: mIsChatbotRoleUrisLoaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsChatbotRoleUrisLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "mIsLoaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsChatbotRoleUrisLoaded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 2628
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2629
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Set;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryChatbotRoleUris()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsChatbotRoleUrisLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2632
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    monitor-exit p0

    return-void

    .line 2625
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    monitor-enter p0

    .line 1303
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v0

    .line 1304
    .local v0, "imdnRecRoute":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1305
    .local v1, "phoneId":I
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 1306
    instance-of v2, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1309
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_1

    .line 1307
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    .line 1311
    :goto_1
    instance-of v2, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v2, :cond_2

    .line 1312
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1313
    .local v2, "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    .line 1314
    .local v3, "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    if-eqz v3, :cond_2

    .line 1315
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsGroupChat(Z)V

    .line 1316
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 1320
    .end local v2    # "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .end local v3    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    monitor-exit p0

    return-object p1

    .line 1302
    .end local v0    # "imdnRecRoute":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    .end local v1    # "phoneId":I
    .end local p1    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private loadMessageListForRevoke(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Ljava/util/List;
    .locals 6
    .param p1, "chatData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesIdsForRevoke(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 555
    .local v0, "needToRevokeMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "revoke messages count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v2, "messageIdsForQuerying":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 561
    .local v4, "id":I
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->containsKey(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 562
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 564
    :cond_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v4    # "id":I
    :goto_1
    goto :goto_0

    .line 568
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 569
    .local v4, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 570
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v5

    .line 571
    .local v5, "imdnRecRoute":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 572
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 573
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    .end local v4    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v5    # "imdnRecRoute":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    goto :goto_2

    .line 575
    :cond_2
    return-object v1
.end method

.method private loadPendingMessages(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V
    .locals 9
    .param p1, "chatData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryPendingMessageIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 518
    .local v0, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pending messages count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 521
    .local v1, "phoneId":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v2, "messageIdsForQuerying":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 523
    .local v4, "id":I
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v6

    .line 524
    .local v6, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v6, :cond_2

    .line 525
    instance-of v7, v6, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v7, :cond_1

    instance-of v7, v6, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v7, :cond_0

    goto :goto_1

    .line 528
    :cond_0
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v7, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_2

    .line 526
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v7

    invoke-virtual {v5, v7, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_2

    .line 531
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    .end local v4    # "id":I
    .end local v6    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :goto_2
    goto :goto_0

    .line 534
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 535
    .local v4, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v6

    .line 536
    .local v6, "imdnRecRoute":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 537
    instance-of v7, v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v7, :cond_5

    instance-of v7, v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v7, :cond_4

    goto :goto_4

    .line 540
    :cond_4
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v7, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_5

    .line 538
    :cond_5
    :goto_4
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v8

    invoke-virtual {v7, v8, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    .line 542
    :goto_5
    instance-of v7, v4, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v7, :cond_6

    .line 543
    move-object v7, v4

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 544
    .local v7, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsGroupChat(Z)V

    .line 545
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 548
    .end local v7    # "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :cond_6
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 549
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 550
    .end local v4    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v6    # "imdnRecRoute":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    goto :goto_3

    .line 551
    :cond_7
    return-void
.end method

.method private registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2407
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 2408
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2409
    return-void
.end method

.method private registerObserver(Ljava/util/Observable;)V
    .locals 1
    .param p1, "observable"    # Ljava/util/Observable;

    .line 268
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    invoke-virtual {p1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 269
    return-void
.end method

.method private registerParticipant(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 2478
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 2479
    .local v1, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 2480
    .end local v1    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 2481
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2482
    return-void
.end method

.method private registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 3
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2379
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    .line 2380
    .local v0, "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 2381
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2382
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    return-void
.end method

.method private unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2451
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2452
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2453
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2454
    return-void
.end method

.method private unregisterMessage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 2464
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2465
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2466
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2467
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2468
    .end local v1    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_0

    .line 2469
    :cond_0
    return-void
.end method

.method private unregisterObserver(Ljava/util/Observable;)V
    .locals 1
    .param p1, "observable"    # Ljava/util/Observable;

    .line 277
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    invoke-virtual {p1, v0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 278
    return-void
.end method

.method private unregisterParticipant(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 2491
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2492
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 2493
    .local v1, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2494
    .end local v1    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 2495
    :cond_0
    return-void
.end method

.method private unregisterSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 3
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2393
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    .line 2394
    .local v0, "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2395
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2396
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    return-void
.end method

.method private updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .param p1, "chatData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 288
    return-void
.end method

.method private updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 2
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 299
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 300
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;
    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method private updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 2
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 311
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 313
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 314
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;
    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method private updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 2
    .param p1, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 326
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 327
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;
    goto :goto_0

    .line 328
    :cond_0
    return-void
.end method

.method private updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 2
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 338
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 340
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 341
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;
    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method


# virtual methods
.method public addImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 249
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public declared-synchronized addParticipant(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    monitor-enter p0

    .line 2214
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2215
    monitor-exit p0

    return-void

    .line 2213
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addToChatbotRoleUris(Lcom/sec/ims/util/ImsUri;)V
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    monitor-enter p0

    .line 2594
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_1

    .line 2595
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToChatbotRoleUris: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Set;

    .line 2596
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2595
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsChatbotRoleUrisLoaded:Z

    if-nez v0, :cond_0

    .line 2598
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadChatbotRoleUris()V

    .line 2600
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2593
    .end local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2602
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .restart local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2419
    if-eqz p1, :cond_0

    .line 2420
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 2422
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Message is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    :goto_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    .line 456
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeDB()V
    .locals 1

    .line 2638
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->closeDB()V

    .line 2639
    return-void
.end method

.method public declared-synchronized cloudDeleteMessage(Ljava/lang/String;)I
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;

    monitor-enter p0

    .line 890
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud delete message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 892
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 893
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_1

    .line 894
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v2, :cond_0

    .line 895
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 897
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 899
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 889
    .end local v0    # "id":I
    .end local v1    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local p1    # "msgId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cloudDeleteParticipant(Ljava/lang/String;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 951
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudDeleteParticipant(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public cloudInsertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 880
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public cloudInsertNotification(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 922
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertNotification(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public cloudInsertParticipant(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 941
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertParticipant(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public cloudUpdateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 911
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public cloudUpdateParticipant(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "rowId"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 962
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateParticipant(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public cloudUpdateSession(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateSession(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized cloudsearchAndInsertSession(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    monitor-enter p0

    .line 973
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloudsearchAndInsertSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    const/4 v0, 0x0

    if-eqz p2, :cond_9

    :try_start_1
    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_4

    .line 983
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 984
    .local v1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    array-length v3, p2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p2, v4

    .line 985
    .local v5, "value":Landroid/content/ContentValues;
    const-string/jumbo v6, "uri"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 984
    nop

    .end local v5    # "value":Landroid/content/ContentValues;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 987
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_1
    aget-object v3, p2, v0

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudSessionTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    .line 988
    .local v3, "chatDatacloud":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v4

    .line 989
    .local v4, "phoneId":I
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v5

    const-string v6, "central_msg_store"

    invoke-interface {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 991
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v5

    .line 992
    .local v5, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chatType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    aget-object v6, p2, v0

    const-string v7, "conversation_id"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 994
    .local v6, "convId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 995
    .local v7, "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v8, v5, :cond_2

    .line 996
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v8, v6, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByConversationId(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    .end local v7    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .local v2, "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    goto :goto_1

    .line 998
    .end local v2    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .restart local v7    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v9

    invoke-virtual {v2, v1, v5, v8, v9}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    .line 1000
    .end local v7    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .restart local v2    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    :goto_1
    if-eqz v2, :cond_4

    .line 1001
    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1002
    invoke-virtual {v2, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 1003
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->onSessionUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 1005
    :cond_3
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 1007
    :cond_4
    const/4 v7, 0x1

    .line 1008
    .local v7, "isSuccessfull":Z
    :try_start_2
    array-length v8, p2

    move v9, v0

    :goto_2
    if-ge v9, v8, :cond_6

    aget-object v10, p2, v9

    .line 1009
    .local v10, "value":Landroid/content/ContentValues;
    invoke-direct {p0, v10}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudParticipantTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v11

    .line 1010
    .local v11, "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v12, v11}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    .line 1011
    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v12

    if-gtz v12, :cond_5

    .line 1012
    const/4 v7, 0x0

    .line 1013
    goto :goto_3

    .line 1008
    .end local v10    # "value":Landroid/content/ContentValues;
    .end local v11    # "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1016
    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    .line 1017
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v8, v3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 1018
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 1020
    :cond_7
    monitor-exit p0

    return v0

    .line 1024
    .end local v2    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .end local v5    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .end local v6    # "convId":Ljava/lang/String;
    .end local v7    # "isSuccessfull":Z
    :cond_8
    monitor-exit p0

    return v0

    .line 980
    .end local v1    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v3    # "chatDatacloud":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .end local v4    # "phoneId":I
    :cond_9
    :goto_4
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "cloudsearchAndInsertSession: no values inserted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 981
    monitor-exit p0

    return v0

    .line 1025
    :catch_0
    move-exception v1

    .line 1031
    .local v1, "e0":Ljava/lang/NullPointerException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1032
    monitor-exit p0

    return v0

    .line 972
    .end local v1    # "e0":Ljava/lang/NullPointerException;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "values":[Landroid/content/ContentValues;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cloudupdateNotification(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 931
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateNotification(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized deleteAllMessages(Ljava/lang/String;)V
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;

    monitor-enter p0

    .line 2351
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2353
    .local v0, "ftmsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/FtMessage;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllMessageIdsByChatId(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 2354
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteAllMessages ft message ids : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2356
    .local v3, "id":I
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v4

    .line 2357
    .local v4, "ftmsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-eqz v4, :cond_0

    .line 2358
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2360
    .end local v3    # "id":I
    .end local v4    # "ftmsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    goto :goto_0

    .line 2361
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 2362
    .local v3, "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 2363
    .end local v3    # "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    goto :goto_1

    .line 2364
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2365
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Ljava/util/List;)V

    .line 2368
    .end local v0    # "ftmsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/FtMessage;>;"
    .end local v1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2369
    monitor-exit p0

    return-void

    .line 2350
    .end local p1    # "chatId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessage(I)V
    .locals 1
    .param p1, "id"    # I

    monitor-enter p0

    .line 2320
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2321
    monitor-exit p0

    return-void

    .line 2319
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessages(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .local p1, "imdnIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 2329
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2330
    .local v1, "imdnId":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2331
    .end local v1    # "imdnId":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 2332
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    monitor-exit p0

    return-void

    .line 2328
    .end local p1    # "imdnIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessagesforCloudSyncUsingChatId(Ljava/util/List;Z)V
    .locals 1
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 2311
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingChatId(Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2312
    monitor-exit p0

    return-void

    .line 2310
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "isLocalWipeout":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deleteMessagesforCloudSyncUsingImdnId(Ljava/util/Map;Z)V
    .locals 4
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 2295
    .local p1, "imdnIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2296
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2297
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2298
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2299
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2301
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v3, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingImdnId(Ljava/util/List;Z)V

    .line 2302
    return-void
.end method

.method public deleteMessagesforCloudSyncUsingMsgId(Ljava/util/List;Z)V
    .locals 1
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 2284
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingMsgId(Ljava/util/List;Z)V

    .line 2285
    return-void
.end method

.method public declared-synchronized deleteParticipant(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    monitor-enter p0

    .line 2223
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterParticipant(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2224
    monitor-exit p0

    return-void

    .line 2222
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    monitor-enter p0

    .line 2241
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Ljava/util/List;)V

    .line 2242
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteParticipant(Ljava/util/Collection;)V

    .line 2243
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 2244
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2245
    monitor-exit p0

    return-void

    .line 2240
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getActiveSessions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    .line 2519
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAllImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/Set;
    .locals 5
    .param p2, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    .local p1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    monitor-enter p0

    .line 719
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllImSessionByParticipants chatType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 722
    .local v0, "imSessions":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 726
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllSessionByParticipant(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/List;

    move-result-object v2

    .line 727
    .local v2, "chatIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 732
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 733
    .local v3, "cid":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v4, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    nop

    .end local v3    # "cid":Ljava/lang/String;
    goto :goto_0

    .line 735
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_2
    monitor-exit p0

    return-object v0

    .line 728
    :cond_3
    :goto_1
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getImSessionByParticipants: Couldn\'t load from db."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    monitor-exit p0

    return-object v1

    .line 723
    .end local v2    # "chatIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v1

    .line 718
    .end local v0    # "imSessions":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    .end local p1    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local p2    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAllImSessions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 1152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 2
    .param p1, "id"    # I

    .line 1194
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    .line 1195
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v1, :cond_0

    .line 1196
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-object v1

    .line 1199
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public declared-synchronized getFtMessageforFtRequest(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 5
    .param p1, "chatid"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileSize"    # J
    .param p5, "fileTransferId"    # Ljava/lang/String;

    monitor-enter p0

    .line 748
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFtMessageforFtRequest chatid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " fileTransferId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_4

    if-nez p5, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    const/4 v1, 0x0

    .line 755
    .local v1, "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 756
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v2, :cond_1

    .line 757
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->findFtMessage(Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v3

    move-object v1, v3

    .line 760
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_1
    if-nez v1, :cond_3

    .line 761
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getFtMessageforFtRequest Couldn\'t find a FtMessage in ImSession."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, p5, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryFtMessageByFileTransferId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v3

    move-object v1, v3

    .line 763
    if-eqz v1, :cond_2

    .line 764
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 766
    :cond_2
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getFtMessageforFtRequest Couldn\'t find a FtMessage by fileTransferId in db."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 767
    monitor-exit p0

    return-object v0

    .line 771
    :cond_3
    monitor-exit p0

    return-object v1

    .line 751
    .end local v1    # "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_4
    :goto_0
    monitor-exit p0

    return-object v0

    .line 747
    .end local p1    # "chatid":Ljava/lang/String;
    .end local p2    # "fileName":Ljava/lang/String;
    .end local p3    # "fileSize":J
    .end local p5    # "fileTransferId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFtMsrpMessage(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    .locals 5
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 1209
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1210
    return-object v0

    .line 1212
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1213
    .local v2, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v3, :cond_1

    .line 1214
    move-object v3, v2

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 1215
    .local v3, "ftMsrpMessage":Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->getRawHandle()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1216
    return-object v3

    .line 1219
    .end local v2    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v3    # "ftMsrpMessage":Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    :cond_1
    goto :goto_0

    .line 1220
    :cond_2
    return-object v0
.end method

.method public getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 2
    .param p1, "id"    # I

    .line 1162
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    .line 1163
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v1, :cond_0

    .line 1164
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    return-object v1

    .line 1167
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getImMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 2
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "ownImsi"    # Ljava/lang/String;

    .line 1179
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    .line 1180
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v1, :cond_0

    .line 1181
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    return-object v1

    .line 1184
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;

    .line 596
    if-nez p1, :cond_0

    .line 597
    const/4 v0, 0x0

    return-object v0

    .line 599
    :cond_0
    monitor-enter p0

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    monitor-exit p0

    return-object v0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getImSessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "isGroupChat"    # Z

    monitor-enter p0

    .line 605
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 606
    monitor-exit p0

    return-object v0

    .line 609
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 610
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p3, :cond_1

    .line 611
    monitor-exit p0

    return-object v2

    .line 613
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_1
    goto :goto_0

    .line 615
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    .line 616
    .local v1, "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    if-nez v1, :cond_3

    .line 617
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getImSessionByContributionId: Couldn\'t load from db."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    monitor-exit p0

    return-object v0

    .line 621
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 604
    .end local v1    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "cid":Ljava/lang/String;
    .end local p3    # "isGroupChat":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getImSessionByConversationId(Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "isGroupChat"    # Z

    monitor-enter p0

    .line 634
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImSessionByConversationId cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isGroupChat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 636
    monitor-exit p0

    return-object v0

    .line 639
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 640
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 641
    monitor-exit p0

    return-object v2

    .line 643
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_1
    goto :goto_0

    .line 645
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByConversationId(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    .line 647
    .local v1, "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    if-nez v1, :cond_3

    .line 648
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getImSessionByConversationId: Couldn\'t load from db."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 649
    monitor-exit p0

    return-object v0

    .line 652
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 633
    .end local v1    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .end local p1    # "cid":Ljava/lang/String;
    .end local p2    # "isGroupChat":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1
    .param p2, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p3, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .line 671
    .local p1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6
    .param p2, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "chatMode"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .local p1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    monitor-enter p0

    .line 685
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImSessionByParticipants chatType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " imsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 685
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 692
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 693
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chat Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " imsi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v3

    if-ne v3, p2, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 695
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 696
    monitor-exit p0

    return-object v2

    .line 698
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_1
    goto :goto_0

    .line 700
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    .line 701
    .local v1, "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    if-nez v1, :cond_3

    .line 702
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getImSessionByParticipants: Couldn\'t load from db."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    monitor-exit p0

    return-object v0

    .line 706
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 689
    .end local v1    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    .line 684
    .end local p1    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local p2    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .end local p3    # "imsi":Ljava/lang/String;
    .end local p4    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getImSessionByRawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 3
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 662
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 663
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 664
    return-object v1

    .line 666
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_0
    goto :goto_0

    .line 667
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 3
    .param p1, "id"    # I

    monitor-enter p0

    .line 1090
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v0, :cond_0

    .line 1092
    monitor-exit p0

    return-object v0

    .line 1095
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    move-object v0, v1

    .line 1096
    if-eqz v0, :cond_1

    .line 1097
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1100
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 1089
    .end local v0    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 3
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    monitor-enter p0

    .line 1283
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1285
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1287
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1288
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v0, :cond_1

    .line 1289
    monitor-exit p0

    return-object v0

    .line 1292
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1282
    .end local v0    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "imdnId":Ljava/lang/String;
    .end local p2    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 3
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "ownImsi"    # Ljava/lang/String;

    monitor-enter p0

    .line 1259
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1261
    monitor-exit p0

    return-object v1

    .line 1263
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1264
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v0, :cond_1

    .line 1265
    monitor-exit p0

    return-object v0

    .line 1267
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    move-object v0, v2

    .line 1268
    if-eqz v0, :cond_2

    .line 1269
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1271
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 1258
    .end local v0    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local p1    # "imdnId":Ljava/lang/String;
    .end local p2    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .end local p3    # "cid":Ljava/lang/String;
    .end local p4    # "ownImsi":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;
    .locals 5
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

    .line 1333
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 1334
    .local v0, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1336
    .local v3, "id":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1337
    .end local v3    # "id":I
    goto :goto_0

    .line 1338
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessageIdsForDisplayAggregation: list="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return-object v1
.end method

.method public declared-synchronized getMessages(Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    .line 1110
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    .local v1, "messageIdsForQuerying":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    .local v3, "idstr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1115
    .local v4, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :try_start_1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    .line 1119
    nop

    .line 1120
    if-eqz v4, :cond_0

    .line 1121
    :try_start_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1123
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    .end local v3    # "idstr":Ljava/lang/String;
    .end local v4    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :goto_1
    goto :goto_0

    .line 1116
    .restart local v3    # "idstr":Ljava/lang/String;
    .restart local v4    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :catch_0
    move-exception v5

    .line 1117
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1118
    goto :goto_0

    .line 1126
    .end local v3    # "idstr":Ljava/lang/String;
    .end local v4    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1127
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1128
    .local v3, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1129
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1130
    nop

    .end local v3    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_2

    .line 1132
    :cond_2
    monitor-exit p0

    return-object v0

    .line 1109
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    .end local v1    # "messageIdsForQuerying":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesForPendingNotificationByChatId(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1230
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIdsForPendingNotification(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1231
    .local v0, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pending notifications count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    .local v2, "messageIdsForQuerying":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1236
    .local v4, "id":I
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->containsKey(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1237
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1239
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    .end local v4    # "id":I
    :goto_1
    goto :goto_0

    .line 1242
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1243
    .local v4, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1244
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    nop

    .end local v4    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_2

    .line 1246
    :cond_2
    monitor-exit p0

    return-object v1

    .line 1229
    .end local v0    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    .end local v2    # "messageIdsForQuerying":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "chatId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 1
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;

    .line 1364
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    return-object v0

    .line 1365
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParticipants(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation

    .line 1349
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1350
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1353
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1
    .param p1, "id"    # I

    .line 1142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    return-object v0
.end method

.method public getPersister()Lcom/sec/internal/ims/servicemodules/im/ImPersister;
    .locals 1

    .line 2642
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    return-object v0
.end method

.method public hasFileTransferInprogress()Z
    .locals 5

    .line 2542
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2543
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2544
    .local v2, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v3, :cond_0

    .line 2545
    move-object v3, v2

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2546
    const/4 v1, 0x1

    return v1

    .line 2549
    .end local v2    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_0
    goto :goto_0

    .line 2550
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hasProcessingFileTransfer()Z
    .locals 3

    .line 2559
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2560
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2563
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_0
    goto :goto_0

    .line 2561
    .restart local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 2564
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public initializeLruCache(I)V
    .locals 2
    .param p1, "maxConcurrentSession"    # I

    .line 235
    if-gtz p1, :cond_0

    .line 236
    const/16 p1, 0x64

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    const/16 v1, 0x1f4

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->resize(I)V

    .line 240
    return-void
.end method

.method public declared-synchronized isChatbotRoleUri(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    monitor-enter p0

    .line 2616
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_1

    .line 2617
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsChatbotRoleUrisLoaded:Z

    if-nez v0, :cond_0

    .line 2618
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadChatbotRoleUris()V

    .line 2620
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 2615
    .end local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2622
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .restart local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public isEstablishedSessionExist()Z
    .locals 3

    .line 2528
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2529
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isEstablishedState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2530
    const/4 v0, 0x1

    return v0

    .line 2532
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_0
    goto :goto_0

    .line 2533
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isLoaded()Z
    .locals 1

    monitor-enter p0

    .line 450
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 450
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$new$0$ImCache(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .line 100
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-eqz v0, :cond_0

    .line 101
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-object v1, p2

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 102
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    if-eqz v0, :cond_1

    .line 103
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-object v1, p2

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 104
    :cond_1
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    if-eqz v0, :cond_2

    .line 105
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-object v1, p2

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 107
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown observable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void
.end method

.method public declared-synchronized load(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 3
    .param p1, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    monitor-enter p0

    .line 348
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Alraedy loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 353
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 354
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    .line 355
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    monitor-exit p0

    return-void

    .line 347
    .end local p1    # "imModule":Lcom/sec/internal/ims/servicemodules/im/ImModule;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionByChatType(Z)V
    .locals 4
    .param p1, "isGroupChat"    # Z

    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatType(Z)Ljava/util/List;

    move-result-object v0

    .line 364
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionByChatType loaded chat ids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 367
    .local v2, "chatId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    nop

    .end local v2    # "chatId":Ljava/lang/String;
    goto :goto_0

    .line 370
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    monitor-exit p0

    return-void

    .line 362
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "isGroupChat":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionForAutoRejoin()V
    .locals 4

    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionForAutoRejoin()Ljava/util/List;

    move-result-object v0

    .line 377
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionForAutoRejoin Autorejoin chat ids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 380
    .local v2, "chatId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    nop

    .end local v2    # "chatId":Ljava/lang/String;
    goto :goto_0

    .line 383
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    monitor-exit p0

    return-void

    .line 375
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadImSessionWithFailedFTMessages()V
    .locals 4

    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllChatIDwithFailedFTMessages()Ljava/util/List;

    move-result-object v0

    .line 411
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionWithFailedFTMessages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed message(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 414
    .local v2, "chatId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    nop

    .end local v2    # "chatId":Ljava/lang/String;
    goto :goto_0

    .line 417
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    monitor-exit p0

    return-void

    .line 409
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadImSessionWithPendingMessages()V
    .locals 4

    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllChatIDwithPendingMessages()Ljava/util/List;

    move-result-object v0

    .line 394
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionWithPendingMessages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pending message(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 397
    .local v2, "chatId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    nop

    .end local v2    # "chatId":Ljava/lang/String;
    goto :goto_0

    .line 400
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    monitor-exit p0

    return-void

    .line 392
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadLastSentMessages(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryLastSentMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 440
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6
    .param p1, "ownImsi"    # Ljava/lang/String;
    .param p3, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p4, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .line 1522
    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 7
    .param p1, "ownImsi"    # Ljava/lang/String;
    .param p3, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p4, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p5, "chatMode"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    monitor-enter p0

    .line 1527
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeNewEmptySession: chatType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ownImsi= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1527
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    const/4 v0, 0x0

    .line 1533
    .local v0, "conversationId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1535
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v2, v3, :cond_1

    .line 1536
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1537
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    .local v2, "contributionId":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 1539
    .end local v2    # "contributionId":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    .line 1542
    .restart local v2    # "contributionId":Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1543
    .local v3, "sb":Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1544
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1545
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 1546
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 1547
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1548
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 1549
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v5

    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v6

    invoke-static {p2, p1, v5, v6}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 1550
    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 1551
    invoke-virtual {v4, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 1552
    invoke-virtual {v4, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 1553
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1554
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 1555
    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 1556
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 1557
    invoke-virtual {v4, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1558
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v4

    .line 1559
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v4

    .line 1561
    .local v4, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1562
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1564
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v5, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    monitor-exit p0

    return-object v4

    .line 1526
    .end local v0    # "conversationId":Ljava/lang/String;
    .end local v1    # "phoneId":I
    .end local v2    # "contributionId":Ljava/lang/String;
    .end local v3    # "sb":Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .end local v4    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p1    # "ownImsi":Ljava/lang/String;
    .end local p2    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local p3    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .end local p4    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .end local p5    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .locals 7
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "suggestion"    # Ljava/lang/String;

    monitor-enter p0

    .line 2104
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 2105
    .local v0, "phoneId":I
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 2106
    .local v1, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v2

    .line 2107
    .local v2, "maapTrafficType":Ljava/lang/String;
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 2109
    .local v3, "rcsTrafficType":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2110
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2111
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2112
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2113
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2114
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2115
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2116
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2117
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 2118
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 2119
    invoke-virtual {v5, v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 2120
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2121
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2122
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2123
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2124
    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2125
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2126
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 2127
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2129
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v5, :cond_0

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto :goto_0

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v5, 0x0

    .line 2130
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 2131
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mReliableMessage:Ljava/lang/String;

    .line 2132
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->reliableMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-boolean v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mExtraFt:Z

    .line 2133
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2134
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2135
    invoke-virtual {v4, p4}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2136
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2137
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2138
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2139
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2140
    invoke-virtual {v4, p5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2141
    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2142
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2143
    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2144
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object v4

    .line 2146
    .local v4, "msg":Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2147
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2148
    monitor-exit p0

    return-object v4

    .line 2103
    .end local v0    # "phoneId":I
    .end local v1    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .end local v2    # "maapTrafficType":Ljava/lang/String;
    .end local v3    # "rcsTrafficType":Ljava/lang/String;
    .end local v4    # "msg":Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p3    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    .end local p4    # "network":Landroid/net/Network;
    .end local p5    # "suggestion":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .locals 7
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "suggestion"    # Ljava/lang/String;

    monitor-enter p0

    .line 2161
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 2162
    .local v0, "phoneId":I
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 2163
    .local v1, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v2

    .line 2164
    .local v2, "maapTrafficType":Ljava/lang/String;
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 2166
    .local v3, "rcsTrafficType":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2167
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2168
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2169
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2170
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2171
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2172
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2173
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2174
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 2175
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 2176
    invoke-virtual {v5, v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 2177
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2178
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2179
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2180
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2181
    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v5, 0x1

    .line 2182
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2183
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2184
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 2185
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2187
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v5, :cond_0

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto :goto_0

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v5, 0x0

    .line 2188
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 2189
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mReliableMessage:Ljava/lang/String;

    .line 2190
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->reliableMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-boolean v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mExtraFt:Z

    .line 2191
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2192
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2193
    invoke-virtual {v4, p4}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2194
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2195
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2196
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2197
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2198
    invoke-virtual {v4, p5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2199
    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2200
    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2201
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object v4

    .line 2203
    .local v4, "msg":Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2204
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2205
    monitor-exit p0

    return-object v4

    .line 2160
    .end local v0    # "phoneId":I
    .end local v1    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .end local v2    # "maapTrafficType":Ljava/lang/String;
    .end local v3    # "rcsTrafficType":Ljava/lang/String;
    .end local v4    # "msg":Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p3    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;
    .end local p4    # "network":Landroid/net/Network;
    .end local p5    # "suggestion":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 9
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;
    .param p4, "isSlmSvcMsg"    # Z

    monitor-enter p0

    .line 1869
    :try_start_0
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    .line 1871
    .local v0, "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsPublicAccountMsg:Z

    if-eqz v1, :cond_0

    .line 1872
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-object v0, v1

    .line 1874
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1875
    .local v1, "phoneId":I
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    .line 1876
    .local v2, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 1878
    .local v3, "maapTrafficType":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeNewIncomingFtMessage msgType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1881
    .local v4, "messagingTech":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    iget-boolean v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-eqz v5, :cond_2

    .line 1882
    iget-boolean v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsLMM:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    :goto_0
    move-object v4, v5

    .line 1886
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1887
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1888
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1889
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1890
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1891
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1892
    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1893
    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1894
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1895
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1896
    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    .line 1897
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-wide v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    .line 1898
    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mThumbPath:Ljava/lang/String;

    .line 1899
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1900
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mTimeDuration:I

    .line 1901
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->timeDuration(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1902
    invoke-virtual {v6, v1, v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 1903
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 1904
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v5

    .line 1905
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1906
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1907
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1908
    invoke-virtual {v5, p4}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 1909
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1911
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1912
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mInReplyToConversationId:Ljava/lang/String;

    .line 1913
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->inReplyToConversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    .line 1914
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1915
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDisposition:Ljava/util/Set;

    .line 1916
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    .line 1917
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1918
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1919
    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v7, :cond_4

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :goto_2
    invoke-virtual {v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    .line 1920
    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDeviceName:Ljava/lang/String;

    .line 1921
    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->deviceName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mReliableMessage:Ljava/lang/String;

    .line 1922
    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->reliableMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-boolean v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mExtraFt:Z

    .line 1923
    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1924
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1925
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v2, v7, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v6

    :cond_5
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-boolean v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsRoutingMsg:Z

    .line 1926
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1927
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1928
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1929
    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1930
    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1931
    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1932
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object v5

    .line 1934
    .local v5, "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1935
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1936
    monitor-exit p0

    return-object v5

    .line 1868
    .end local v0    # "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .end local v1    # "phoneId":I
    .end local v2    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .end local v3    # "maapTrafficType":Ljava/lang/String;
    .end local v4    # "messagingTech":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    .end local v5    # "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p3    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;
    .end local p4    # "isSlmSvcMsg":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 9
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "suggestion"    # Ljava/lang/String;

    monitor-enter p0

    .line 1686
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1687
    .local v0, "phoneId":I
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 1688
    .local v1, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v2

    .line 1689
    .local v2, "maapTrafficType":Ljava/lang/String;
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 1690
    .local v3, "referenceId":Ljava/lang/String;
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v4

    .line 1691
    .local v4, "referenceType":Ljava/lang/String;
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v5

    .line 1693
    .local v5, "rcsTrafficType":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1694
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1695
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1696
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1697
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1698
    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1699
    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1700
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 1701
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1702
    invoke-virtual {v6, p5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v8, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 1703
    invoke-virtual {v7, v0, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 1704
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 1705
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1706
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1707
    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1708
    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1709
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1710
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 1711
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1713
    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v7, :cond_0

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto :goto_0

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :goto_0
    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 1714
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDeviceName:Ljava/lang/String;

    .line 1715
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->deviceName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mReliableMessage:Ljava/lang/String;

    .line 1716
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->reliableMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-boolean v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mExtraFt:Z

    .line 1717
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1718
    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1719
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v7, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-boolean v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mIsRoutingMsg:Z

    .line 1720
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1721
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1722
    invoke-virtual {v6, p4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1723
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1724
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDeviceId:Ljava/lang/String;

    .line 1725
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1726
    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1727
    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1728
    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->referenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1729
    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1730
    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1731
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v6

    .line 1733
    .local v6, "msg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1735
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v7, v0, v6}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReceiveRcsMessage(ILcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    monitor-exit p0

    return-object v6

    .line 1685
    .end local v0    # "phoneId":I
    .end local v1    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .end local v2    # "maapTrafficType":Ljava/lang/String;
    .end local v3    # "referenceId":Ljava/lang/String;
    .end local v4    # "referenceType":Ljava/lang/String;
    .end local v5    # "rcsTrafficType":Ljava/lang/String;
    .end local v6    # "msg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p3    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    .end local p4    # "network":Landroid/net/Network;
    .end local p5    # "suggestion":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 9
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "suggestion"    # Ljava/lang/String;

    monitor-enter p0

    .line 1749
    :try_start_0
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    .line 1751
    .local v0, "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsPublicAccountMsg:Z

    if-eqz v1, :cond_0

    .line 1752
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-object v0, v1

    .line 1755
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "geo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1756
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-object v0, v1

    .line 1759
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1761
    .local v1, "phoneId":I
    iget-boolean v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsLMM:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1763
    .local v2, "messagingTech":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    :goto_0
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    .line 1764
    .local v3, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v4

    .line 1765
    .local v4, "maapTrafficType":Ljava/lang/String;
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v5

    .line 1767
    .local v5, "rcsTrafficType":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1768
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1769
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1770
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1771
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1772
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1773
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1774
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 1775
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1776
    invoke-virtual {v6, p5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v8, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 1777
    invoke-virtual {v7, v1, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 1778
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 1779
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1780
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1781
    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1782
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const/4 v7, 0x1

    .line 1783
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1784
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1785
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 1786
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1788
    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v7, :cond_3

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :goto_1
    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 1789
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDeviceName:Ljava/lang/String;

    .line 1790
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->deviceName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mReliableMessage:Ljava/lang/String;

    .line 1791
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->reliableMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-boolean v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mExtraFt:Z

    .line 1792
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1793
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1794
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v3, v7, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v7

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-boolean v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsRoutingMsg:Z

    .line 1795
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1796
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImExtensionMNOHeaders:Ljava/util/Map;

    .line 1797
    invoke-static {v7}, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;->isVM2TextMsg(Ljava/util/Map;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->isVM2TextMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1798
    invoke-virtual {v6, p4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mConversationId:Ljava/lang/String;

    .line 1799
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContributionId:Ljava/lang/String;

    .line 1800
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1801
    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1802
    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1803
    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1804
    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1805
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v6

    .line 1807
    .local v6, "msg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1809
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v7, v1, v6}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReceiveRcsMessage(ILcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1811
    monitor-exit p0

    return-object v6

    .line 1748
    .end local v0    # "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .end local v1    # "phoneId":I
    .end local v2    # "messagingTech":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    .end local v3    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .end local v4    # "maapTrafficType":Ljava/lang/String;
    .end local v5    # "rcsTrafficType":Ljava/lang/String;
    .end local v6    # "msg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p3    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;
    .end local p4    # "network":Landroid/net/Network;
    .end local p5    # "suggestion":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;
    .param p3, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p4, "chatMode"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    monitor-enter p0

    .line 1476
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeNewIncomingSession: chatType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1480
    .local v0, "phoneId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1481
    .local v1, "sb":Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1482
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1483
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1484
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1485
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1486
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1487
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v4

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v5

    invoke-static {p2, v3, v4, v5}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1488
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1489
    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1490
    invoke-virtual {v2, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1491
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1492
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    const-string v3, ""

    .line 1493
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownGroupAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSubject:Ljava/lang/String;

    .line 1494
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->subject(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1495
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 1496
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 1497
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1498
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1499
    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 1500
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sessionType(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1501
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1502
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 1504
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1505
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1507
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v3, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    monitor-exit p0

    return-object v2

    .line 1475
    .end local v0    # "phoneId":I
    .end local v1    # "sb":Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;
    .end local p2    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local p3    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .end local p4    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewOutgoingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Network;ZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;Z)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;
    .locals 16
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p6, "requestMessageId"    # Ljava/lang/String;
    .param p7, "contentType"    # Ljava/lang/String;
    .param p8, "extraFt"    # Z
    .param p9, "network"    # Landroid/net/Network;
    .param p10, "Ftsms"    # Z
    .param p11, "isBroadcastMsg"    # Z
    .param p12, "isSlm"    # Z
    .param p13, "fileDisposition"    # Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .param p14, "isResizable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/net/Network;",
            "ZZZ",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            "Z)",
            "Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;"
        }
    .end annotation

    .local p5, "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move/from16 v3, p8

    monitor-enter p0

    .line 2042
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2043
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 2044
    .local v5, "fileSize":J
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2045
    .local v7, "fileName":Ljava/lang/String;
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v8

    .line 2047
    .local v8, "phoneId":I
    if-nez p7, :cond_0

    .line 2048
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .end local p7    # "contentType":Ljava/lang/String;
    .local v9, "contentType":Ljava/lang/String;
    goto :goto_0

    .line 2047
    .end local v9    # "contentType":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .restart local p7    # "contentType":Ljava/lang/String;
    :cond_0
    move-object/from16 v9, p7

    .line 2051
    .end local p7    # "contentType":Ljava/lang/String;
    .restart local v9    # "contentType":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-result-object v10

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2052
    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2053
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2054
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2055
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2056
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2057
    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2058
    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2059
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2060
    invoke-virtual {v10, v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2061
    invoke-virtual {v10, v7}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2062
    invoke-virtual {v10, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2063
    invoke-virtual {v10, v9}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2064
    move-object/from16 v11, p4

    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2065
    invoke-virtual {v12, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2066
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 2067
    invoke-virtual {v10, v12}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2068
    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2069
    invoke-virtual {v10, v12}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2070
    move-object/from16 v12, p5

    invoke-virtual {v10, v12}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    const/4 v13, 0x0

    .line 2072
    invoke-virtual {v10, v13}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2073
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2074
    move-object/from16 v13, p6

    invoke-virtual {v10, v13}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2075
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v14

    invoke-virtual {v10, v14}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v14, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2076
    invoke-virtual {v14, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2077
    move-object/from16 v14, p13

    invoke-virtual {v10, v14}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->setFileDisposition(Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2078
    move-object/from16 v15, p9

    invoke-virtual {v10, v15}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2079
    invoke-virtual {v10, v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2080
    move/from16 v2, p11

    invoke-virtual {v10, v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2081
    move/from16 v2, p12

    invoke-virtual {v10, v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2082
    invoke-virtual {v10, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2083
    move/from16 v0, p14

    invoke-virtual {v10, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2084
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    move-result-object v10

    .line 2086
    .local v10, "msg":Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;
    invoke-direct {v1, v10}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2087
    invoke-virtual {v10, v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->setExtraFt(Z)V

    .line 2088
    move/from16 v0, p10

    invoke-virtual {v10, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->setFtSms(Z)V

    .line 2089
    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2090
    monitor-exit p0

    return-object v10

    .line 2041
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileSize":J
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "phoneId":I
    .end local v9    # "contentType":Ljava/lang/String;
    .end local v10    # "msg":Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p3    # "filePath":Ljava/lang/String;
    .end local p4    # "contactUri":Lcom/sec/ims/util/ImsUri;
    .end local p5    # "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    .end local p6    # "requestMessageId":Ljava/lang/String;
    .end local p8    # "extraFt":Z
    .end local p9    # "network":Landroid/net/Network;
    .end local p10    # "Ftsms":Z
    .end local p11    # "isBroadcastMsg":Z
    .end local p12    # "isSlm":Z
    .end local p13    # "fileDisposition":Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .end local p14    # "isResizable":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 16
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p6, "requestMessageId"    # Ljava/lang/String;
    .param p7, "contentType"    # Ljava/lang/String;
    .param p8, "isPublicAccountMsg"    # Z
    .param p9, "isResizable"    # Z
    .param p10, "isBroadcastMsg"    # Z
    .param p11, "extInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;"
        }
    .end annotation

    .local p5, "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    monitor-enter p0

    .line 1957
    const/4 v3, 0x0

    .line 1958
    .local v3, "inReplyToContributionId":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v4, v5, :cond_0

    .line 1959
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInReplyToContributionId()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1960
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    goto :goto_0

    .line 1958
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    move-object/from16 v5, p2

    .line 1963
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1964
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1965
    .local v6, "fileSize":J
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1966
    .local v8, "fileName":Ljava/lang/String;
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v9, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v9

    .line 1968
    .local v9, "phoneId":I
    if-nez p7, :cond_1

    .line 1969
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    .end local p7    # "contentType":Ljava/lang/String;
    .local v10, "contentType":Ljava/lang/String;
    goto :goto_1

    .line 1968
    .end local v10    # "contentType":Ljava/lang/String;
    .restart local p7    # "contentType":Ljava/lang/String;
    :cond_1
    move-object/from16 v10, p7

    .line 1972
    .end local p7    # "contentType":Ljava/lang/String;
    .restart local v10    # "contentType":Ljava/lang/String;
    :goto_1
    invoke-static {v10}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v11

    .line 1974
    .local v11, "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    if-eqz p8, :cond_2

    .line 1975
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-object v11, v12

    .line 1978
    :cond_2
    sget-object v12, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "makeNewOutgoingFtMessage msgType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v12

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1981
    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1982
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1983
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1984
    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1985
    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1986
    invoke-virtual {v13, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1987
    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1988
    invoke-virtual {v13, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1989
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1990
    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1991
    invoke-virtual {v12, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1992
    invoke-virtual {v12, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1993
    invoke-virtual {v12, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    const/4 v13, 0x0

    .line 1994
    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1995
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->timeDuration(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1996
    move-object/from16 v14, p4

    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v15, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1997
    invoke-virtual {v15, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1998
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1999
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v15

    invoke-virtual {v12, v15}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2000
    invoke-virtual {v12, v15}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2001
    invoke-virtual {v12, v11}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2002
    invoke-virtual {v12, v10}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2004
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2005
    invoke-virtual {v12, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->inReplyToConversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2006
    move-object/from16 v13, p5

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2007
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2008
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateFileTransferId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2009
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2010
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2011
    move-object/from16 v14, p6

    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2012
    move/from16 v15, p9

    invoke-virtual {v12, v15}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2013
    move/from16 v2, p10

    invoke-virtual {v12, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2014
    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2015
    move-object/from16 v12, p11

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->extinfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2016
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 2017
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2018
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object v0

    .line 2020
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2021
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2022
    monitor-exit p0

    return-object v0

    .line 1956
    .end local v0    # "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .end local v3    # "inReplyToContributionId":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fileSize":J
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "phoneId":I
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v11    # "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p3    # "filePath":Ljava/lang/String;
    .end local p4    # "contactUri":Lcom/sec/ims/util/ImsUri;
    .end local p5    # "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    .end local p6    # "requestMessageId":Ljava/lang/String;
    .end local p8    # "isPublicAccountMsg":Z
    .end local p9    # "isResizable":Z
    .end local p10    # "isBroadcastMsg":Z
    .end local p11    # "extInfo":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 19
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "body"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "requestMessageId"    # Ljava/lang/String;
    .param p7, "isSlm"    # Z
    .param p8, "isPublicAccountMsg"    # Z
    .param p9, "isBroadcastMsg"    # Z
    .param p10, "isGLSMsg"    # Z
    .param p11, "deviceName"    # Ljava/lang/String;
    .param p12, "reliableMessage"    # Ljava/lang/String;
    .param p13, "xmsMessage"    # Ljava/lang/String;
    .param p14, "isTemporary"    # Z
    .param p15, "maapTrafficType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;"
        }
    .end annotation

    .local p4, "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    monitor-enter p0

    .line 1590
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    :try_start_0
    invoke-virtual/range {v1 .. v18}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1590
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p3    # "body":Ljava/lang/String;
    .end local p4    # "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    .end local p5    # "contentType":Ljava/lang/String;
    .end local p6    # "requestMessageId":Ljava/lang/String;
    .end local p7    # "isSlm":Z
    .end local p8    # "isPublicAccountMsg":Z
    .end local p9    # "isBroadcastMsg":Z
    .end local p10    # "isGLSMsg":Z
    .end local p11    # "deviceName":Ljava/lang/String;
    .end local p12    # "reliableMessage":Ljava/lang/String;
    .end local p13    # "xmsMessage":Ljava/lang/String;
    .end local p14    # "isTemporary":Z
    .end local p15    # "maapTrafficType":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 17
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "body"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "requestMessageId"    # Ljava/lang/String;
    .param p7, "isSlm"    # Z
    .param p8, "isPublicAccountMsg"    # Z
    .param p9, "isBroadcastMsg"    # Z
    .param p10, "isGLSMsg"    # Z
    .param p11, "deviceName"    # Ljava/lang/String;
    .param p12, "reliableMessage"    # Ljava/lang/String;
    .param p13, "xmsMessage"    # Ljava/lang/String;
    .param p14, "isTemporary"    # Z
    .param p15, "maapTrafficType"    # Ljava/lang/String;
    .param p16, "referenceMessageId"    # Ljava/lang/String;
    .param p17, "referenceMessageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;"
        }
    .end annotation

    .local p4, "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1621
    if-eqz p8, :cond_0

    .line 1622
    :try_start_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .local v2, "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    goto :goto_0

    .line 1620
    .end local v2    # "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p3    # "body":Ljava/lang/String;
    .end local p4    # "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    .end local p5    # "contentType":Ljava/lang/String;
    .end local p6    # "requestMessageId":Ljava/lang/String;
    .end local p7    # "isSlm":Z
    .end local p8    # "isPublicAccountMsg":Z
    .end local p9    # "isBroadcastMsg":Z
    .end local p10    # "isGLSMsg":Z
    .end local p11    # "deviceName":Ljava/lang/String;
    .end local p12    # "reliableMessage":Ljava/lang/String;
    .end local p13    # "xmsMessage":Ljava/lang/String;
    .end local p14    # "isTemporary":Z
    .end local p15    # "maapTrafficType":Ljava/lang/String;
    .end local p16    # "referenceMessageId":Ljava/lang/String;
    .end local p17    # "referenceMessageType":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 1623
    .restart local p1    # "imsi":Ljava/lang/String;
    .restart local p2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local p3    # "body":Ljava/lang/String;
    .restart local p4    # "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    .restart local p5    # "contentType":Ljava/lang/String;
    .restart local p6    # "requestMessageId":Ljava/lang/String;
    .restart local p7    # "isSlm":Z
    .restart local p8    # "isPublicAccountMsg":Z
    .restart local p9    # "isBroadcastMsg":Z
    .restart local p10    # "isGLSMsg":Z
    .restart local p11    # "deviceName":Ljava/lang/String;
    .restart local p12    # "reliableMessage":Ljava/lang/String;
    .restart local p13    # "xmsMessage":Ljava/lang/String;
    .restart local p14    # "isTemporary":Z
    .restart local p15    # "maapTrafficType":Ljava/lang/String;
    .restart local p16    # "referenceMessageId":Ljava/lang/String;
    .restart local p17    # "referenceMessageType":Ljava/lang/String;
    :cond_0
    if-eqz p10, :cond_1

    .line 1624
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .restart local v2    # "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    goto :goto_0

    .line 1626
    .end local v2    # "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    .line 1629
    .restart local v2    # "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    :goto_0
    const/4 v3, 0x0

    .line 1630
    .local v3, "flagMask":I
    if-eqz p14, :cond_2

    .line 1631
    const/4 v3, 0x2

    .line 1634
    :cond_2
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v4

    .line 1636
    .local v4, "phoneId":I
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1637
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1638
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1639
    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1640
    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1641
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1642
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1643
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1644
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1645
    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1646
    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1647
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1648
    move-object/from16 v7, p4

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1649
    move-object/from16 v8, p5

    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1650
    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1651
    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1652
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1653
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1654
    move-object/from16 v9, p6

    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1656
    move/from16 v10, p7

    invoke-virtual {v5, v10}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1657
    move/from16 v11, p9

    invoke-virtual {v5, v11}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1658
    move-object/from16 v12, p11

    invoke-virtual {v5, v12}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->deviceName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1659
    move-object/from16 v13, p12

    invoke-virtual {v5, v13}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->reliableMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1660
    move-object/from16 v14, p13

    invoke-virtual {v5, v14}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->xmsMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v15, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1661
    invoke-virtual {v15, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1662
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1663
    move-object/from16 v15, p15

    invoke-virtual {v5, v15}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1664
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1665
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->flagMask(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1666
    move-object/from16 v5, p16

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->referenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1667
    move-object/from16 v16, v2

    move-object/from16 v2, p17

    .end local v2    # "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .local v16, "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1668
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0

    .line 1670
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1671
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1672
    monitor-exit p0

    return-object v0

    .line 1620
    .end local v0    # "msg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .end local v3    # "flagMask":I
    .end local v4    # "phoneId":I
    .end local v16    # "msgType":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p3    # "body":Ljava/lang/String;
    .end local p4    # "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    .end local p5    # "contentType":Ljava/lang/String;
    .end local p6    # "requestMessageId":Ljava/lang/String;
    .end local p7    # "isSlm":Z
    .end local p8    # "isPublicAccountMsg":Z
    .end local p9    # "isBroadcastMsg":Z
    .end local p10    # "isGLSMsg":Z
    .end local p11    # "deviceName":Ljava/lang/String;
    .end local p12    # "reliableMessage":Ljava/lang/String;
    .end local p13    # "xmsMessage":Ljava/lang/String;
    .end local p14    # "isTemporary":Z
    .end local p15    # "maapTrafficType":Ljava/lang/String;
    .end local p16    # "referenceMessageId":Ljava/lang/String;
    .end local p17    # "referenceMessageType":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 14
    .param p1, "imsi"    # Ljava/lang/String;
    .param p3, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "sdpContentType"    # Ljava/lang/String;
    .param p6, "threadId"    # I
    .param p7, "requestMessageId"    # Ljava/lang/String;
    .param p8, "iconPath"    # Ljava/lang/String;
    .param p9, "chatMode"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    monitor-enter p0

    .line 1396
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    :try_start_0
    invoke-virtual/range {v1 .. v13}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1396
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local p3    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .end local p4    # "subject":Ljava/lang/String;
    .end local p5    # "sdpContentType":Ljava/lang/String;
    .end local p6    # "threadId":I
    .end local p7    # "requestMessageId":Ljava/lang/String;
    .end local p8    # "iconPath":Ljava/lang/String;
    .end local p9    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 16
    .param p1, "imsi"    # Ljava/lang/String;
    .param p3, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "sdpContentType"    # Ljava/lang/String;
    .param p6, "threadId"    # I
    .param p7, "requestMessageId"    # Ljava/lang/String;
    .param p8, "iconPath"    # Ljava/lang/String;
    .param p9, "chatMode"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .param p10, "conversationId"    # Ljava/lang/String;
    .param p11, "contributionId"    # Ljava/lang/String;
    .param p12, "sessionUri"    # Lcom/sec/ims/util/ImsUri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 1419
    :try_start_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeNewOutgoingSession: chatType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " participants="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " imsi= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1419
    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v4

    .line 1424
    .local v4, "phoneId":I
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1425
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v5, v6, :cond_1

    .line 1426
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v5

    .line 1427
    .end local p10    # "conversationId":Ljava/lang/String;
    .local v5, "conversationId":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v6

    .end local p11    # "contributionId":Ljava/lang/String;
    .local v6, "contributionId":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 1429
    .end local v5    # "conversationId":Ljava/lang/String;
    .end local v6    # "contributionId":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .restart local p10    # "conversationId":Ljava/lang/String;
    .restart local p11    # "contributionId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object/from16 v5, p10

    .end local p11    # "contributionId":Ljava/lang/String;
    .local v5, "contributionId":Ljava/lang/String;
    goto :goto_1

    .line 1433
    .end local v5    # "contributionId":Ljava/lang/String;
    .restart local p11    # "contributionId":Ljava/lang/String;
    :cond_2
    move-object/from16 v5, p10

    move-object/from16 v6, p11

    .end local p10    # "conversationId":Ljava/lang/String;
    .end local p11    # "contributionId":Ljava/lang/String;
    .local v5, "conversationId":Ljava/lang/String;
    .restart local v6    # "contributionId":Ljava/lang/String;
    :goto_1
    new-instance v7, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v7}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1434
    .local v7, "sb":Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1435
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1436
    invoke-virtual {v9, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1437
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1438
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1439
    invoke-virtual {v9, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1440
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v9

    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v10

    invoke-static {v2, v0, v9, v10}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1441
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1442
    invoke-virtual {v8, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1443
    move-object/from16 v9, p9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1444
    invoke-virtual {v10, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1445
    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    const-string v10, ""

    .line 1446
    invoke-virtual {v8, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownGroupAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1447
    move-object/from16 v10, p4

    invoke-virtual {v8, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->subject(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1448
    move-object/from16 v11, p8

    invoke-virtual {v8, v11}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->iconPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1449
    move-object/from16 v12, p5

    invoke-virtual {v8, v12}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1450
    move/from16 v13, p6

    invoke-virtual {v8, v13}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->threadId(I)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1451
    move-object/from16 v14, p7

    invoke-virtual {v8, v14}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1452
    invoke-virtual {v8, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1453
    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1454
    invoke-virtual {v8, v15}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    iget-object v15, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1455
    invoke-virtual {v8, v15}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1456
    move-object/from16 v15, p12

    invoke-virtual {v8, v15}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sessionUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v8

    .line 1457
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v8

    .line 1459
    .local v8, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-direct {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1460
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1462
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0, v4, v8}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    monitor-exit p0

    return-object v8

    .line 1418
    .end local v4    # "phoneId":I
    .end local v5    # "conversationId":Ljava/lang/String;
    .end local v6    # "contributionId":Ljava/lang/String;
    .end local v7    # "sb":Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .end local v8    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local p3    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .end local p4    # "subject":Ljava/lang/String;
    .end local p5    # "sdpContentType":Ljava/lang/String;
    .end local p6    # "threadId":I
    .end local p7    # "requestMessageId":Ljava/lang/String;
    .end local p8    # "iconPath":Ljava/lang/String;
    .end local p9    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .end local p12    # "sessionUri":Lcom/sec/ims/util/ImsUri;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 1
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "participants"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    monitor-enter p0

    .line 1857
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Ljava/util/Date;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1857
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p2    # "participants":Ljava/lang/String;
    .end local p3    # "type":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Ljava/util/Date;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "participants"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .param p4, "date"    # Ljava/util/Date;

    monitor-enter p0

    .line 1825
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1826
    .local v0, "phoneId":I
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1827
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1828
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1829
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1830
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1831
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1832
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1833
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1834
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1835
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1836
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1837
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1838
    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1840
    if-nez p4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1841
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1842
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v1

    .line 1844
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1845
    monitor-exit p0

    return-object v1

    .line 1824
    .end local v0    # "phoneId":I
    .end local v1    # "msg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .end local p1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local p2    # "participants":Ljava/lang/String;
    .end local p3    # "type":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .end local p4    # "date":Ljava/util/Date;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryChatMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 830
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryChatMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryFtMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryFtMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    monitor-enter p0

    .line 1377
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1377
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "msgId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryMessageNotification([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 869
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageNotification([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 817
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 793
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public readMessagesforCloudSync(ILjava/util/List;)V
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2274
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReadRcsMessageList(ILjava/util/List;)V

    .line 2275
    return-void
.end method

.method public removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2510
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2511
    return-void
.end method

.method public declared-synchronized removeFromChatbotRoleUris(Lcom/sec/ims/util/ImsUri;)V
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    monitor-enter p0

    .line 2605
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_1

    .line 2606
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFromChatbotRoleUris: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Set;

    .line 2607
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2606
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsChatbotRoleUrisLoaded:Z

    if-nez v0, :cond_0

    .line 2609
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadChatbotRoleUris()V

    .line 2611
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2604
    .end local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2613
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .restart local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public removeFromPendingList(I)V
    .locals 4
    .param p1, "id"    # I

    .line 2433
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    .line 2434
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v0, :cond_0

    .line 2435
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2436
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2437
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removed message from cache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2439
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message is not in the cache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    :goto_0
    return-void
.end method

.method public removeImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method public updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2503
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2504
    return-void
.end method

.method public updateDesiredNotificationStatusAsDisplay(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2574
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2575
    .local v0, "displayedTimestamp":Ljava/lang/Long;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2577
    .local v2, "idStr":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2581
    .local v3, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    nop

    .line 2582
    if-eqz v3, :cond_0

    .line 2583
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 2584
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDisplayedTimestamp(J)V

    .line 2585
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v4, v5, :cond_0

    .line 2586
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 2589
    .end local v2    # "idStr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2578
    .end local v3    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .restart local v2    # "idStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2579
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2580
    goto :goto_0

    .line 2590
    .end local v2    # "idStr":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateDesiredNotificationStatusAsDisplayed(Ljava/util/Collection;IJ)V

    .line 2591
    return-void
.end method

.method public declared-synchronized updateParticipant(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    monitor-enter p0

    .line 2232
    :try_start_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2233
    monitor-exit p0

    return-void

    .line 2231
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local p1    # "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateUriGenerator(I)V
    .locals 3
    .param p1, "phoneId"    # I

    monitor-enter p0

    .line 423
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUriGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    .line 425
    .local v0, "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 426
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_0

    .line 428
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :cond_0
    monitor-exit p0

    return-void

    .line 422
    .end local v0    # "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    .end local p1    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
