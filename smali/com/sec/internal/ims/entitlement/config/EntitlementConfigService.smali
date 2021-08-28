.class public Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;
.super Landroid/app/Service;
.source "EntitlementConfigService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mConRcvRegistered:Z

.field protected mConfigRcvRegistered:Z

.field protected mConfigReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mMessenger:Landroid/os/Messenger;

.field protected mModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;",
            ">;"
        }
    .end annotation
.end field

.field private mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

.field private mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

.field protected mServiceLooper:Landroid/os/Looper;

.field protected mSimEvtRegistered:[Z

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConRcvRegistered:Z

    .line 64
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigRcvRegistered:Z

    .line 66
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mSimEvtRegistered:[Z

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    .line 70
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 72
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 74
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;-><init>(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Lcom/sec/internal/helper/SimpleEventLog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 52
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->onEventSimReady(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    .line 52
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->initEntitlementConfigService()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->onDeviceReady(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->forceConfigUpdate(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->retriveAkaToken(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 52
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->updateEntitlementUrl(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    .line 52
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->onDeviceReady()V

    return-void
.end method

.method private addAndGetConfigModule(I)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    .locals 4
    .param p1, "phoneId"    # I

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    .line 350
    .local v0, "configModule":Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    if-nez v0, :cond_1

    .line 351
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->getInstance()Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    move-result-object v1

    .line 352
    .local v1, "factory":Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->getInstance()Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->getDeviceConfigModule(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 354
    if-eqz v0, :cond_1

    .line 355
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "addAndGetConfigModule: added for phoneId "

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .end local v1    # "factory":Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;
    :cond_1
    return-object v0
.end method

.method private forceConfigUpdate(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    .line 383
    .local v0, "configModule":Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    if-nez v0, :cond_0

    .line 384
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "configModule is null"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 385
    return-void

    .line 388
    :cond_0
    instance-of v1, v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->forceConfigUpdate()V

    goto :goto_0

    .line 391
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "check why config module is not instance of NSDSConfigModule"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_0
    return-void
.end method

.method private getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 289
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$2;-><init>(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V

    return-object v0
.end method

.method private getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 1
    .param p1, "simSlot"    # I

    .line 363
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    return-object v0
.end method

.method private initEntitlementConfigService()V
    .locals 4

    .line 212
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initEntitlementConfigService"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->registerConfigReceiver()V

    .line 216
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "binding_service"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 217
    .local v0, "nsds_uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method private onDeviceReady()V
    .locals 2

    .line 375
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeviceReady"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    .line 377
    .local v1, "configModule":Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->onDeviceReady()V

    .line 378
    .end local v1    # "configModule":Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    goto :goto_0

    .line 379
    :cond_0
    return-void
.end method

.method private onDeviceReady(I)V
    .locals 2
    .param p1, "simslot"    # I

    .line 367
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeviceReady"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    .line 369
    .local v0, "configModule":Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->onDeviceReady()V

    .line 372
    :cond_0
    return-void
.end method

.method private onEventSimReady(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 226
    const-string v0, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 227
    .local v0, "phoneId":I
    const-string v2, "com.sec.vsim.ericssonnsds.SIM_ABSENT"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 228
    .local v2, "absent":Z
    const-string v3, "com.sec.vsim.ericssonnsds.SIM_SWAPPED"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 230
    .local v1, "isSwapped":Z
    sget-object v3, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEventSimReady: isSimAbsent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isSimSwapped "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    if-eqz v2, :cond_1

    .line 232
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 233
    sget-object v3, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove nsdsconfigmodule for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_0
    return-void

    .line 239
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->addAndGetConfigModule(I)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    move-result-object v3

    .line 240
    .local v3, "configModule":Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/MnoNsdsConfigStrategyCreator;->updateMnoStrategy(Landroid/content/Context;I)V

    .line 241
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->resetDeviceConfigState()V

    .line 243
    if-eqz v3, :cond_2

    .line 244
    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->onSimReady(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->isDeviceReady()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 246
    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->onDeviceReady()V

    goto :goto_0

    .line 249
    :cond_2
    sget-object v4, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onEventSimReady: config module was not initiated"

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_3
    :goto_0
    return-void
.end method

.method private registerConfigReceiver()V
    .locals 2

    .line 330
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigRcvRegistered:Z

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v1, "com.sec.vsim.ericssonnsds.REFRESH_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v1, "com.sec.vsim.ericssonnsds.RETRY_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigRcvRegistered:Z

    .line 338
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private registerDefaultNetworkCallback()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 310
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 311
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerDefaultNetworkCallback"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 313
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 316
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    return-void
.end method

.method private registerForSimEvents(I)V
    .locals 2
    .param p1, "simSlot"    # I

    .line 221
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->registerSimEventMessenger(Landroid/os/Messenger;I)V

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mSimEvtRegistered:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 223
    return-void
.end method

.method private resetDeviceConfigState()V
    .locals 9

    .line 273
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

    .line 274
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    .line 275
    .local v2, "simindex":I
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "deviceUid":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    const-string v5, "device_config_state"

    invoke-static {v4, v3, v5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "devicestate":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 280
    const-string v6, "deviceconfig_in_progress"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 281
    sget-object v6, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] reset... device config state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v2    # "simindex":I
    .end local v3    # "deviceUid":Ljava/lang/String;
    .end local v4    # "devicestate":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 286
    :cond_1
    return-void
.end method

.method private retriveAkaToken(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 396
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    .line 397
    .local v0, "configModule":Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    if-nez v0, :cond_0

    .line 398
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "configModule is null"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 399
    return-void

    .line 402
    :cond_0
    instance-of v1, v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->retriveAkaToken()V

    goto :goto_0

    .line 405
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "check why config module is not instance of NSDSConfigModule"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void
.end method

.method public static startEntitlementConfigService(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 422
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startEntitlementConfigService()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 426
    return-void
.end method

.method private unregisterConfigReceiver()V
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigRcvRegistered:Z

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigRcvRegistered:Z

    .line 346
    :cond_0
    return-void
.end method

.method private unregisterNetworkCallback()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 321
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 322
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterNetworkCallback"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 324
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 327
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    return-void
.end method

.method private updateEntitlementUrl(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .line 410
    const-string v0, "URL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEntitlementUrl: url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    return-void

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "deviceid":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 417
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->deleteConfigAndResetDeviceAndAccountStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 418
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->setEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 430
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->prepareDump(Ljava/io/PrintWriter;)V

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 432
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->postDump(Ljava/io/PrintWriter;)V

    .line 433
    return-void
.end method

.method protected isDeviceReady()Z
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 255
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isDeviceReady() User lock "

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return v1

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->checkMigrateDB(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->migrateDBToCe(Landroid/content/Context;)V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->registerDefaultNetworkCallback()V

    .line 265
    return v1

    .line 268
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->unregisterNetworkCallback()V

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 159
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .line 132
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 133
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EntitlementConfigService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 136
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 137
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceLooper:Landroid/os/Looper;

    .line 138
    new-instance v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;-><init>(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    .line 139
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mMessenger:Landroid/os/Messenger;

    .line 141
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    .line 142
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 143
    new-instance v1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 145
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceLooper:Landroid/os/Looper;

    invoke-static {v1, p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->createInstance(Landroid/os/Looper;Landroid/content/Context;)Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    .line 146
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceLooper:Landroid/os/Looper;

    invoke-static {v1, p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 149
    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 151
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "initialize failed"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 165
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->unregisterSimEventMessenger(Landroid/os/Messenger;)V

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->unregisterConfigReceiver()V

    .line 170
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 171
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 175
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 177
    const-string v1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 178
    .local v3, "slotIndex":I
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mSimEvtRegistered:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_0

    .line 179
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->registerForSimEvents(I)V

    .line 181
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "> startId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.vsim.ericssonnsds.REFRESH_DEVICE_CONFIG"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.vsim.ericssonnsds.RETRY_DEVICE_CONFIG"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
    :cond_1
    const-string v4, "device_event_type"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 186
    .local v4, "eventType":I
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 188
    .local v1, "simSlotIdx":I
    const/16 v2, 0x12

    if-eq v4, v2, :cond_3

    const/16 v2, 0x13

    if-eq v4, v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    const/16 v5, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 199
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 194
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    const/16 v5, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 195
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    goto :goto_0

    .line 190
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    const/16 v5, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 191
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    nop

    .line 203
    .end local v1    # "simSlotIdx":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "slotIndex":I
    .end local v4    # "eventType":I
    :cond_4
    :goto_0
    nop

    .line 208
    return v0

    .line 204
    :cond_5
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleIntent() - Intent is null. return...."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return v0
.end method
