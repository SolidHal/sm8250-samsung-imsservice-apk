.class public Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
.super Landroid/app/Service;
.source "NSDSMultiSimService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static mSimEvtRegistered:[Z

.field private static mVsimServiceIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mMessenger:Landroid/os/Messenger;

.field protected mModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mServiceHandler:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Z

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mSimEvtRegistered:[Z

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mVsimServiceIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    .line 54
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->onEventSimReady(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Messenger;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->unregisterNsdsEventMessenger(Landroid/os/Messenger;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->retrieveAkaToken(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    .line 44
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->isDeviceReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    .line 44
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->onDeviceReady()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    .line 44
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->bindNSDSMultiSimService()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->activateSimDevice(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->deactivateSimDevice(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->updateE911Address(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->handleVoWifToggleOnEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->handleVoWifToggleOffEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->updateEntitlementUrl(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Messenger;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->registerNsdsEventMessenger(Landroid/os/Messenger;I)V

    return-void
.end method

.method private activateSimDevice(II)V
    .locals 3
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I

    .line 320
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateSimDevice: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v0

    .line 322
    .local v0, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->activateSimDevice(II)V

    .line 325
    :cond_0
    return-void
.end method

.method private activateSimDevice(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .line 328
    const-string v0, "SLOT_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 329
    .local v0, "slotid":I
    const-string v2, "EVENT_TYPE"

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 330
    .local v2, "deviceEventType":I
    const-string v3, "RETRYCOUNT"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 331
    .local v1, "retryCount":I
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v3

    .line 332
    .local v3, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v3, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->activateSimDevice(II)V

    .line 335
    :cond_0
    return-void
.end method

.method private bindNSDSMultiSimService()V
    .locals 4

    .line 183
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "bindNSDSMultiSimService"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "binding_service"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 185
    .local v0, "nsds_uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method private deactivateSimDevice(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .line 362
    const-string v0, "IMSI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "imsi":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForImsi(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v1

    .line 364
    .local v1, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v1, :cond_0

    .line 365
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->deactivateSimDevice(I)V

    .line 367
    :cond_0
    return-void
.end method

.method private getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 412
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;-><init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V

    return-object v0
.end method

.method private getGcmRegistrationToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 241
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p1

    .line 245
    .end local v0    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForImsi(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v0

    .line 246
    .local v0, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->queueGcmTokenRetrieval()V

    .line 249
    :cond_1
    return-void
.end method

.method private getNsdsModuleForImsi(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    .locals 5
    .param p1, "imsi"    # Ljava/lang/String;

    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v0

    return-object v0

    .line 261
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getSimManager(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 262
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 263
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v1

    return-object v1

    .line 265
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find any NSDSModule for imsi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", returning for sim slot 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v1

    return-object v1
.end method

.method private getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    .locals 4
    .param p1, "simSlot"    # I

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    .line 272
    .local v0, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-nez v0, :cond_0

    .line 273
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating NSDSModule for simSlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->getNsdsModule(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_0
    return-object v0
.end method

.method private getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 1
    .param p1, "simSlot"    # I

    .line 283
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    return-object v0
.end method

.method private getSimManager(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .line 287
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManager(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    return-object v0
.end method

.method private getVSimModuleForSimSlot2(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    .locals 2
    .param p1, "simSlot"    # I

    .line 315
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    .line 316
    .local v0, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    return-object v0
.end method

.method private handleVoWifToggleOffEvent(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 354
    const-string v0, "SLOT_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 355
    .local v0, "slotid":I
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v1

    .line 356
    .local v1, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->handleVoWifToggleOffEvent()V

    .line 359
    :cond_0
    return-void
.end method

.method private handleVoWifToggleOnEvent(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 346
    const-string v0, "SLOT_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 347
    .local v0, "slotid":I
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v1

    .line 348
    .local v1, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->handleVoWifToggleOnEvent()V

    .line 351
    :cond_0
    return-void
.end method

.method private isDeviceReady()Z
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 394
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isDeviceReady() User lock "

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return v1

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->checkMigrateDB(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->migrateDBToCe(Landroid/content/Context;)V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->registerDefaultNetworkCallback()V

    .line 404
    return v1

    .line 407
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->unregisterNetworkCallback()V

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method private onDeviceReady()V
    .locals 2

    .line 453
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeviceReady()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    .line 455
    .local v1, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->initForDeviceReady()V

    .line 456
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->onDeviceReady()V

    .line 457
    .end local v1    # "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    goto :goto_0

    .line 458
    :cond_0
    return-void
.end method

.method private onEventSimReady(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 370
    const-string v0, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 371
    .local v0, "phoneId":I
    const-string v2, "com.sec.vsim.ericssonnsds.SIM_ABSENT"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 372
    .local v2, "absent":Z
    const-string v3, "com.sec.vsim.ericssonnsds.SIM_SWAPPED"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 374
    .local v1, "isSwapped":Z
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEventSimReady: isSimAbsent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    if-eqz v2, :cond_0

    .line 376
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->onSimStateNotAvailable(I)V

    .line 377
    return-void

    .line 379
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isSimSwapped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 383
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v3

    .line 384
    .local v3, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v3, :cond_1

    .line 385
    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->onSimReady(Z)V

    .line 386
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->isDeviceReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->onDeviceReady()V

    .line 390
    :cond_1
    return-void
.end method

.method private onSimStateNotAvailable(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 464
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimStateNotAvailable()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getVSimModuleForSimSlot2(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v0

    .line 466
    .local v0, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->onSimNotAvailable()V

    goto :goto_0

    .line 469
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSimStateNotAvailable() - nsdsModule is null"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_0
    return-void
.end method

.method private registerDefaultNetworkCallback()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 433
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 434
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerDefaultNetworkCallback"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 436
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 439
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    return-void
.end method

.method private registerForSimEvents(I)V
    .locals 2
    .param p1, "simSlot"    # I

    .line 189
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->registerSimEventMessenger(Landroid/os/Messenger;I)V

    .line 190
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mSimEvtRegistered:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 191
    return-void
.end method

.method private registerNsdsEventMessenger(Landroid/os/Messenger;I)V
    .locals 1
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "slotid"    # I

    .line 291
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v0

    .line 292
    .local v0, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->registerEventMessenger(Landroid/os/Messenger;)V

    .line 295
    :cond_0
    return-void
.end method

.method private retrieveAkaToken(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .line 305
    const-string v0, "IMSI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "imsi":Ljava/lang/String;
    const-string v1, "EVENT_TYPE"

    const/16 v2, 0x13

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 307
    .local v1, "deviceEventType":I
    const-string v2, "RETRYCOUNT"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 308
    .local v2, "retryCount":I
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForImsi(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v3

    .line 309
    .local v3, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v3, :cond_0

    .line 310
    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->retrieveAkaToken(II)V

    .line 312
    :cond_0
    return-void
.end method

.method public static startNsdsMultiSimService(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 483
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startNsdsMultiSimService()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 487
    return-void
.end method

.method private unregisterNetworkCallback()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 444
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 445
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterNetworkCallback"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 447
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 450
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    return-void
.end method

.method private unregisterNsdsEventMessenger(Landroid/os/Messenger;I)V
    .locals 1
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "slotid"    # I

    .line 298
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v0

    .line 299
    .local v0, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->unregisterEventMessenger(Landroid/os/Messenger;)V

    .line 302
    :cond_0
    return-void
.end method

.method private updateE911Address(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 338
    const-string v0, "SLOT_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 339
    .local v0, "slotid":I
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v1

    .line 340
    .local v1, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->updateE911Address()V

    .line 343
    :cond_0
    return-void
.end method

.method private updateEntitlementUrl(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .line 210
    const-string v0, "IMSI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "imsi":Ljava/lang/String;
    const-string v1, "URL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "url":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForImsi(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v2

    .line 213
    .local v2, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->updateEntitlementUrl(Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 475
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->prepareDump(Ljava/io/PrintWriter;)V

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    .line 477
    .local v1, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->dump()V

    .line 478
    .end local v1    # "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    goto :goto_0

    .line 479
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->postDump(Ljava/io/PrintWriter;)V

    .line 480
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;II)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 194
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received startId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "imsi"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "imsi":Ljava/lang/String;
    const-string v2, "com.samsung.nsds.action.REFRESH_DEVICE_CONFIG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->refreshDeviceConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_0
    const-string v2, "com.samsung.nsds.action.ACTION_SIM_DEVICE_ACTIVATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->activateSimDevice(II)V

    goto :goto_0

    .line 204
    :cond_1
    const-string v2, "com.samsung.nsds.action.ACTION_REFRESH_GCM_TOKEN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getGcmRegistrationToken(Ljava/lang/String;)V

    .line 207
    :cond_2
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 146
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Do not allow bind on non-system user"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 111
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 114
    :try_start_0
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Do not initialize on non-system user"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 120
    :cond_0
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException occurred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    .line 126
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "NSDSMultiSimService"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 127
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 128
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mServiceLooper:Landroid/os/Looper;

    .line 129
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;-><init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;

    .line 130
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mMessenger:Landroid/os/Messenger;

    .line 132
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mServiceLooper:Landroid/os/Looper;

    invoke-static {v1, p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->createInstance(Landroid/os/Looper;Landroid/content/Context;)Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    .line 133
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mServiceLooper:Landroid/os/Looper;

    invoke-static {v1, p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 136
    :try_start_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 137
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 138
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 139
    :catch_1
    move-exception v1

    .line 140
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "initialize failed"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 156
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->unregisterSimEventMessenger(Landroid/os/Messenger;)V

    .line 160
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 161
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 165
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 167
    const/4 v1, 0x0

    const-string v2, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 168
    .local v1, "slotIndex":I
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mSimEvtRegistered:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    .line 169
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->registerForSimEvents(I)V

    .line 171
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "> startId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->handleIntent(Landroid/content/Intent;II)V

    .line 174
    .end local v1    # "slotIndex":I
    nop

    .line 179
    return v0

    .line 175
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleIntent() - Intent is null. return...."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return v0
.end method

.method public refreshDeviceConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "imsi"    # Ljava/lang/String;

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 225
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForImsi(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v0

    .line 226
    .local v0, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->queueRefreshDeviceConfig(I)V

    .line 229
    .end local v0    # "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    :cond_0
    goto :goto_1

    .line 230
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Refresh device config for all modules"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    .line 232
    .local v2, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->queueRefreshDeviceConfig(I)V

    .line 233
    .end local v2    # "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    goto :goto_0

    .line 235
    :cond_2
    :goto_1
    return-void
.end method
