.class public Lcom/sec/internal/ims/config/ConfigProvider;
.super Landroid/content/ContentProvider;
.source "ConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceExtParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadDataOffParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadPluginsParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadMessageStoreParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadChatbotParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadMsisdnParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadUxParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadPersonalProfileParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadPublicAccountParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadTransportProtoParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadXdmsParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadOtherParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadStandalonMsgParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadPresenceParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadAppAuthParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadRootParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    }
.end annotation


# static fields
.field public static final CONFIG_DB_NAME_PREFIX:Ljava/lang/String; = "config_"

.field private static final LOG_TAG:Ljava/lang/String; = "ConfigProvider"

.field private static final MAX_SERVER_COUNT:I

.field private static final N_PARAMETER:I = 0x1

.field private static final SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final mAppIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppIdServerIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConfigTableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmptyStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

.field private mMatcher:Landroid/content/UriMatcher;

.field private final mServerIdStorageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 65
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants;->APPID_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sput v0, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/ConfigProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 85
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants;->APPID_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 89
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 92
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v3, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 95
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    .line 78
    new-instance v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mEmptyStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 428
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mConfigTableMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/config/ConfigProvider;Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/ConfigProvider;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/List;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigProvider;->initStorage(Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/ConfigProvider;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 59
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 59
    invoke-static {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getCapAllowedPrefixes(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/ConfigProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->isImExtraParm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/ConfigProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->isChatParm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/ConfigProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->isFtExtraParm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getCapAllowedPrefixes(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "storage"    # Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 880
    const/4 v0, 0x1

    .line 881
    .local v0, "index":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 882
    .local v1, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 884
    .local v2, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 885
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 886
    add-int/lit8 v0, v0, 0x1

    .line 887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 889
    :cond_0
    return-object v1
.end method

.method private static getIdentityByPhoneId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 1250
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    const/4 v0, 0x0

    return-object v0

    .line 1253
    :cond_0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->buildIdentity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 728
    const-string v0, ""

    .line 729
    .local v0, "midpath":Ljava/lang/String;
    const-string/jumbo v1, "root/application/0/public_user_identity_list/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    const-string/jumbo v3, "root/application/0/3gpp_ims/public_user_identity_list/"

    if-nez v1, :cond_2

    .line 730
    const-string/jumbo v1, "root/application/0/lbo_p-cscf_address/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 733
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 734
    :cond_1
    const-string v0, "/node/"

    goto :goto_1

    .line 731
    :cond_2
    :goto_0
    const-string v0, "/"

    .line 736
    :cond_3
    :goto_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 737
    .local v4, "index":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 738
    .local v5, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 739
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    goto :goto_2

    .line 740
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    :goto_2
    nop

    .line 742
    .local v6, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 743
    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 744
    add-int/lit8 v4, v4, 0x1

    .line 745
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 746
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    goto :goto_4

    .line 747
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    :goto_4
    move-object v6, v7

    goto :goto_3

    .line 750
    :cond_6
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 751
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 752
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v5, v1

    .line 753
    const/4 v1, 0x0

    .line 754
    .local v1, "nid":I
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0/node/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 756
    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 757
    goto :goto_7

    .line 759
    :cond_8
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 760
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_6

    .line 753
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 766
    .end local v1    # "nid":I
    :cond_a
    :goto_7
    return-object v5
.end method

.method private getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1276
    const/4 v0, 0x0

    .line 1277
    .local v0, "appIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "root/application/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1288
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1277
    if-eqz v1, :cond_1

    .line 1278
    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1279
    .local v1, "temp":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1280
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1281
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 1282
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1283
    :cond_0
    const/4 v0, 0x0

    .line 1287
    .end local v1    # "temp":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 1290
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1291
    .local v2, "appId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1292
    .local v4, "serverId":Ljava/lang/Integer;
    if-eqz v4, :cond_3

    .line 1293
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 1294
    .local v5, "additionalStorage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    if-eqz v5, :cond_3

    .line 1295
    return-object v5

    .line 1298
    .end local v2    # "appId":Ljava/lang/String;
    .end local v4    # "serverId":Ljava/lang/Integer;
    .end local v5    # "additionalStorage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    :cond_3
    goto :goto_1

    .line 1299
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object v1

    .line 1288
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object v1
.end method

.method private getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1257
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 1258
    .local v0, "slotId":I
    const-string v1, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1259
    .local v1, "offset":I
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1260
    .local v2, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1261
    .local v3, "appIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "root/application/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1262
    add-int/lit8 v4, v1, 0x11

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1263
    .local v4, "temp":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 1264
    const/4 v6, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1265
    .local v5, "key":Ljava/lang/String;
    sget-object v6, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Ljava/util/List;

    .line 1266
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1268
    :cond_0
    sget-object v5, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    const-string v6, "0"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/util/List;

    .line 1272
    .end local v4    # "temp":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v0, v3}, Lcom/sec/internal/ims/config/ConfigProvider;->initStorage(Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v4

    return-object v4
.end method

.method private initAdditionalStorage(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p4, "hashId"    # Ljava/lang/String;
    .param p5, "storage"    # Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;"
        }
    .end annotation

    .line 368
    .local p3, "appIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAdditionalStorage: phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 415
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 371
    if-nez v0, :cond_6

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    if-ge v0, v3, :cond_1

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "root/access-control/default/app-id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p5, v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 380
    goto :goto_1

    .line 383
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .end local v3    # "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "i":I
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget v3, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    if-ge v0, v3, :cond_5

    .line 392
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    sget v4, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    if-ge v3, v4, :cond_3

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "root/access-control/server/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/app-id/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p5, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "key":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 395
    goto :goto_4

    .line 398
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 401
    .end local v3    # "j":I
    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 402
    goto :goto_5

    .line 405
    :cond_4
    new-instance v3, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v3}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    .line 406
    .local v3, "additionalStorage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 407
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 410
    .end local v0    # "i":I
    .end local v3    # "additionalStorage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    :cond_5
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAppIdServerIdMap "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mServerIdStorageMap "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_6
    if-nez p3, :cond_7

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object v0

    .line 417
    :cond_7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 418
    .local v1, "appId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 419
    .local v3, "serverId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 420
    .local v4, "additionalStorage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    if-eqz v4, :cond_8

    .line 421
    return-object v4

    .line 423
    .end local v1    # "appId":Ljava/lang/String;
    .end local v3    # "serverId":Ljava/lang/Integer;
    :cond_8
    goto :goto_6

    .line 424
    .end local v4    # "additionalStorage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object v0
.end method

.method private initConfigTable()V
    .locals 28

    .line 456
    move-object/from16 v0, p0

    new-instance v1, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootParm;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 457
    .local v1, "rootParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string/jumbo v3, "version"

    invoke-direct {v0, v3, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 458
    const-string/jumbo v3, "validity"

    invoke-direct {v0, v3, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 459
    const-string/jumbo v3, "token"

    invoke-direct {v0, v3, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 461
    new-instance v3, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 462
    .local v3, "rootAppParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v4, "home_network_domain_name"

    invoke-direct {v0, v4, v3}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 463
    const-string/jumbo v4, "private_user_identity"

    invoke-direct {v0, v4, v3}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 464
    const-string/jumbo v4, "public_user_identity"

    invoke-direct {v0, v4, v3}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 465
    const-string v4, "address"

    invoke-direct {v0, v4, v3}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 466
    const-string v4, "addresstype"

    invoke-direct {v0, v4, v3}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 467
    const-string v4, "keep_alive_enabled"

    invoke-direct {v0, v4, v3}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 469
    new-instance v4, Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;

    invoke-direct {v4, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 470
    .local v4, "extParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v5, "maxsizeimageshare"

    invoke-direct {v0, v5, v4}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 471
    const-string v5, "maxtimevideoshare"

    invoke-direct {v0, v5, v4}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 472
    const-string/jumbo v5, "q-value"

    invoke-direct {v0, v5, v4}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 473
    const-string v5, "inturlfmt"

    invoke-direct {v0, v5, v4}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 474
    const-string v5, "naturlfmt"

    invoke-direct {v0, v5, v4}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 475
    const-string/jumbo v5, "rcsVolteSingleRegistration"

    invoke-direct {v0, v5, v4}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 476
    const-string v5, "endUserConfReqId"

    invoke-direct {v0, v5, v4}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 477
    const-string/jumbo v5, "uuid_Value"

    invoke-direct {v0, v5, v4}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 479
    new-instance v5, Lcom/sec/internal/ims/config/ConfigProvider$ReadAppAuthParm;

    invoke-direct {v5, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadAppAuthParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 480
    .local v5, "appAuthParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v6, "UserName"

    invoke-direct {v0, v6, v5}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 481
    const-string v6, "UserPwd"

    invoke-direct {v0, v6, v5}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 482
    const-string/jumbo v6, "realm"

    invoke-direct {v0, v6, v5}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 484
    new-instance v6, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceParm;

    invoke-direct {v6, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 485
    .local v6, "serviceParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v7, "SupportedRCSVersions"

    invoke-direct {v0, v7, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 486
    const-string v7, "SupportedRCSProfileVersions"

    invoke-direct {v0, v7, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 487
    const-string/jumbo v7, "rcsState"

    invoke-direct {v0, v7, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 488
    const-string/jumbo v8, "rcsDisabledState"

    invoke-direct {v0, v8, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 489
    const-string/jumbo v9, "presencePrfl"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 490
    const-string v9, "ChatAuth"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 491
    const-string v9, "GroupChatAuth"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 492
    const-string v9, "ftAuth"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 493
    const-string/jumbo v9, "standaloneMsgAuth"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 494
    const-string v9, "geolocPullAuth"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 495
    const-string v9, "geolocPushAuth"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 496
    const-string/jumbo v9, "vsAuth"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 497
    const-string v9, "isAuth"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 498
    const-string/jumbo v9, "rcsIPVoiceCallAuth"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 499
    const-string/jumbo v9, "rcsIPVideoCallAuth"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 500
    const-string v9, "IR94VideoAuth"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 501
    const-string v9, "allowRCSExtensions"

    invoke-direct {v0, v9, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 503
    new-instance v9, Lcom/sec/internal/ims/config/ConfigProvider$ReadDataOffParm;

    invoke-direct {v9, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadDataOffParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 504
    .local v9, "dataOffParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string/jumbo v10, "rcsMessagingDataOff"

    invoke-direct {v0, v10, v9}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 505
    const-string v10, "fileTransferDataOff"

    invoke-direct {v0, v10, v9}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 506
    const-string/jumbo v10, "smsoIPDataOff"

    invoke-direct {v0, v10, v9}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 507
    const-string v10, "mmsDataOff"

    invoke-direct {v0, v10, v9}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 508
    const-string/jumbo v10, "volteDataOff"

    invoke-direct {v0, v10, v9}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 509
    const-string v10, "IPVideoCallDataOff"

    invoke-direct {v0, v10, v9}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 510
    const-string/jumbo v10, "provisioningDataOff"

    invoke-direct {v0, v10, v9}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 511
    const-string/jumbo v10, "syncDataOff"

    invoke-direct {v0, v10, v9}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 513
    new-instance v10, Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;

    invoke-direct {v10, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 514
    .local v10, "capdiscoveryParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v11, "disableInitialAddressBookScan"

    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 515
    const-string/jumbo v11, "pollingperiod"

    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 516
    const-string/jumbo v11, "pollingrate"

    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 517
    const-string/jumbo v11, "pollingrateperiod"

    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 518
    const-string v11, "capinfoexpiry"

    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 519
    const-string v11, "nonRCScapInfoExpiry"

    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 520
    const-string v11, "defaultdisc"

    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 521
    const-string v11, "capDiscCommonStack"

    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 522
    const-string v11, "maxentriesinlist"

    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 523
    const-string v11, "capdiscoveryallowedprefixes"

    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 524
    const-string v11, "msgcapvalidity"

    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 525
    const-string v11, "lastseenactive"

    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 527
    new-instance v11, Lcom/sec/internal/ims/config/ConfigProvider$ReadPresenceParm;

    invoke-direct {v11, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPresenceParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 528
    .local v11, "presenceParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v12, "PublishTimer"

    invoke-direct {v0, v12, v11}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 529
    const-string/jumbo v12, "source-throttlepublish"

    invoke-direct {v0, v12, v11}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 530
    const-string v12, "max-number-ofsubscriptions-inpresence-list"

    invoke-direct {v0, v12, v11}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 531
    const-string v12, "RLS-URI"

    invoke-direct {v0, v12, v11}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 532
    const-string v12, "locinfomaxvalidtime"

    invoke-direct {v0, v12, v11}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 533
    const-string v12, "client-obj-datalimit"

    invoke-direct {v0, v12, v11}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 535
    new-instance v12, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;

    invoke-direct {v12, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 536
    .local v12, "imftParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v13, "imMsgTech"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 537
    const-string v13, "imcapalwayson"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 538
    const-string v13, "imWarnSF"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 539
    const-string v13, "GroupChatFullStandFwd"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 540
    const-string v13, "GroupChatOnlyFStandFwd"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 541
    const-string/jumbo v13, "smsfallbackauth"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 542
    const-string v13, "imCapNonRCS"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 543
    const-string v13, "imwarniw"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 544
    const-string v13, "autaccept"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 545
    const-string v13, "imsessionstart"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 546
    const-string v13, "autacceptgroupchat"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 547
    const-string v13, "firstMessageInvite"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 548
    const-string v13, "TimerIdle"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 549
    const-string v13, "maxConcurrentSession"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 550
    const-string v13, "multiMediaChat"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 551
    const-string v13, "MaxSize"

    invoke-direct {v0, v13, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 552
    const-string v14, "maxsize1to1"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 553
    const-string v14, "maxsize1tom"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 554
    const-string v14, "ftWarnSize"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 555
    const-string v14, "MaxSizeFileTr"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 556
    const-string v14, "MaxSizeFileTrIncoming"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 557
    const-string v14, "ftThumb"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 558
    const-string v14, "ftStAndFwEnabled"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 559
    const-string v14, "ftCapalwaysON"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 560
    const-string v14, "ftautaccept"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 561
    const-string v14, "ftHTTPCSURI"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 562
    const-string v14, "ftHTTPDLURI"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 563
    const-string v14, "ftHTTPCSUser"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 564
    const-string v14, "ftHTTPCSPwd"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 565
    const-string v14, "ftDefaultMech"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 566
    const-string v14, "ftHTTPFallback"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 567
    const-string/jumbo v14, "pres-srv-cap"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 568
    const-string v14, "deferred-msg-func-uri"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 569
    const-string v14, "max_adhoc_group_size"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 570
    const-string v14, "conf-fcty-uri"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 571
    const-string v14, "exploder-uri"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 572
    const-string v14, "mass-fcty-uri"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 573
    const-string v14, "ChatRevokeTimer"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 574
    const-string v14, "ftHTTPftWarnSize"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 575
    const-string v14, "ftHTTPMaxSizeFileTr"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 576
    const-string v14, "ftHTTPMaxSizeFileTrIncoming"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 577
    const-string v14, "max_adhoc_open_group_size"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 578
    const-string v14, "cbftHTTPCSURI"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 579
    const-string v14, "MaxSizeExtraFileTr"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 580
    const-string v14, "ftHTTPExtraCSURI"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 581
    const-string v14, "MaxIMDNAggregation"

    invoke-direct {v0, v14, v12}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 583
    new-instance v14, Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;

    invoke-direct {v14, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 584
    .local v14, "enrichedCallingParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v15, "composerAuth"

    invoke-direct {v0, v15, v14}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 585
    const-string/jumbo v15, "sharedMapAuth"

    invoke-direct {v0, v15, v14}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 586
    const-string/jumbo v15, "sharedSketchAuth"

    invoke-direct {v0, v15, v14}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 587
    const-string/jumbo v15, "postCallAuth"

    invoke-direct {v0, v15, v14}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 588
    const-string v15, "contentShareDataOff"

    invoke-direct {v0, v15, v14}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 589
    const-string/jumbo v15, "preAndPostCallDataOff"

    invoke-direct {v0, v15, v14}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 591
    new-instance v15, Lcom/sec/internal/ims/config/ConfigProvider$ReadStandalonMsgParm;

    invoke-direct {v15, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadStandalonMsgParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 592
    .local v15, "standaloneMsgParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v2, "MaxSizeStandalone"

    invoke-direct {v0, v2, v15}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 593
    invoke-direct {v0, v13, v15}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 594
    const-string v2, "SwitchoverSize"

    invoke-direct {v0, v2, v15}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 596
    new-instance v2, Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;

    const/4 v13, 0x0

    invoke-direct {v2, v0, v13}, Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 597
    .local v2, "cpmMessageStoreParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v13, "Url"

    invoke-direct {v0, v13, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 598
    const-string v13, "AuthProt"

    invoke-direct {v0, v13, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 599
    const-string v13, "messagestore/UserName"

    invoke-direct {v0, v13, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 600
    const-string v13, "messagestore/UserPwd"

    invoke-direct {v0, v13, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 601
    const-string v13, "EventRpting"

    invoke-direct {v0, v13, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 602
    const-string v13, "AuthArchive"

    invoke-direct {v0, v13, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 603
    const-string v13, "SyncTimer"

    invoke-direct {v0, v13, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 604
    const-string v13, "DataConnectionSyncTimer"

    invoke-direct {v0, v13, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 605
    const-string v13, "SMSStore"

    invoke-direct {v0, v13, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 606
    const-string v13, "MMSStore"

    invoke-direct {v0, v13, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 608
    new-instance v13, Lcom/sec/internal/ims/config/ConfigProvider$ReadOtherParm;

    move-object/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "rootParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    .local v16, "rootParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v13, v0, v1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadOtherParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    move-object v1, v13

    .line 609
    .local v1, "otherParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string/jumbo v13, "warnsizeimageshare"

    invoke-direct {v0, v13, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 610
    const-string v13, "extensionsMaxMSRPSize"

    invoke-direct {v0, v13, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 611
    const-string v13, "callComposerTimerIdle"

    invoke-direct {v0, v13, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 615
    new-instance v13, Lcom/sec/internal/ims/config/ConfigProvider$ReadXdmsParm;

    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "otherParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    .local v17, "otherParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v13, v0, v1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadXdmsParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 616
    .local v13, "xdmsParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string/jumbo v1, "xcaprooturi"

    invoke-direct {v0, v1, v13}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 618
    new-instance v1, Lcom/sec/internal/ims/config/ConfigProvider$ReadTransportProtoParm;

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "cpmMessageStoreParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    .local v18, "cpmMessageStoreParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadTransportProtoParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 619
    .local v1, "transportProtoParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string/jumbo v2, "psmedia"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 620
    const-string/jumbo v2, "wifimedia"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 621
    const-string/jumbo v2, "pssignalling"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 622
    const-string/jumbo v2, "wifisignalling"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 623
    const-string/jumbo v2, "psrtmedia"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 624
    const-string/jumbo v2, "pssignallingroaming"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 625
    const-string/jumbo v2, "psmediaroaming"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 626
    const-string/jumbo v2, "psrtmediaroaming"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 627
    const-string/jumbo v2, "wifirtmedia"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 629
    new-instance v2, Lcom/sec/internal/ims/config/ConfigProvider$ReadPublicAccountParm;

    move-object/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "transportProtoParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    .local v19, "transportProtoParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPublicAccountParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 630
    .local v2, "publicAccountParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string/jumbo v1, "publicaccount/Addr"

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 631
    const-string/jumbo v1, "publicaccount/AddrType"

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 633
    new-instance v1, Lcom/sec/internal/ims/config/ConfigProvider$ReadPersonalProfileParm;

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "publicAccountParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    .local v20, "publicAccountParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPersonalProfileParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 634
    .local v1, "personalProfileParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string/jumbo v2, "profile/addr"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 635
    const-string/jumbo v2, "profile/addrtype"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 637
    new-instance v2, Lcom/sec/internal/ims/config/ConfigProvider$ReadUxParm;

    move-object/from16 v21, v1

    const/4 v1, 0x0

    .end local v1    # "personalProfileParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    .local v21, "personalProfileParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadUxParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    move-object v1, v2

    .line 638
    .local v1, "uxParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v2, "messagingUX"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 639
    const-string/jumbo v2, "userAliasAuth"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 640
    const-string/jumbo v2, "spamNotificationText"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 641
    const-string/jumbo v2, "tokenLinkNotificationText"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 642
    const-string/jumbo v2, "unavailableEndpointText"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 643
    const-string/jumbo v2, "videoAndEnCallUX"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 644
    const-string v2, "IR51SwitchUx"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 645
    const-string v2, "msgFBDefault"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 646
    const-string v2, "ftFBDefault"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 647
    const-string v2, "callLogsBearerDiffer"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 648
    const-string v2, "allowEnrichedChatbotSearchDefault"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 650
    new-instance v2, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;

    move-object/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "uxParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    .local v22, "uxParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    move-object v1, v2

    .line 651
    .local v1, "clientControlParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string/jumbo v2, "reconnectGuardTimer"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 652
    const-string v2, "cfsTrigger"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 653
    const-string v2, "max1toManyRecipients"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 654
    const-string v2, "1toManySelectedTech"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 655
    const-string v2, "displayNotificationSwitch"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 656
    const-string v2, "ftMax1ToManyRecipients"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 657
    const-string/jumbo v2, "serviceAvailabilityInfoExpiry"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 658
    const-string v2, "ftHTTPCapAlwaysOn"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 660
    new-instance v2, Lcom/sec/internal/ims/config/ConfigProvider$ReadMsisdnParm;

    move-object/from16 v23, v1

    const/4 v1, 0x0

    .end local v1    # "clientControlParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    .local v23, "clientControlParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadMsisdnParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 661
    .local v2, "msisdnParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string/jumbo v1, "skip_count"

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 662
    const-string v1, "msgui_display"

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 664
    new-instance v1, Lcom/sec/internal/ims/config/ConfigProvider$ReadChatbotParm;

    move-object/from16 v24, v2

    const/4 v2, 0x0

    .end local v2    # "msisdnParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    .local v24, "msisdnParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadChatbotParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 665
    .local v1, "chatbotParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v2, "ChatbotDirectory"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 666
    const-string v2, "BotinfoFQDNRoot"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 667
    const-string v2, "ChatbotBlacklist"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 668
    const-string v2, "MsgHistorySelectable"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 669
    const-string v2, "SpecificChatbotsList"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 670
    const-string v2, "IdentityInEnrichedSearch"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 671
    const-string v2, "PrivacyDisable"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 672
    const-string v2, "ChatbotMsgTech"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 674
    new-instance v2, Lcom/sec/internal/ims/config/ConfigProvider$ReadMessageStoreParm;

    move-object/from16 v25, v1

    const/4 v1, 0x0

    .end local v1    # "chatbotParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    .local v25, "chatbotParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadMessageStoreParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    move-object v1, v2

    .line 675
    .local v1, "messageStoreParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v2, "MsgStoreUrl"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 676
    const-string v2, "MsgStoreNotifUrl"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 677
    const-string v2, "MsgStoreAuth"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 678
    const-string v2, "MsgStoreUserName"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 679
    const-string v2, "MsgStoreUserPwd"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 681
    new-instance v2, Lcom/sec/internal/ims/config/ConfigProvider$ReadPluginsParm;

    move-object/from16 v26, v1

    const/4 v1, 0x0

    .end local v1    # "messageStoreParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    .local v26, "messageStoreParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPluginsParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 682
    .local v2, "pluginsParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string v1, "catalogURI"

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 684
    new-instance v1, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceExtParm;

    move-object/from16 v27, v2

    const/4 v2, 0x0

    .end local v2    # "pluginsParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    .local v27, "pluginsParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    .line 685
    .local v1, "serviceExtParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    invoke-direct {v0, v7, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 686
    invoke-direct {v0, v8, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 688
    new-instance v7, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;

    invoke-direct {v7, v0, v2}, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V

    move-object v2, v7

    .line 689
    .local v2, "serviceProviderExtParm":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    const-string/jumbo v7, "spgUrl"

    invoke-direct {v0, v7, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 690
    const-string/jumbo v7, "params-url"

    invoke-direct {v0, v7, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 691
    const-string v7, "NMS_URL"

    invoke-direct {v0, v7, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 692
    const-string v7, "NC_URL"

    invoke-direct {v0, v7, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 693
    const-string v7, "fthttpGroupChat"

    invoke-direct {v0, v7, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 694
    const-string v7, "Username"

    invoke-direct {v0, v7, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 695
    const-string v7, "Password"

    invoke-direct {v0, v7, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 696
    return-void
.end method

.method private initStorage(Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;"
        }
    .end annotation

    .line 310
    .local p3, "appIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 312
    .local v0, "found":Z
    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getIdentityByPhoneId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "identity":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initStorage: phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " no identity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfigProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mEmptyStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object v2

    .line 326
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/helper/HashManager;->generateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "hashId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    monitor-enter v3

    .line 329
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 330
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 334
    .local v4, "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    if-nez v4, :cond_2

    .line 335
    const-string v6, "ConfigProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initStorage: phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " no storage :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 335
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :cond_2
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 339
    const-string v6, "ConfigProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initStorage: phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " different identity :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 339
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    .line 342
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const/4 v0, 0x0

    .line 348
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 349
    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    move-object v4, v6

    .line 350
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v4

    goto :goto_1

    .line 348
    :cond_4
    move-object v10, v4

    .line 353
    .end local v4    # "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .local v10, "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    :goto_1
    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    .line 354
    const-string v4, "ConfigProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initStorage: phone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " open storage :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 354
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v10, v4, v2, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 359
    :cond_5
    const-string/jumbo v4, "root/access-control/server/0/app-id/0"

    invoke-interface {v10, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 360
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, v2

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/config/ConfigProvider;->initAdditionalStorage(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v4

    move-object v10, v4

    .line 363
    :cond_6
    monitor-exit v3

    return-object v10

    .line 364
    .end local v10    # "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isChatParm(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .line 989
    const-string v0, "autaccept"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 990
    const-string v0, "autacceptgroupchat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 991
    const-string v0, "ChatRevokeTimer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 992
    const-string v0, "conf-fcty-uri"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 993
    const-string v0, "max_adhoc_group_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 994
    const-string v0, "MaxSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 995
    const-string v0, "TimerIdle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 998
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 996
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isFtExtraParm(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .line 1002
    const-string v0, "ftautaccept"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1003
    const-string v0, "ftHTTPCSPwd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    const-string v0, "ftHTTPCSURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1005
    const-string v0, "ftHTTPDLURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    const-string v0, "ftHTTPCSUser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1007
    const-string v0, "ftHTTPFallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1008
    const-string v0, "ftWarnSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1009
    const-string v0, "MaxSizeFileTr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1012
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1010
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isImExtraParm(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .line 979
    const-string v0, "cbftHTTPCSURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 980
    const-string v0, "MaxSizeExtraFileTr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 981
    const-string v0, "ftHTTPExtraCSURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 982
    const-string v0, "MaxIMDNAggregation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 985
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 983
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private queryMultipleStorage(Landroid/net/Uri;)Ljava/util/Map;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 211
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 212
    .local v1, "serverIdStorageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/util/TreeMap;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 214
    .local v3, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queryMultipleStorage path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " map "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConfigProvider"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-nez v1, :cond_0

    .line 217
    const/4 v4, 0x0

    return-object v4

    .line 220
    :cond_0
    const-string/jumbo v4, "root/application/*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "content://com.samsung.rcs.autoconfigurationprovider/*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 225
    :cond_1
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 226
    const-string/jumbo v5, "root"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "application/*"

    .line 227
    .local v4, "applicationCharacteristicPath":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\*#simslot\\d"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 232
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 233
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 234
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-direct {p0, p1, v6}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 232
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    .end local v4    # "applicationCharacteristicPath":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 222
    .local v5, "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 223
    .end local v5    # "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    goto :goto_2

    :cond_5
    nop

    .line 239
    :cond_6
    return-object v3
.end method

.method private queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "storage"    # Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryStorage path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 178
    const-string/jumbo v1, "provider is not ready, return empty!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, 0x0

    return-object v1

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string v2, "#simslot\\d"

    const-string v4, ""

    if-ne v1, v3, :cond_1

    .line 184
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 185
    .local v1, "phoneId":I
    const-string v3, "content://com.samsung.rcs.autoconfigurationprovider/parameter/"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->readDataByParam(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    .line 187
    .local v1, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 188
    .end local v1    # "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v1, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-interface {p2, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 192
    .restart local v1    # "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v1
.end method

.method private readDataByParam(Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 699
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 700
    .local v0, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mConfigTableMap:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;

    .line 704
    .local v1, "readParam":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    if-eqz v1, :cond_1

    .line 705
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;->readParam(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    .line 707
    :cond_1
    return-object v0

    .line 701
    .end local v1    # "readParam":Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "readConfigParam"    # Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mConfigTableMap:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v1, "^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/#]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v1

    .line 253
    .local v1, "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 254
    const-string/jumbo v3, "provider is not ready, return empty!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v2, 0x0

    return v2

    .line 258
    :cond_0
    const-string v2, "content://com.samsung.rcs.autoconfigurationprovider/"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "#simslot\\d"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "path_delete":Ljava/lang/String;
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->delete(Ljava/lang/String;)I

    move-result v3

    .line 261
    .local v3, "count":I
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 262
    return v3

    .line 247
    .end local v1    # "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .end local v2    # "path_delete":Ljava/lang/String;
    .end local v3    # "count":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a correct AutoConfigurationProvider Uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 272
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ConfigProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v1, "^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/#]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v1

    .line 282
    .local v1, "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_0

    .line 283
    const-string/jumbo v2, "provider is not ready, return empty!"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-object v5

    .line 287
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 290
    .local v4, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 291
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.samsung.rcs.autoconfigurationprovider/"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "#simslot\\d"

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 291
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .end local v4    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    goto :goto_0

    .line 297
    :cond_2
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 298
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 299
    return-object p1

    .line 276
    .end local v1    # "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .end local v2    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a correct AutoConfigurationProvider Uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate()Z
    .locals 4

    .line 99
    const-string v0, "ConfigProvider"

    const-string v1, "ConfigProvider was created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/sec/internal/ims/config/ConfigProvider;->initConfigTable()V

    .line 103
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 104
    const-string v1, "com.samsung.rcs.autoconfigurationprovider"

    const-string/jumbo v2, "parameter/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/config/ConfigProvider$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/ConfigProvider$1;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    sget-object v2, Lcom/sec/internal/ims/config/ConfigProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v1, "^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/*#]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v1

    .line 137
    .local v1, "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    const-string/jumbo v3, "root/*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "root/application/*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "content://com.samsung.rcs.autoconfigurationprovider/*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v3

    .local v3, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 138
    .end local v3    # "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->queryMultipleStorage(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v3

    .line 143
    .restart local v3    # "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    if-nez v3, :cond_2

    .line 144
    const-string v4, "can not find readData from mStorage"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v2, 0x0

    return-object v2

    .line 148
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 149
    .local v2, "columnNames":[Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 151
    .local v4, "columnValues":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 152
    .local v5, "index":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 153
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v2, v5

    .line 154
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v5

    .line 155
    nop

    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v5, v5, 0x1

    .line 156
    goto :goto_2

    .line 158
    :cond_3
    new-instance v6, Landroid/database/MatrixCursor;

    invoke-direct {v6, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 159
    .local v6, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v6, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 160
    return-object v6

    .line 129
    .end local v1    # "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .end local v2    # "columnNames":[Ljava/lang/String;
    .end local v3    # "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "columnValues":[Ljava/lang/String;
    .end local v5    # "index":I
    .end local v6    # "cursor":Landroid/database/MatrixCursor;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a correct AutoConfigurationProvider Uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 306
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    return v0
.end method
