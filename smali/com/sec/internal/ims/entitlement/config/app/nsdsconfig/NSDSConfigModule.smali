.class public Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;
.super Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
.source "NSDSConfigModule.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mEntitlementConfigImpl:Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "simManager"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 54
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;-><init>(Landroid/os/Looper;)V

    .line 36
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;-><init>(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContentObserver:Landroid/database/ContentObserver;

    .line 55
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 57
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEntitlementConfigImpl:Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;

    .line 58
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->registerContentObserver()V

    .line 59
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->init()V

    .line 60
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    .line 29
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->getMnoNsdsStrategy()Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;

    move-result-object v0

    return-object v0
.end method

.method private getMnoNsdsStrategy()Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/MnoNsdsConfigStrategyCreator;->getMnoStrategy(I)Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;

    move-result-object v0

    return-object v0
.end method

.method private otherSimInProgress(I)Z
    .locals 6
    .param p1, "simSlot"    # I

    .line 138
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Check otherSimInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 140
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    .line 141
    .local v2, "simindex":I
    if-eq v2, p1, :cond_0

    .line 142
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "deviceUid":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    const-string v5, "device_config_state"

    invoke-static {v4, v3, v5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "devicestate":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 146
    const-string v5, "deviceconfig_in_progress"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "otherSimInProgress... pending device config"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x1

    return v0

    .line 151
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v2    # "simindex":I
    .end local v3    # "deviceUid":Ljava/lang/String;
    .end local v4    # "devicestate":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private registerContentObserver()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/extensions/Extensions$Settings$Global;->DEVICE_PROVISIONED:Ljava/lang/String;

    .line 66
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContentObserver:Landroid/database/ContentObserver;

    .line 65
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    return-void
.end method


# virtual methods
.method public forceConfigUpdate()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEntitlementConfigImpl:Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;->getDeviceConfig(Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method public onDeviceReady()V
    .locals 12

    .line 82
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->start()V

    .line 83
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->getMnoNsdsStrategy()Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;

    move-result-object v0

    .line 84
    .local v0, "mnoNsdsStrategy":Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Waiting for OOBE setup complete..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    .line 89
    .local v1, "slotIndex":I
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "deviceId":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 92
    .local v9, "isSwapped":Z
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    const-string v3, "device_config_state"

    invoke-static {v2, v8, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 94
    .local v10, "devicestate":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 95
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onDeviceReady... reset deviceconfig_state"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v8, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->otherSimInProgress(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Waiting for other SIM operation until 5sec"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v11, v2

    .line 102
    .local v11, "extras":Landroid/os/Bundle;
    const-string v2, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    const-wide/16 v6, 0x1388

    const-string v4, "com.sec.vsim.ericssonnsds.RETRY_DEVICE_CONFIG"

    move v3, v1

    move-object v5, v11

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->scheduleTimer(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;J)V

    .line 105
    return-void

    .line 108
    .end local v11    # "extras":Landroid/os/Bundle;
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    const-string v4, "deviceconfig_in_progress"

    invoke-static {v2, v8, v3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-eqz v9, :cond_3

    .line 113
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->clearSimSwapPending(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEntitlementConfigImpl:Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;->getDeviceConfig(Ljava/lang/String;I)V

    .line 116
    return-void
.end method

.method public onSimReady(Z)V
    .locals 3
    .param p1, "isSwapped"    # Z

    .line 71
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimReady: isSwapped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 74
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    .line 73
    const-string/jumbo v2, "prev_imsi"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getPrefForSlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "prevImsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->deleteConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    .end local v0    # "prevImsi":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public retriveAkaToken()V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 124
    .local v0, "slotIndex":I
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "deviceId":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 127
    .local v2, "isSwapped":Z
    if-eqz v2, :cond_0

    .line 128
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->clearSimSwapPending(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEntitlementConfigImpl:Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;->getDeviceConfig(Ljava/lang/String;I)V

    .line 131
    return-void
.end method
