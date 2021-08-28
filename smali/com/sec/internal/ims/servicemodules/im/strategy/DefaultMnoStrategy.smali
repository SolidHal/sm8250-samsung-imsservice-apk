.class public abstract Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;
.super Ljava/lang/Object;
.source "DefaultMnoStrategy.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;


# static fields
.field protected static final MAX_RETRY_COUNT_AFTER_REGI:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mPhoneId:I

.field protected mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

.field protected mRcsPolicyType:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mRcsPolicyType:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 71
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mContext:Landroid/content/Context;

    .line 72
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    .line 73
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/settings/RcsPolicySettings;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

    .line 74
    return-void
.end method


# virtual methods
.method public boolSetting(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->readBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public calSubscribeDelayTime(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)J
    .locals 2
    .param p1, "s"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 220
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public calThrottledPublishRetryDelayTime(JJ)J
    .locals 2
    .param p1, "lastPublishTimestamp"    # J
    .param p3, "sourceThrottlePublish"    # J

    .line 335
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public changeServiceDescription()V
    .locals 0

    .line 332
    return-void
.end method

.method public checkCapDiscoveryOption()Z
    .locals 1

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public abstract checkCapability(Ljava/util/Set;J)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J)",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;"
        }
    .end annotation
.end method

.method public abstract checkCapability(Ljava/util/Set;JLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Z)",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;"
        }
    .end annotation
.end method

.method public checkChatbotMessagingTech(Lcom/sec/internal/ims/servicemodules/im/ImConfig;ZLjava/util/Set;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;
    .locals 1
    .param p1, "config"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .param p2, "isGroupChat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            "Z",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;"
        }
    .end annotation

    .line 541
    .local p3, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    return-object v0
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

    .line 356
    .local p1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 357
    .local v0, "capDiscModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    .line 358
    .local v1, "phoneId":I
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 359
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v5, "checkFtHttpCapability: capDiscModule is null"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 360
    return v2

    .line 363
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    .line 364
    .local v4, "uri":Lcom/sec/ims/util/ImsUri;
    sget-object v5, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, v4, v5, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    .line 365
    .local v5, "capx":Lcom/sec/ims/options/Capabilities;
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkFtHttpCapability, capx: = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    if-eqz v5, :cond_3

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v5, v6}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 370
    .end local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v5    # "capx":Lcom/sec/ims/options/Capabilities;
    :cond_2
    goto :goto_0

    .line 367
    .restart local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v5    # "capx":Lcom/sec/ims/options/Capabilities;
    :cond_3
    :goto_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v7, "No FT HTTP capability"

    invoke-static {v3, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    return v2

    .line 371
    .end local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v5    # "capx":Lcom/sec/ims/options/Capabilities;
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method public final checkImsiBasedRegi(Lcom/sec/ims/ImsRegistration;)Z
    .locals 7
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 488
    const-string v0, "check_imsibased_regi"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 496
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 497
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    .line 498
    return v1

    .line 501
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegisteredImpu()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 503
    .local v3, "impu":Lcom/sec/ims/util/ImsUri;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkImsiBasedRegi: impu "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 506
    :cond_2
    :goto_0
    return v1

    .line 510
    .end local v0    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "impu":Lcom/sec/ims/util/ImsUri;
    :cond_3
    return v1
.end method

.method public checkMainSwitchOff(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public checkNeedParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 294
    return-object p1
.end method

.method public checkSlmFileType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .line 546
    const/4 v0, 0x1

    return v0
.end method

.method protected checkUserAvailableOffline(Ljava/util/Set;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)Z"
        }
    .end annotation

    .line 435
    .local p1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 436
    .local v0, "capDiscModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    .line 437
    .local v1, "phoneId":I
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 438
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v5, "checkUserAvailableOffline: capDiscModule is null"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 439
    return v2

    .line 442
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    .line 443
    .local v4, "uri":Lcom/sec/ims/util/ImsUri;
    sget-object v5, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, v4, v5, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    .line 444
    .local v5, "capx":Lcom/sec/ims/options/Capabilities;
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkUserAvailableOffline, capx: = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 445
    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v2

    .line 446
    .local v7, "capIsNotNull":Z
    :goto_2
    if-eqz v7, :cond_3

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {v5, v8}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_3

    :cond_3
    move v8, v2

    .line 447
    .local v8, "featureNonRcs":Z
    :goto_3
    if-eqz v7, :cond_4

    sget v9, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    invoke-virtual {v5, v9}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v6

    goto :goto_4

    :cond_4
    move v9, v2

    .line 448
    .local v9, "featureIsNotUpdated":Z
    :goto_4
    if-eqz v7, :cond_5

    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v10

    if-nez v10, :cond_5

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    .line 449
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v10, "USER_AVAILABLE_OFFLINE..!!"

    invoke-static {v2, v3, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 450
    return v6

    .line 452
    .end local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v5    # "capx":Lcom/sec/ims/options/Capabilities;
    .end local v7    # "capIsNotNull":Z
    .end local v8    # "featureNonRcs":Z
    .end local v9    # "featureIsNotUpdated":Z
    :cond_5
    goto :goto_0

    .line 453
    :cond_6
    return v2
.end method

.method public convertToImDirection(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 1
    .param p1, "strDirection"    # Ljava/lang/String;

    .line 345
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object v0
.end method

.method public abstract dropUnsupportedCharacter(Ljava/lang/String;)Z
.end method

.method public forceRefreshCapability(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 0
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

    .line 216
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method protected getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .locals 3

    .line 108
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v2, "getCapDiscModule: getInstance is null"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    return-object v0
.end method

.method public getErrorReasonForStrategyResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    .line 463
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq v0, v1, :cond_0

    .line 464
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY_CFS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v0, v1, :cond_1

    .line 465
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 467
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFtHttpCsUri(Lcom/sec/internal/ims/servicemodules/im/ImConfig;Ljava/util/Set;ZZ)Landroid/net/Uri;
    .locals 1
    .param p1, "imConfig"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .param p3, "isExtraFt"    # Z
    .param p4, "isGroupChat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;ZZ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 426
    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFtHttpRetryInterval(II)I
    .locals 0
    .param p1, "interval"    # I
    .param p2, "retryCount"    # I

    .line 477
    return p1
.end method

.method public getFtHttpSessionRetryTimer(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;)I
    .locals 1
    .param p1, "retryCount"    # I
    .param p2, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 381
    const/4 v0, -0x1

    return v0
.end method

.method public getFtHttpUserAgent(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;
    .locals 1
    .param p1, "imConfig"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 421
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFtMsrpRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 1
    .param p1, "currentRetryCount"    # I
    .param p2, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;

    .line 197
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0
.end method

.method protected getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    .locals 3

    .line 116
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v2, "getImModule: getInstance is null"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    return-object v0
.end method

.method public getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Z)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 1
    .param p1, "requestUri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "pAssertedId"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "sender"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "receiver"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "isGroupchat"    # Z

    .line 386
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    return-object v0
.end method

.method public getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "uriGenerator"    # Lcom/sec/internal/ims/util/UriGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/util/UriGenerator;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 458
    .local p2, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNextFileTransferAutoResumeTimer(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)I
    .locals 1
    .param p1, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p2, "retryCount"    # I

    .line 299
    const/4 v0, -0x1

    return v0
.end method

.method public getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mRcsPolicyType:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0
.end method

.method public getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 3
    .param p1, "currentRetryCount"    # I
    .param p2, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 179
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 180
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRetryStrategy FORBIDDEN_NO_WARNING_HEADER; currentRetryCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER_REGI:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 183
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0
.end method

.method public getSessionStopReason(Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;
    .locals 1
    .param p1, "isGroupChat"    # Z

    .line 482
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->CLOSE_1_TO_1_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    :goto_0
    return-object v0
.end method

.method protected getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2

    .line 154
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->isSlmEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    :goto_0
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public abstract getThrottledDelay(J)J
.end method

.method public getUploadedFileFallbackSLMTech()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0
.end method

.method public getftResumableOption(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;ZLcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 1
    .param p1, "cancelreason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "isGroup"    # Z
    .param p3, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p4, "transferMech"    # I

    .line 207
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->LOW_MEMORY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0

    .line 208
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0
.end method

.method public abstract handleAttachFileFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.end method

.method public abstract handleFtFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.end method

.method public handleFtHttpDownloadError(Lcom/sec/internal/helper/HttpRequest;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;
    .locals 5
    .param p1, "httpReq"    # Lcom/sec/internal/helper/HttpRequest;

    .line 396
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 399
    .local v0, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_0

    .line 408
    const/4 v1, 0x3

    .local v1, "delay":I
    goto :goto_0

    .line 401
    .end local v1    # "delay":I
    :cond_0
    const-string v1, "Retry-After"

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/RetryTimerUtil;->getRetryAfter(Ljava/lang/String;)I

    move-result v1

    .line 402
    .restart local v1    # "delay":I
    goto :goto_0

    .line 404
    .end local v1    # "delay":I
    :cond_1
    const/4 v1, 0x3

    .line 405
    .restart local v1    # "delay":I
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_FT_HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->handleFtHttpRequestFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    .line 406
    nop

    .line 411
    :goto_0
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;I)V

    return-object v2
.end method

.method public handleFtHttpRequestFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2
    .param p1, "cancelReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "isGroup"    # Z

    .line 391
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public abstract handleFtMsrpInterruption(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.end method

.method public abstract handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.end method

.method public abstract handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
.end method

.method public handleSendingFtMsrpMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2
    .param p1, "ftError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "currentRetryCount"    # I
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p6, "isSlmMessage"    # Z

    .line 174
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public abstract handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.end method

.method public handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 9
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "currentRetryCount"    # I
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p6, "isSlmMessage"    # Z
    .param p7, "hasChatbotUri"    # Z
    .param p8, "isFtHttp"    # Z

    .line 160
    move-object v8, p1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    .line 163
    .local v0, "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    if-eqz p7, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq v1, v2, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v8, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v8, v1, :cond_1

    .line 166
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1

    .line 168
    :cond_1
    return-object v0
.end method

.method public handleSessionFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;
    .locals 1
    .param p1, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 644
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    return-object v0
.end method

.method public abstract handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.end method

.method hasOneOfFeatures(Lcom/sec/ims/options/Capabilities;J)Z
    .locals 6
    .param p1, "cap"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "features"    # J

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "ret":Z
    if-eqz p1, :cond_2

    .line 126
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 127
    if-nez v0, :cond_2

    .line 128
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasOneOfFeatures:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " getFeature()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", features="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", ret=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    :cond_2
    return v0
.end method

.method hasOneOfFeaturesAvailable(Lcom/sec/ims/options/Capabilities;J)Z
    .locals 6
    .param p1, "cap"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "features"    # J

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "ret":Z
    if-eqz p1, :cond_3

    .line 139
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v1

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v1, v1

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 140
    if-nez v0, :cond_3

    .line 141
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasOneOfFeaturesAvailable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, ""

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " getFeature()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", features="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", ret=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    :cond_3
    return v0
.end method

.method public intSetting(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->readInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isBMode(Z)Z
    .locals 1
    .param p1, "checkSettingOnly"    # Z

    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isCloseSessionNeeded(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
.end method

.method public abstract isCustomizedFeature(J)Z
.end method

.method public abstract isDeleteSessionSupported(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;I)Z
.end method

.method public isDisplayBotError()Z
    .locals 1

    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public isDisplayWarnText()Z
    .locals 1

    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isFTHTTPAutoResumeAndCancelPerConnectionChange()Z
.end method

.method public isFTViaHttp(Lcom/sec/internal/ims/servicemodules/im/ImConfig;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z
    .locals 2
    .param p1, "imConfig"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .param p3, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            ")Z"
        }
    .end annotation

    .line 350
    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtDefaultMech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    move-result-object v0

    .line 351
    .local v0, "ftMech":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->isFtHttpRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->checkFtHttpCapability(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 351
    :goto_0
    return v1
.end method

.method public abstract isFirstMsgInvite(Z)Z
.end method

.method public isFtHttpOnlySupported(Z)Z
    .locals 1
    .param p1, "isGroup"    # Z

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method protected isFtHttpRegistered()Z
    .locals 3

    .line 375
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 376
    .local v0, "imModule":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v2, "ft_http"

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->isServiceRegistered(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isHTTPUsedForEmptyFtHttpPOST()Z
    .locals 1

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public isLocalConfigUsed()Z
    .locals 1

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isNeedToReportToRegiGvn(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
.end method

.method public isPresenceReadyToRequest(ZZ)Z
    .locals 1
    .param p1, "ownInfoPublished"    # Z
    .param p2, "paralysed"    # Z

    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public isRemoteConfigNeeded(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isResendFTResume(Z)Z
.end method

.method public abstract isRevocationAvailableMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
.end method

.method protected isSlmEnabled()Z
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 150
    .local v0, "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string/jumbo v2, "slm"

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->isServiceRegistered(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSubscribeThrottled(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;JZZ)Z
    .locals 9
    .param p1, "s"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .param p2, "millis"    # J
    .param p4, "isAvailFetch"    # Z
    .param p5, "isAlwaysForce"    # Z

    .line 225
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 226
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v3, "isSubscribeThrottled: retried subscription"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    return v1

    .line 230
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 231
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 233
    .local v2, "offset":J
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSubscribeThrottled: interval from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

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

    .line 233
    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    cmp-long v4, v2, p2

    if-gez v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isTdelay(J)J
    .locals 2
    .param p1, "delay"    # J

    .line 271
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final isWarnSizeFile(Landroid/net/Network;JJZ)Z
    .locals 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "fileSize"    # J
    .param p4, "warnSizeFileTr"    # J
    .param p6, "isWifiConnected"    # Z

    .line 515
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    cmp-long v0, p2, p4

    if-lez v0, :cond_2

    .line 516
    const-string v0, "ignore_wifi_warnsize"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 517
    const-string v0, "ft_internet_pdn"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWarnSizeFile: isWifiConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 519
    xor-int/lit8 v0, p6, 0x1

    return v0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 522
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 523
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 524
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v5, "isWarnSizeFile: Wifi connected"

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 525
    return v1

    .line 529
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    return v2

    .line 531
    :cond_2
    return v1
.end method

.method public loadRcsSettings(Z)Z
    .locals 1
    .param p1, "forceReload"    # Z

    .line 639
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->load(Z)Z

    move-result v0

    return v0
.end method

.method public abstract needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z
.end method

.method public needPoll(Lcom/sec/ims/options/Capabilities;J)Z
    .locals 7
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "capInfoExpiry"    # J

    .line 266
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z

    move-result v0

    return v0
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z
    .locals 4
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "capInfoExpiry"    # J
    .param p5, "capCacheExpiry"    # J

    .line 242
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 243
    return v1

    .line 245
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 246
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v3, "needRefresh: Capability is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    return v0

    .line 248
    :cond_1
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    invoke-virtual {p1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v3, "needRefresh: fetch failed capabilities"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    return v0

    .line 251
    :cond_2
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_3

    .line 252
    return v0

    .line 253
    :cond_3
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_4

    .line 254
    return v0

    .line 255
    :cond_4
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_5

    .line 256
    return v0

    .line 257
    :cond_5
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_6

    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 258
    return v0

    .line 260
    :cond_6
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_7

    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v0

    :cond_7
    return v1
.end method

.method public abstract needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z
.end method

.method public abstract needStopAutoRejoin(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
.end method

.method public needToCapabilityCheckForImdn(Z)Z
    .locals 1
    .param p1, "isGroupChat"    # Z

    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public needUnpublish(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public needUnpublish(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)Z
    .locals 1
    .param p1, "oldInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "newInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public setPolicyType(Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)V
    .locals 0
    .param p1, "policyType"    # Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 81
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mRcsPolicyType:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 82
    return-void
.end method

.method public shouldRestartSession(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 3
    .param p1, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 622
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    const-string v0, "gone_should_endsession"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 630
    return v1

    .line 633
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 627
    :cond_2
    return v1
.end method

.method public startServiceBasedOnOmaDmNodes(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 290
    return-void
.end method

.method public stringArraySetting(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->readStringArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public stringSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract updateAvailableFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J
.end method

.method public updateCapDiscoveryOption()V
    .locals 0

    .line 309
    return-void
.end method

.method public abstract updateFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J
.end method

.method public updateLocalConfigUsedState(Z)V
    .locals 0
    .param p1, "useLocalConfig"    # Z

    .line 318
    return-void
.end method

.method public updateOmaDmNodes(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 286
    return-void
.end method
