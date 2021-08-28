.class public final Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;
.source "VzwStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastNetworkType:I

.field private mDiscoveryModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

.field private mIsCapDiscoveryOption:Z

.field private mIsEABEnabled:Z

.field private mIsVLTEnabled:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsVLTEnabled:Z

    .line 54
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsEABEnabled:Z

    .line 55
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsCapDiscoveryOption:Z

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 61
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mDiscoveryModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    invoke-static {p1, v1, v0, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsVLTEnabled:Z

    .line 64
    const-string v1, "omadm/./3GPP_IMS/EAB_SETTING"

    invoke-static {p1, v1, v0, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsEABEnabled:Z

    .line 65
    const-string v1, "omadm/./3GPP_IMS/CAP_DISCOVERY"

    invoke-static {p1, v1, v0, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsCapDiscoveryOption:Z

    .line 66
    return-void
.end method

.method private isCapCacheExpired(Lcom/sec/ims/options/Capabilities;J)Z
    .locals 9
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "cacheInfoExpiry"    # J

    .line 177
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 182
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 183
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

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 185
    .local v0, "isCapCacheExpired":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->resetFeatures()V

    .line 188
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCapCacheExpired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " current "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " diff "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 188
    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    :cond_1
    return v0

    .line 194
    .end local v0    # "isCapCacheExpired":Z
    .end local v1    # "current":Ljava/util/Date;
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string v3, "isCapCacheExpired: Capability is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    return v0
.end method


# virtual methods
.method public changeServiceDescription()V
    .locals 3

    .line 411
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string v2, "changeServiceDescription: VoLTE Capabilities Discovery"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 412
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v0, v0

    const-string v2, "VoLTE Capabilities Discovery"

    invoke-static {v0, v1, v2}, Lcom/sec/ims/presence/ServiceTuple;->setServiceDescription(JLjava/lang/String;)V

    .line 413
    return-void
.end method

.method public checkCapDiscoveryOption()Z
    .locals 7

    .line 368
    const/4 v0, 0x1

    .line 369
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 370
    .local v1, "networkType":I
    invoke-static {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkEnumType(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v2

    .line 372
    .local v2, "netExtType":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    sget-object v3, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_LTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    if-ne v2, v3, :cond_0

    .line 373
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsCapDiscoveryOption:Z

    .line 374
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "return CapDiscoveryOption: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 376
    :cond_0
    return v0
.end method

.method public checkNeedParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 352
    if-eqz p1, :cond_1

    const-string v0, "*67"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*82"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 354
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string/jumbo v2, "parsing for special character"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 356
    :cond_1
    return-object p1
.end method

.method public getThrottledDelay(J)J
    .locals 2
    .param p1, "delay"    # J

    .line 418
    const-wide/16 v0, 0x3

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
    .locals 5
    .param p1, "errorReason"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .param p2, "isPublish"    # Z

    .line 386
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 388
    :cond_0
    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 390
    :cond_1
    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 392
    :cond_2
    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 394
    :cond_3
    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 395
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 396
    :cond_4
    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 397
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 398
    :cond_5
    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 399
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 400
    :cond_6
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->SERVER_INTERNAL_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 401
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RETRY_EXP_BACKOFF:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 402
    :cond_7
    new-array v1, v4, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->REQUEST_TIMEOUT_RETRY:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 403
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_FULL_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 405
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_DISABLE_MODE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0
.end method

.method public handleSendingFtMsrpMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2
    .param p1, "ftError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "currentRetryCount"    # I
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p6, "isSlmMessage"    # Z

    .line 82
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->getFtMsrpRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    .line 83
    .local v0, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p0, p1, p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->handleFtFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v1

    return-object v1

    .line 86
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1
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

    .line 71
    if-eqz p6, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    .line 75
    .local v0, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    :goto_0
    return-object v1
.end method

.method public isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 91
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->isCapabilityValidUriForUS(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    return v0
.end method

.method public isLocalConfigUsed()Z
    .locals 1

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public isPresenceReadyToRequest(ZZ)Z
    .locals 1
    .param p1, "ownInfoPublished"    # Z
    .param p2, "paralysed"    # Z

    .line 381
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubscribeThrottled(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;JZZ)Z
    .locals 9
    .param p1, "s"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .param p2, "millis"    # J
    .param p4, "isAvailFetch"    # Z
    .param p5, "isAlwaysForce"    # Z

    .line 292
    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 293
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string/jumbo v3, "refresh type is always force."

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    return v0

    .line 296
    :cond_0
    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-eq v1, v2, :cond_1

    .line 297
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_CONTACT_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v1, v2, :cond_2

    .line 298
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string v3, "isSubscribeThrottled: avail fetch after poll, not throttled"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    return v0

    .line 302
    :cond_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 303
    .local v1, "current":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 305
    .local v2, "offset":J
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSubscribeThrottled: interval from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", offset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " sourceThrottlePublish "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 305
    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    cmp-long v4, v2, p2

    if-gez v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public isTdelay(J)J
    .locals 12
    .param p1, "delay"    # J

    .line 229
    const-string/jumbo v0, "ro.ril.svlte1x"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 230
    .local v0, "isSVLTEDevice":Z
    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    const-wide/16 v3, 0x1

    cmp-long v5, p1, v3

    if-gez v5, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    .line 236
    .local v5, "networkType":I
    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->lastNetworkType:I

    invoke-static {v6}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkEnumType(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v6

    .line 237
    .local v6, "lastNetExtType":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    invoke-static {v5}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkEnumType(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v7

    .line 238
    .local v7, "netExtType":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SRLTE, current network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", last network type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    iput v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->lastNetworkType:I

    .line 241
    sget-object v8, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EHRPD:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    if-ne v6, v8, :cond_1

    sget-object v8, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_LTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    if-ne v7, v8, :cond_1

    .line 242
    sub-long v1, p1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    return-wide v1

    .line 244
    :cond_1
    return-wide v1

    .line 231
    .end local v5    # "networkType":I
    .end local v6    # "lastNetExtType":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    .end local v7    # "netExtType":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    :cond_2
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

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

    .line 232
    return-wide v1
.end method

.method public needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z
    .locals 2
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p2, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p3, "features"    # J
    .param p5, "cacheInfoExpiry"    # J

    .line 96
    if-eqz p2, :cond_0

    .line 97
    sget-object v0, Lcom/sec/ims/options/Capabilities$FetchType;->FETCH_TYPE_OTHER:Lcom/sec/ims/options/Capabilities$FetchType;

    invoke-virtual {p2, v0}, Lcom/sec/ims/options/Capabilities;->setFetchType(Lcom/sec/ims/options/Capabilities$FetchType;)V

    .line 107
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 108
    return v1

    .line 118
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-direct {p0, p2, p5, p6}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->isCapCacheExpired(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v0

    return v0

    .line 121
    :cond_2
    return v1
.end method

.method public needPoll(Lcom/sec/ims/options/Capabilities;J)Z
    .locals 1
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "capInfoExpiry"    # J

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z
    .locals 6
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "capInfoExpiry"    # J
    .param p5, "capCacheExpiry"    # J

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mDiscoveryModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->hasVideoOwnCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string v3, "needRefresh: no video, return false"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    return v1

    .line 132
    :cond_0
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v0, :cond_1

    .line 133
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string v3, "needRefresh: availability fetch disabled, no refresh"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    return v1

    .line 137
    :cond_1
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    .line 138
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string v3, "needRefresh: availability fetch forced, refresh"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    return v2

    .line 146
    :cond_2
    if-nez p1, :cond_4

    .line 147
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needRefresh: capability is null, type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 155
    :cond_4
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, p1, p5, p6}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->isCapCacheExpired(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 161
    :cond_5
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFetchType()Lcom/sec/ims/options/Capabilities$FetchType;

    move-result-object v0

    sget-object v3, Lcom/sec/ims/options/Capabilities$FetchType;->FETCH_TYPE_POLL:Lcom/sec/ims/options/Capabilities$FetchType;

    if-eq v0, v3, :cond_7

    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 167
    :cond_6
    return v1

    .line 162
    :cond_7
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string v3, "needRefresh: cache expired or fetch after poll, refresh"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    sget-object v0, Lcom/sec/ims/options/Capabilities$FetchType;->FETCH_TYPE_OTHER:Lcom/sec/ims/options/Capabilities$FetchType;

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->setFetchType(Lcom/sec/ims/options/Capabilities$FetchType;)V

    .line 164
    return v2

    .line 156
    :cond_8
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string v3, "needRefresh: fetch-blocked capabilities, no refresh"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    return v1
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z
    .locals 7
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "capInfoExpiry"    # J
    .param p5, "serviceAvailabilityInfoExpiry"    # J
    .param p7, "capCacheExpiry"    # J
    .param p9, "msgCapvalidity"    # J

    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z

    move-result v0

    return v0
.end method

.method public needUnpublish(I)Z
    .locals 8
    .param p1, "phoneId"    # I

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 255
    .local v0, "networkType":I
    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkEnumType(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v1

    .line 256
    .local v1, "netExtType":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    sget-object v2, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EHRPD:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 257
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needUnpublish: network type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 258
    return v3

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "volte"

    invoke-static {v2, v4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 262
    .local v2, "isVoLteEnabled":Z
    :goto_0
    if-nez v2, :cond_2

    .line 263
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needUnpublish: isVoLteEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    return v4

    .line 266
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mContext:Landroid/content/Context;

    const-string v6, "mmtel"

    invoke-static {v5, v6, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_3

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mContext:Landroid/content/Context;

    .line 267
    const-string v6, "mmtel-video"

    invoke-static {v5, v6, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 268
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string v6, "needUnpublish: mmtel/mmtel-video: off"

    invoke-static {v3, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    return v4

    .line 271
    :cond_3
    return v3
.end method

.method public needUnpublish(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)Z
    .locals 6
    .param p1, "oldInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "newInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 280
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 281
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string v3, "needUnpublish: oldInfo: empty"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    return v0

    .line 284
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v1

    .line 285
    .local v1, "voiceType":I
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

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

    .line 286
    const-string v2, "mmtel"

    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "mmtel-video"

    if-nez v3, :cond_2

    invoke-virtual {p1, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
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

    .line 286
    :goto_1
    return v0
.end method

.method public startServiceBasedOnOmaDmNodes(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 314
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string/jumbo v2, "startServiceBasedOnOmaDmNodes"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mDiscoveryModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startServiceBasedOnOmaDmNodes: mIsVLTEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsVLTEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsEABEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsEABEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsVLTEnabled:Z

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mDiscoveryModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mDiscoveryModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->changeParalysed(ZI)V

    .line 323
    :cond_0
    return-void
.end method

.method public updateCapDiscoveryOption()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    const-string v3, "omadm/./3GPP_IMS/CAP_DISCOVERY"

    invoke-static {v0, v3, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsCapDiscoveryOption:Z

    .line 362
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update CapDiscoveryOption: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsCapDiscoveryOption:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    return-void
.end method

.method public updateFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J
    .locals 5
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "features"    # J
    .param p4, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 216
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

    .line 220
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

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

    .line 223
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    or-long/2addr v0, p2

    return-wide v0

    .line 217
    :cond_1
    :goto_0
    return-wide p2
.end method

.method public updateOmaDmNodes(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 328
    const/4 v0, 0x0

    .line 330
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    invoke-static {v1, v3, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 331
    .local v1, "newValue":Z
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsVLTEnabled:Z

    if-eq v3, v1, :cond_0

    .line 332
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsVLTEnabled:Z

    .line 333
    const/4 v0, 0x1

    .line 336
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mContext:Landroid/content/Context;

    const-string v4, "omadm/./3GPP_IMS/EAB_SETTING"

    invoke-static {v3, v4, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 337
    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsEABEnabled:Z

    if-eq v2, v1, :cond_1

    .line 338
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsEABEnabled:Z

    .line 339
    const/4 v0, 0x1

    .line 342
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateOmaDmNodes: mIsVLTEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsVLTEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mIsEABEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->mIsEABEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " modified = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;->startServiceBasedOnOmaDmNodes(I)V

    .line 347
    :cond_2
    return-void
.end method
