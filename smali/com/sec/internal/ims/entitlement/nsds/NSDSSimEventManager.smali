.class public Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;
.super Landroid/os/Handler;
.source "NSDSSimEventManager.java"


# static fields
.field private static final EVENT_SIMMOBILITY_CHANGED:I = 0x2

.field private static final EVENT_SIM_SUBSCRIBE_ID_CHANGED:I = 0x1

.field private static final EVT_SIM_READY:I = 0x0

.field private static final EVT_SIM_REFRESH:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "NSDSSimEventManager"

.field public static final NOTIFY_SIM_READY:I = 0x64

.field private static mInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

.field private static final mLock:Ljava/lang/Object;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field protected mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field protected mDeviceReadyReceiver:Landroid/content/BroadcastReceiver;

.field private mSimEvtMessengers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mSimEvtRegistered:Z

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mSimMobilitystatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mLock:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    .line 73
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 76
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getAuthority()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 77
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 76
    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 109
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtRegistered:Z

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimMobilitystatus:Ljava/util/Map;

    .line 80
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;-><init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mDeviceReadyReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$2;-><init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 110
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->initSimManagers()V

    .line 112
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->registerContentObserver()V

    .line 113
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->registerDeviceReadyReceiver()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    .line 52
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->isDeviceReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->onEventSimReady(I)V

    return-void
.end method

.method static synthetic access$200()Landroid/content/UriMatcher;
    .locals 1

    .line 52
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->sUriMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->onSimMobilityChanged(I)V

    return-void
.end method

.method public static createInstance(Landroid/os/Looper;Landroid/content/Context;)Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-direct {v1, p1, p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    .line 125
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    return-object v0

    .line 125
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;
    .locals 1

    .line 117
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    return-object v0
.end method

.method private getSimEvtBundle(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Landroid/os/Bundle;
    .locals 5
    .param p1, "simManager"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 331
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 332
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimEvtBundle: phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NSDSSimEventManager"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    if-ltz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 335
    .local v1, "noSim":Z
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v2, "simEvtBundle":Landroid/os/Bundle;
    const-string v3, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    const-string v3, "com.sec.vsim.ericssonnsds.SIM_ABSENT"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->isSimSwapPending(I)Z

    move-result v3

    const-string v4, "com.sec.vsim.ericssonnsds.SIM_SWAPPED"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    return-object v2
.end method

.method private initSimManagers()V
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 218
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimMobilitystatus:Ljava/util/Map;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 221
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtRegistered:Z

    if-nez v0, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->registerForSimEvents()V

    .line 224
    :cond_1
    return-void
.end method

.method private isDeviceReady()Z
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    const-string v0, "NSDSSimEventManager"

    const-string v1, "isDeviceReady() User lock "

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    return v0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->checkMigrateDB(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->migrateDBToCe(Landroid/content/Context;)V

    .line 455
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->unregisterDeviceReadyReceiver()V

    .line 456
    const/4 v0, 0x1

    return v0
.end method

.method private isSimSwapPending(I)Z
    .locals 2
    .param p1, "simSlot"    # I

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "deviceUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isSimSwapped(I)Z
    .locals 7
    .param p1, "simSlot"    # I

    .line 289
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 290
    .local v0, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    const-string v2, "imsi"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getPrefForSlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "prevImsiForSlot":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "currImsiForSlot":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "prev_imsi"

    invoke-static {v4, p1, v5, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->savePrefForSlot(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->savePrefForSlot(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pending_sim_swap"

    const/4 v6, 0x1

    invoke-static {v2, v4, v5, v6}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 302
    return v6

    .line 305
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->isSimSwapPending(I)Z

    move-result v2

    return v2
.end method

.method private notifyLazySimReady(Landroid/os/Messenger;I)V
    .locals 4
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "simSlot"    # I

    .line 277
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 278
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->obtainSimReadyMessage(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLazySimReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NSDSSimEventManager"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 286
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyMessengerSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 6
    .param p1, "simManager"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 314
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 317
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->obtainSimReadyMessage(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    goto :goto_1

    .line 318
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "NSDSSimEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMessengerSimReady: dead messenger, removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 315
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 326
    .end local v1    # "i":I
    :cond_0
    const-string v1, "NSDSSimEventManager"

    const-string v2, "notifyMessengerSimReady: notified"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    monitor-exit v0

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private notifySimReady(ZI)V
    .locals 5
    .param p1, "absent"    # Z
    .param p2, "phoneId"    # I

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySimReady, isSimAbsent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSDSSimEventManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "deviceUid":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->isSimSwapped(I)Z

    move-result v2

    .line 263
    .local v2, "isSimSwapped":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isSimSwapped:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",SIMSWAP:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x14010002

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 266
    if-eqz v2, :cond_0

    .line 267
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->clearEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->resetMnoStrategy()V

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/MnoNsdsConfigStrategyCreator;->updateMnoStrategy(Landroid/content/Context;I)V

    .line 272
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 273
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->notifyMessengerSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 274
    return-void
.end method

.method private obtainSimReadyMessage(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Landroid/os/Message;
    .locals 2
    .param p1, "simManager"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 344
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 345
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 346
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimEvtBundle(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    return-object v0
.end method

.method private onEventSimReady(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 227
    const-string v0, "NSDSSimEventManager"

    const-string v1, "onEventSimReady:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->isDeviceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 233
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_1

    .line 234
    return-void

    .line 236
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_3

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    .line 237
    .local v3, "noSim":Z
    :goto_1
    if-nez v3, :cond_4

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->notifySimReady(ZI)V

    .line 238
    return-void
.end method

.method private onSimMobilityChanged(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 429
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 430
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v1, 0x0

    .line 431
    .local v1, "simmoiblity":Z
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 432
    .local v3, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 433
    const/4 v1, 0x1

    .line 434
    goto :goto_1

    .line 436
    .end local v3    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    goto :goto_0

    .line 438
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimMobilitystatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSimMobilityChanged to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " : Start again entitlement service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NSDSSimEventManager"

    invoke-static {v3, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimMobilitystatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->startIMSDeviceConfigService(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 443
    :cond_2
    return-void
.end method

.method private onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V
    .locals 4
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .line 251
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimSubscribeIdChanged, subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NSDSSimEventManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 253
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 254
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    .line 256
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 132
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 131
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    return-void
.end method

.method private registerDeviceReadyReceiver()V
    .locals 3

    .line 180
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 181
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.internal.ims.entitlement.DEVICE_READY_AFTER_BOOTUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "NSDSSimEventManager"

    const-string/jumbo v2, "registerDeviceReadyReceiver"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mDeviceReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    return-void
.end method

.method private registerForSimEvents()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 242
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v3, 0x0

    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 243
    const/4 v3, 0x3

    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 244
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 246
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForSubIdChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 247
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtRegistered:Z

    .line 248
    return-void
.end method

.method public static startIMSDeviceConfigService(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "startConfigService":Z
    const/4 v1, 0x0

    .line 354
    .local v1, "startNsdsService":Z
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 355
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    .line 356
    .local v3, "phoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startIMSDeviceConfigService : check CSC , Mnoname: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NSDSSimEventManager"

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",START:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0x14010000

    invoke-static {v6, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 359
    const-string v4, "Nsds"

    invoke-static {v4, v3}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkVSimFeatureEnabled(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    const/4 v0, 0x1

    .line 361
    const/4 v1, 0x1

    goto :goto_0

    .line 362
    :cond_0
    const-string v4, "Nsdsconfig"

    invoke-static {v4, v3}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkVSimFeatureEnabled(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    const/4 v0, 0x1

    .line 366
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_d

    .line 367
    :cond_2
    invoke-static {v3}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigServer(I)Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "configserver":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 369
    const/4 v0, 0x0

    .line 370
    const/4 v1, 0x0

    .line 371
    const-string/jumbo v7, "startIMSDeviceConfigService : Not support ES server"

    invoke-static {v5, v3, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 374
    :cond_3
    invoke-static {v3}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 375
    const-string v7, "ims"

    invoke-static {p0, v7, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    move v7, v9

    goto :goto_1

    :cond_4
    move v7, v8

    .line 376
    .local v7, "isImsEnabled":Z
    :goto_1
    if-eqz v7, :cond_c

    .line 377
    const-string/jumbo v10, "volte"

    invoke-static {p0, v10, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v9, :cond_5

    goto :goto_2

    :cond_5
    move v9, v8

    .line 378
    .local v9, "isVoLteEnabled":Z
    :goto_2
    if-nez v9, :cond_8

    .line 379
    sget-object v10, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v2, v10, :cond_6

    sget-object v10, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-eq v2, v10, :cond_6

    sget-object v10, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK_LAB:Lcom/sec/internal/constants/Mno;

    if-ne v2, v10, :cond_7

    .line 380
    :cond_6
    const/4 v1, 0x0

    .line 381
    const/4 v0, 0x0

    .line 383
    :cond_7
    const-string/jumbo v10, "startIMSDeviceConfigService : Nsds is disabled"

    invoke-static {v5, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_8
    sget-object v10, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v10, :cond_b

    if-eqz v0, :cond_b

    .line 387
    const-string/jumbo v10, "ro.simbased.changetype"

    invoke-static {v10, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, "omcProperty":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v10

    .line 389
    .local v10, "omcCode":Ljava/lang/String;
    invoke-virtual {v2, v10}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 390
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->isSupport5G(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 391
    :cond_9
    const-string v11, "SED"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string/jumbo v11, "ro.product.first_api_level"

    invoke-static {v11, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/16 v11, 0x1d

    if-ge v8, v11, :cond_b

    .line 392
    :cond_a
    const/4 v1, 0x0

    .line 393
    const/4 v0, 0x0

    .line 394
    const-string/jumbo v8, "startIMSDeviceConfigService : ConfigService is disabled"

    invoke-static {v5, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v6    # "omcProperty":Ljava/lang/String;
    .end local v9    # "isVoLteEnabled":Z
    .end local v10    # "omcCode":Ljava/lang/String;
    :cond_b
    goto :goto_3

    .line 398
    :cond_c
    const-string/jumbo v6, "startIMSDeviceConfigService : IMS is disabled"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v1, 0x0

    .line 400
    const/4 v0, 0x0

    .line 405
    .end local v4    # "configserver":Ljava/lang/String;
    .end local v7    # "isImsEnabled":Z
    :cond_d
    :goto_3
    sget-object v4, Lcom/sec/internal/constants/Mno;->GCI:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_e

    .line 406
    const-string/jumbo v4, "startIMSDeviceConfigService : GCI"

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x1

    .line 408
    const/4 v1, 0x1

    .line 410
    :cond_e
    sget-object v4, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-eq v2, v4, :cond_f

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK_LAB:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_10

    .line 411
    :cond_f
    const/4 v0, 0x0

    .line 412
    const-string/jumbo v4, "startIMSDeviceConfigService : ConfigService is disabled for O2U"

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startIMSDeviceConfigService : ConfigService ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "], Nsds["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    const v4, 0x14010001

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",DC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",NSDS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 418
    if-nez v0, :cond_11

    if-eqz v1, :cond_13

    .line 419
    :cond_11
    if-eqz v0, :cond_12

    .line 420
    invoke-static {p0, v3}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->startEntitlementConfigService(Landroid/content/Context;I)V

    .line 422
    :cond_12
    if-eqz v1, :cond_13

    .line 423
    invoke-static {p0, v3}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->startNsdsMultiSimService(Landroid/content/Context;I)V

    .line 426
    :cond_13
    return-void
.end method

.method private unregisterDeviceReadyReceiver()V
    .locals 4

    .line 188
    const-string v0, "NSDSSimEventManager"

    :try_start_0
    const-string/jumbo v1, "unregisterDeviceReadyReceiver"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mDeviceReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterDeviceReadyReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getSimManager(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 3
    .param p1, "imsi"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 137
    .local v1, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    return-object v1

    .line 140
    .end local v1    # "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_0
    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 3
    .param p1, "simSlot"    # I

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 146
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 147
    return-object v1

    .line 149
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISimManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] is not exist. Return null.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSDSSimEventManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSDSSimEventManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 206
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V

    .line 207
    goto :goto_0

    .line 201
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 202
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->onEventSimReady(I)V

    .line 203
    nop

    .line 211
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :goto_0
    return-void
.end method

.method public registerSimEventMessenger(Landroid/os/Messenger;I)V
    .locals 4
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "simSlot"    # I

    .line 155
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    if-nez p1, :cond_0

    .line 157
    :try_start_0
    const-string v1, "NSDSSimEventManager"

    const-string/jumbo v2, "registerSimEventMessenger: null messenger"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    monitor-exit v0

    return-void

    .line 160
    :cond_0
    const-string v1, "NSDSSimEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerSimEventMessenger size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->notifyLazySimReady(Landroid/os/Messenger;I)V

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterSimEventMessenger(Landroid/os/Messenger;)V
    .locals 4
    .param p1, "evtMessenger"    # Landroid/os/Messenger;

    .line 169
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    if-nez p1, :cond_0

    .line 171
    :try_start_0
    const-string v1, "NSDSSimEventManager"

    const-string/jumbo v2, "unregisterSimEventMessenger: messenger null"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    monitor-exit v0

    return-void

    .line 174
    :cond_0
    const-string v1, "NSDSSimEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterSimEventMessenger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 176
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
