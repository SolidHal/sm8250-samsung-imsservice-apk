.class public Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;
.super Landroid/os/Handler;
.source "NSDSDeviceConfigImpl.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;


# static fields
.field private static final FORCE_CONFIG_UPDATE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RETRIEVE_AKA_TOKEN:I = 0x3

.field private static final RETRIEVE_DEVICE_CONFIG:I = 0x0

.field private static final UPDATE_DEVICE_CONFIG:I = 0x1


# instance fields
.field private mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

.field private mContext:Landroid/content/Context;

.field private mEntitlementConfigDBHelper:Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "simManager"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 29
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 32
    new-instance v0, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mEntitlementConfigDBHelper:Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;

    .line 34
    return-void
.end method

.method private retrieveAkaToken(I)V
    .locals 5
    .param p1, "deviceEventType"    # I

    .line 79
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;

    .line 80
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mEntitlementConfigDBHelper:Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 81
    .local v0, "akaTokenRetrieval":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "imsi":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "akaTokenRetrieval: imsi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->performAkaTokenRetrieval(II)V

    .line 84
    return-void
.end method

.method private retrieveDeviceConfiguration(I)V
    .locals 5
    .param p1, "deviceEventType"    # I

    .line 71
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;

    .line 72
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mEntitlementConfigDBHelper:Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 73
    .local v0, "deviceConfigurationUpdate":Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "imsi":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retrieveDeviceConfiguration: imsi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->performDeviceConfigRetrieval(II)V

    .line 76
    return-void
.end method


# virtual methods
.method public getDeviceConfig(Ljava/lang/String;I)V
    .locals 3
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "deviceEventType"    # I

    .line 37
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "msgWhat":I
    const/16 v1, 0x12

    if-ne p2, v1, :cond_0

    .line 40
    const/4 v0, 0x2

    goto :goto_0

    .line 41
    :cond_0
    const/16 v1, 0x13

    if-ne p2, v1, :cond_1

    .line 42
    const/4 v0, 0x3

    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mEntitlementConfigDBHelper:Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->isDeviceConfigAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    const/4 v0, 0x1

    .line 46
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->sendEmptyMessage(I)Z

    .line 47
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 51
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->retrieveAkaToken(I)V

    .line 64
    goto :goto_0

    .line 60
    :cond_1
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->retrieveDeviceConfiguration(I)V

    .line 61
    goto :goto_0

    .line 57
    :cond_2
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->retrieveDeviceConfiguration(I)V

    .line 58
    goto :goto_0

    .line 54
    :cond_3
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->retrieveDeviceConfiguration(I)V

    .line 55
    nop

    .line 68
    :goto_0
    return-void
.end method
