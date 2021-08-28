.class public final Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;
.source "VzwUPStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastNetworkType:I

.field private mDiscoveryModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

.field private final mForceRefreshRemoteCapa:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCapDiscoveryOption:Z

.field private mIsEABEnabled:Z

.field private mIsLocalConfigUsed:Z

.field private mIsVLTEnabled:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mForceRefreshRemoteCapa:Ljava/util/HashSet;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsVLTEnabled:Z

    .line 82
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsEABEnabled:Z

    .line 83
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsCapDiscoveryOption:Z

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 91
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mDiscoveryModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 93
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    invoke-static {p1, v1, v0, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsVLTEnabled:Z

    .line 94
    const-string v1, "omadm/./3GPP_IMS/EAB_SETTING"

    invoke-static {p1, v1, v0, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsEABEnabled:Z

    .line 95
    const-string v1, "omadm/./3GPP_IMS/CAP_DISCOVERY"

    invoke-static {p1, v1, v0, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsCapDiscoveryOption:Z

    .line 96
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->init()V

    .line 97
    return-void
.end method

.method private init()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mForceRefreshRemoteCapa:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method private isCapCacheExpired(Lcom/sec/ims/options/Capabilities;J)Z
    .locals 9
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "cacheInfoExpiry"    # J

    .line 348
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 349
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v3, "isCapCacheExpired: Capability is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    return v0

    .line 353
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 354
    .local v1, "current":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 356
    .local v0, "isCapCacheExpired":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->resetFeatures()V

    .line 358
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCapCacheExpired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " current "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " diff "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 362
    :cond_2
    return v0
.end method


# virtual methods
.method public changeServiceDescription()V
    .locals 3

    .line 546
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v2, "changeServiceDescription: VoLTE Capabilities Discovery"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 547
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v0, v0

    const-string v2, "VoLTE Capabilities Discovery"

    invoke-static {v0, v1, v2}, Lcom/sec/ims/presence/ServiceTuple;->setServiceDescription(JLjava/lang/String;)V

    .line 548
    return-void
.end method

.method public checkCapDiscoveryOption()Z
    .locals 6

    .line 504
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 505
    .local v0, "networkType":I
    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkEnumType(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v1

    .line 507
    .local v1, "netExtType":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    sget-object v2, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_LTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    if-ne v1, v2, :cond_0

    .line 508
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "return CapDiscoveryOption: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsCapDiscoveryOption:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 509
    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsCapDiscoveryOption:Z

    return v2

    .line 511
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public checkCapability(Ljava/util/Set;J)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 11
    .param p2, "features"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J)",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;"
        }
    .end annotation

    .line 207
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 208
    .local v0, "capDiscModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    .line 209
    .local v1, "phoneId":I
    if-nez v0, :cond_0

    .line 210
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v4, "checkCapability: capDiscModule is null"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v2

    .line 214
    :cond_0
    const/4 v2, 0x0

    .line 215
    .local v2, "isCapAlwaysOn":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v3

    .line 216
    .local v3, "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v3, :cond_1

    .line 217
    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isImCapAlwaysOn()Z

    move-result v2

    .line 219
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCapability: isCapAlwaysOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    if-eqz v2, :cond_7

    .line 222
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    .line 223
    .local v5, "uri":Lcom/sec/ims/util/ImsUri;
    sget-object v6, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, v5, v6, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v6

    .line 226
    .local v6, "caps":Lcom/sec/ims/options/Capabilities;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v7

    sget v9, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 227
    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v7, v8, :cond_2

    .line 228
    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v4, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v4

    .line 229
    :cond_2
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v6, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->hasOneOfFeatures(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 238
    .end local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_3
    goto :goto_0

    .line 230
    .restart local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_4
    :goto_1
    invoke-virtual {p0, v5, v6, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->logNoCapability(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;J)V

    .line 231
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->isNonRcs(Lcom/sec/ims/options/Capabilities;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 232
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v8, "checkCapability: Non-RCS user"

    invoke-static {v4, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v4, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v4

    .line 235
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v4

    return-object v4

    .line 238
    .end local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_6
    goto :goto_4

    .line 240
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    .line 241
    .restart local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    sget-object v6, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, v5, v6, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v6

    .line 244
    .restart local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0, v6, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->hasOneOfFeatures(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_3

    .line 249
    .end local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_8
    goto :goto_2

    .line 245
    .restart local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_9
    :goto_3
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v8, "isCapAlwaysOn is off"

    invoke-static {v4, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    invoke-virtual {p0, v5, v6, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->logNoCapability(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;J)V

    .line 247
    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v4, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v4

    .line 252
    .end local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_a
    :goto_4
    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v4
.end method

.method protected checkFtHttpCapability(Ljava/util/Set;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)Z"
        }
    .end annotation

    .line 177
    .local p1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 178
    .local v0, "capDiscModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    .line 179
    .local v1, "phoneId":I
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 180
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v5, "checkFtHttpCapability: capDiscModule is null"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    return v2

    .line 184
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    .line 185
    .local v4, "uri":Lcom/sec/ims/util/ImsUri;
    sget-object v5, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, v4, v5, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    .line 187
    .local v5, "capx":Lcom/sec/ims/options/Capabilities;
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkFtHttpCapability, capx: = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    if-eqz v5, :cond_2

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v5, v6}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 189
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 192
    .end local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v5    # "capx":Lcom/sec/ims/options/Capabilities;
    :cond_1
    goto :goto_0

    .line 190
    .restart local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v5    # "capx":Lcom/sec/ims/options/Capabilities;
    :cond_2
    :goto_1
    return v2

    .line 193
    .end local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v5    # "capx":Lcom/sec/ims/options/Capabilities;
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public checkNeedParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 495
    if-eqz p1, :cond_1

    const-string v0, "*67"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*82"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 497
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string/jumbo v2, "parsing for special character"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 499
    :cond_1
    return-object p1
.end method

.method public forceRefreshCapability(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 10
    .param p2, "remoteOnline"    # Z
    .param p3, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ")V"
        }
    .end annotation

    .line 153
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v8

    .line 154
    .local v8, "capDiscModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    iget v9, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    .line 155
    .local v9, "phoneId":I
    if-nez v8, :cond_0

    .line 156
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v2, "forceRefreshCapability: capDiscModule is null"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceRefreshCapability"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    .local v1, "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    if-eqz p2, :cond_2

    .line 164
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    or-int/2addr v0, v3

    int-to-long v3, v0

    move-object v0, v8

    move v5, v9

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;

    .line 166
    return-void

    .line 169
    :cond_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mForceRefreshRemoteCapa:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    sget-object v4, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    or-int/2addr v0, v2

    int-to-long v5, v0

    move-object v2, v8

    move-object v3, v1

    move v7, v9

    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;

    .line 173
    :cond_3
    return-void
.end method

.method public getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 3
    .param p1, "currentRetryCount"    # I
    .param p2, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 141
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 142
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRetryStrategy MSRP_SESSION_DOES_NOT_EXIST; currentRetryCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER_SESSION:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 144
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 145
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRetryStrategy FORBIDDEN_NO_WARNING_HEADER; currentRetryCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER_REGI:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 148
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0
.end method

.method public getThrottledDelay(J)J
    .locals 2
    .param p1, "delay"    # J

    .line 595
    const-wide/16 v0, 0x3

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 3
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 559
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 563
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->isSlmEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    :goto_0
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
    .locals 5
    .param p1, "errorReason"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .param p2, "isPublish"    # Z

    .line 569
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 571
    :cond_0
    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 573
    :cond_1
    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 574
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 575
    :cond_2
    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 576
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 577
    :cond_3
    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 578
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 579
    :cond_4
    const/4 v1, 0x2

    new-array v2, v1, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->REQUEST_TIMEOUT_RETRY:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v4, v2, v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v4, v2, v0

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 580
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_FULL_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 581
    :cond_5
    new-array v2, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v4, v2, v3

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 582
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 583
    :cond_6
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->SERVER_INTERNAL_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v4, v2, v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v4, v2, v0

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v4, v2, v1

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 584
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RETRY_EXP_BACKOFF:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 585
    :cond_7
    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 586
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 588
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_DISABLE_MODE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0
.end method

.method public handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 6
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "currentRetryCount"    # I
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p6, "isSlmMessage"    # Z
    .param p7, "isFtHttp"    # Z

    .line 120
    invoke-static {p5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    if-eqz p6, :cond_0

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    .line 125
    .local v0, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v0, v1, :cond_2

    .line 126
    invoke-virtual {p0, p1, p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v1

    .line 127
    .local v1, "response":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    if-eqz p7, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v2, v3, :cond_1

    .line 128
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    move-object v1, v2

    .line 130
    :cond_1
    return-object v1

    .line 132
    .end local v1    # "response":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    :cond_2
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1

    .line 136
    .end local v0    # "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    :cond_3
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 199
    invoke-static {p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->isCapabilityValidUriForUS(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    return v0
.end method

.method public isCustomizedFeature(J)Z
    .locals 3
    .param p1, "featureCapability"    # J

    .line 105
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 107
    .local v0, "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 109
    .end local v0    # "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    :cond_1
    return v1
.end method

.method public isLocalConfigUsed()Z
    .locals 4

    .line 522
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLocalConfigUsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsLocalConfigUsed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 523
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsLocalConfigUsed:Z

    return v0
.end method

.method public isNonRcs(Lcom/sec/ims/options/Capabilities;)Z
    .locals 5
    .param p1, "caps"    # Lcom/sec/ims/options/Capabilities;

    .line 256
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 257
    return v0

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public isPresenceReadyToRequest(ZZ)Z
    .locals 1
    .param p1, "ownInfoPublished"    # Z
    .param p2, "paralysed"    # Z

    .line 541
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoteConfigNeeded(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(Landroid/content/Context;II)I

    move-result v0

    .line 536
    .local v0, "autoconfigSource":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isRevocationAvailableMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 1
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isSubscribeThrottled(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;JZZ)Z
    .locals 10
    .param p1, "s"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .param p2, "millis"    # J
    .param p4, "isAvailFetch"    # Z
    .param p5, "isAlwaysForce"    # Z

    .line 435
    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 436
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string/jumbo v3, "refresh type is always force."

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 437
    return v0

    .line 440
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v1

    .line 441
    .local v1, "requestType":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    if-eqz p4, :cond_2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_CONTACT_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v1, v2, :cond_2

    .line 443
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v4, "isSubscribeThrottled: avail fetch after poll, not throttled"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 444
    return v0

    .line 447
    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 448
    .local v2, "current":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 450
    .local v3, "offset":J
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSubscribeThrottled: interval from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", offset "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " sourceThrottlePublish "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 450
    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 454
    cmp-long v5, v3, p2

    if-gez v5, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public isTdelay(J)J
    .locals 12
    .param p1, "delay"    # J

    .line 372
    const-string/jumbo v0, "ro.ril.svlte1x"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 373
    .local v0, "isSVLTEDevice":Z
    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    const-wide/16 v3, 0x1

    cmp-long v5, p1, v3

    if-gez v5, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    .line 379
    .local v5, "networkType":I
    invoke-static {v5}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkEnumType(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v6

    .line 380
    .local v6, "netExtType":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    iget v7, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->lastNetworkType:I

    invoke-static {v7}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkEnumType(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v7

    .line 381
    .local v7, "lastNetExtType":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SRLTE, current network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", last network type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 382
    iput v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->lastNetworkType:I

    .line 384
    sget-object v8, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EHRPD:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    if-ne v7, v8, :cond_1

    sget-object v8, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_LTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    if-ne v6, v8, :cond_1

    .line 385
    sub-long v1, p1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    return-wide v1

    .line 387
    :cond_1
    return-wide v1

    .line 374
    .end local v5    # "networkType":I
    .end local v6    # "netExtType":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    .end local v7    # "lastNetExtType":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    :cond_2
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SVLTE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", delay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    return-wide v1
.end method

.method public needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z
    .locals 2
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p2, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p3, "features"    # J
    .param p5, "cacheInfoExpiry"    # J

    .line 266
    if-eqz p2, :cond_0

    .line 267
    sget-object v0, Lcom/sec/ims/options/Capabilities$FetchType;->FETCH_TYPE_OTHER:Lcom/sec/ims/options/Capabilities$FetchType;

    invoke-virtual {p2, v0}, Lcom/sec/ims/options/Capabilities;->setFetchType(Lcom/sec/ims/options/Capabilities$FetchType;)V

    .line 269
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 270
    return v1

    .line 272
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    invoke-direct {p0, p2, p5, p6}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->isCapCacheExpired(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v0

    return v0

    .line 275
    :cond_2
    return v1
.end method

.method public needPoll(Lcom/sec/ims/options/Capabilities;J)Z
    .locals 1
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "capInfoExpiry"    # J

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z
    .locals 6
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "capInfoExpiry"    # J
    .param p5, "capCacheExpiry"    # J

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mDiscoveryModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->hasVideoOwnCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v3, "needRefresh: no video, return false"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    return v1

    .line 284
    :cond_0
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v0, :cond_1

    .line 285
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v3, "needRefresh: availability fetch disabled, no refresh"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    return v1

    .line 287
    :cond_1
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    .line 288
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v3, "needRefresh: availability fetch forced, refresh"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    return v2

    .line 291
    :cond_2
    if-nez p1, :cond_4

    .line 292
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needRefresh: capability is null, type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 295
    :cond_4
    invoke-direct {p0, p1, p5, p6}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->isCapCacheExpired(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 299
    :cond_5
    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFetchType()Lcom/sec/ims/options/Capabilities$FetchType;

    move-result-object v0

    sget-object v3, Lcom/sec/ims/options/Capabilities$FetchType;->FETCH_TYPE_POLL:Lcom/sec/ims/options/Capabilities$FetchType;

    if-ne v0, v3, :cond_6

    goto :goto_0

    .line 304
    :cond_6
    return v1

    .line 300
    :cond_7
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needRefresh: cache expired or fetch after poll("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFetchType()Lcom/sec/ims/options/Capabilities$FetchType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "), refresh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    sget-object v0, Lcom/sec/ims/options/Capabilities$FetchType;->FETCH_TYPE_OTHER:Lcom/sec/ims/options/Capabilities$FetchType;

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->setFetchType(Lcom/sec/ims/options/Capabilities$FetchType;)V

    .line 302
    return v2

    .line 296
    :cond_8
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v3, "needRefresh: fetch-blocked capabilities, no refresh"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    return v1
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z
    .locals 14
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "capInfoExpiry"    # J
    .param p5, "serviceAvailabilityInfoExpiry"    # J
    .param p7, "capCacheExpiry"    # J
    .param p9, "msgCapvalidity"    # J

    .line 310
    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, v7, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needRefresh: mIsLocalConfigUsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsLocalConfigUsed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    iget-boolean v0, v7, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsLocalConfigUsed:Z

    if-eqz v0, :cond_0

    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z

    move-result v0

    return v0

    .line 314
    :cond_0
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v1, 0x0

    if-ne v9, v0, :cond_1

    .line 315
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v2, v7, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v3, "needRefresh: availability fetch disabled, no refresh"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    return v1

    .line 317
    :cond_1
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v2, 0x1

    if-ne v9, v0, :cond_2

    .line 318
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, v7, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v3, "needRefresh: availability fetch forced, refresh"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    return v2

    .line 321
    :cond_2
    if-nez v8, :cond_4

    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    if-eq v9, v0, :cond_3

    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne v9, v0, :cond_4

    .line 323
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, v7, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v3, "needRefresh: capability is null, refresh only for the refreshType"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    return v2

    .line 325
    :cond_4
    if-nez v8, :cond_5

    .line 326
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v2, v7, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v3, "needRefresh: capability is null, no refresh"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    return v1

    .line 329
    :cond_5
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne v9, v0, :cond_7

    move-wide/from16 v3, p3

    invoke-virtual {p1, v3, v4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v0

    if-nez v0, :cond_6

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 330
    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 331
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, v7, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v5, "needRefresh: capInfo is expired or feature isn\'t updated, refresh"

    invoke-static {v0, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 332
    return v2

    .line 329
    :cond_7
    move-wide/from16 v3, p3

    .line 334
    :cond_8
    move-wide/from16 v5, p7

    invoke-direct {p0, p1, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->isCapCacheExpired(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v0

    if-nez v0, :cond_d

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-wide/from16 v10, p5

    goto :goto_1

    .line 338
    :cond_9
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    if-eq v9, v0, :cond_a

    move-wide/from16 v10, p5

    invoke-virtual {p1, v10, v11}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_a
    move-wide/from16 v10, p5

    .line 339
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFetchType()Lcom/sec/ims/options/Capabilities$FetchType;

    move-result-object v0

    sget-object v12, Lcom/sec/ims/options/Capabilities$FetchType;->FETCH_TYPE_POLL:Lcom/sec/ims/options/Capabilities$FetchType;

    if-ne v0, v12, :cond_c

    .line 340
    :cond_b
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, v7, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "needRefresh: cache expired or fetch after poll("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFetchType()Lcom/sec/ims/options/Capabilities$FetchType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "), refresh"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v1, v12}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    sget-object v0, Lcom/sec/ims/options/Capabilities$FetchType;->FETCH_TYPE_OTHER:Lcom/sec/ims/options/Capabilities$FetchType;

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->setFetchType(Lcom/sec/ims/options/Capabilities$FetchType;)V

    .line 342
    return v2

    .line 344
    :cond_c
    return v1

    .line 334
    :cond_d
    move-wide/from16 v10, p5

    .line 335
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v2, v7, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v12, "needRefresh: fetch-blocked capabilities, no refresh"

    invoke-static {v0, v2, v12}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 336
    return v1
.end method

.method public needStopAutoRejoin(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 3
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 552
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RESTART_GC_CLOSED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_ANONYMITY_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_DESTINATIONS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    return v0
.end method

.method public needUnpublish(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkEnumType(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v0

    .line 415
    .local v0, "netExtType":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EHRPD:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 416
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needUnpublish: network type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    return v2

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "volte"

    invoke-static {v1, v3, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 421
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v4, "needUnpublish: isVoLteEnabled: off"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 422
    return v3

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mContext:Landroid/content/Context;

    const-string v4, "mmtel"

    invoke-static {v1, v4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mContext:Landroid/content/Context;

    .line 426
    const-string v4, "mmtel-video"

    invoke-static {v1, v4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 427
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v4, "needUnpublish: mmtel/mmtel-video: off"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 428
    return v3

    .line 430
    :cond_2
    return v2
.end method

.method public needUnpublish(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)Z
    .locals 6
    .param p1, "oldInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "newInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 402
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 403
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v3, "needUnpublish: oldInfo: empty"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    return v0

    .line 406
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v1

    .line 407
    .local v1, "voiceType":I
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needUnpublish: getVoiceTechType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v5, "VOLTE"

    goto :goto_0

    :cond_1
    const-string v5, "CS"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 408
    const-string v2, "mmtel"

    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "mmtel-video"

    if-nez v3, :cond_2

    invoke-virtual {p1, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    :cond_2
    invoke-virtual {p2, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-ne v1, v4, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    nop

    .line 408
    :goto_1
    return v0
.end method

.method public startServiceBasedOnOmaDmNodes(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 483
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string/jumbo v2, "startServiceBasedOnOmaDmNodes"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mDiscoveryModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    .line 485
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startServiceBasedOnOmaDmNodes: mIsVLTEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsVLTEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsEABEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsEABEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsVLTEnabled:Z

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mDiscoveryModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 488
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mDiscoveryModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->changeParalysed(ZI)V

    .line 491
    :cond_0
    return-void
.end method

.method public updateCapDiscoveryOption()V
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    const-string v3, "omadm/./3GPP_IMS/CAP_DISCOVERY"

    invoke-static {v0, v3, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsCapDiscoveryOption:Z

    .line 517
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update CapDiscoveryOption: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsCapDiscoveryOption:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 518
    return-void
.end method

.method public updateFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J
    .locals 5
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "features"    # J
    .param p4, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 392
    if-eqz p1, :cond_1

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFeatures: updated features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    or-long/2addr v3, p2

    invoke-static {v3, v4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    or-long/2addr v0, p2

    return-wide v0

    .line 393
    :cond_1
    :goto_0
    return-wide p2
.end method

.method public updateLocalConfigUsedState(Z)V
    .locals 4
    .param p1, "useLocalConfig"    # Z

    .line 528
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocalConfigUsedState: change mIsLocalConfigUsed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsLocalConfigUsed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") to useLocalConfig("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 530
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsLocalConfigUsed:Z

    .line 531
    return-void
.end method

.method public updateOmaDmNodes(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 459
    const/4 v0, 0x0

    .line 462
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "omadm/./3GPP_IMS/EAB_SETTING"

    invoke-static {v1, v3, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 463
    .local v1, "newValue":Z
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsEABEnabled:Z

    if-eq v3, v1, :cond_0

    .line 464
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsEABEnabled:Z

    .line 465
    const/4 v0, 0x1

    .line 468
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mContext:Landroid/content/Context;

    const-string v4, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    invoke-static {v3, v4, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 469
    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsVLTEnabled:Z

    if-eq v2, v1, :cond_1

    .line 470
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsVLTEnabled:Z

    .line 471
    const/4 v0, 0x1

    .line 474
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateOmaDmNodes: mIsVLTEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsVLTEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mIsEABEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->mIsEABEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " modified = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    if-eqz v0, :cond_2

    .line 477
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;->startServiceBasedOnOmaDmNodes(I)V

    .line 479
    :cond_2
    return-void
.end method
