.class public final Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;
.source "BmcStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public checkCapability(Ljava/util/Set;J)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 9
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

    .line 39
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 40
    .local v0, "capDiscModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->mPhoneId:I

    .line 41
    .local v1, "phoneId":I
    if-nez v0, :cond_0

    .line 42
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->mPhoneId:I

    const-string v4, "checkCapability: capDiscModule is null"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v2

    return-object v2

    .line 46
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 47
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    sget-object v4, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, v3, v4, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    .line 48
    .local v4, "caps":Lcom/sec/ims/options/Capabilities;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->hasOneOfFeaturesAvailable(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 56
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_1
    goto :goto_0

    .line 49
    .restart local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v4    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_2
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCapability: No capabilities for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v3

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    if-nez v4, :cond_4

    const-string v7, ""

    goto :goto_3

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": isAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    const/high16 v2, 0x120b0000

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",NOCAP,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    const-string/jumbo v6, "xx"

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v2

    return-object v2

    .line 58
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_6
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v2
.end method

.method public forceRefreshCapability(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 7
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

    .line 68
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 69
    .local v0, "capDiscModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->mPhoneId:I

    .line 70
    .local v1, "phoneId":I
    if-nez v0, :cond_0

    .line 71
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->mPhoneId:I

    const-string v4, "forceRefreshCapability: capDiscModule is null"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    return-void

    .line 75
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceRefreshCapability: uris "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    if-eqz p2, :cond_1

    .line 77
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 78
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    or-int/2addr v5, v6

    int-to-long v5, v5

    invoke-interface {v0, v4, v5, v6, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;

    .line 79
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method public getThrottledDelay(J)J
    .locals 2
    .param p1, "delay"    # J

    .line 129
    const-wide/16 v0, 0x3

    return-wide v0
.end method

.method public handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
    .locals 7
    .param p1, "errorReason"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .param p2, "isPublish"    # Z

    .line 117
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_SUBSCRIBE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 119
    :cond_0
    new-array v0, v6, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->REQUEST_TIMEOUT_RETRY:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v1, v0, v5

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_FULL_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 122
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_RETRY_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0
.end method

.method public isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 63
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->isCapabilityValidUriForUS(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    return v0
.end method

.method public isCloseSessionNeeded(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 3
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    return v0
.end method

.method public isPresenceReadyToRequest(ZZ)Z
    .locals 1
    .param p1, "ownInfoPublished"    # Z
    .param p2, "paralysed"    # Z

    .line 107
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z
    .locals 7
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p2, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p3, "features"    # J
    .param p5, "cacheInfoExpiry"    # J

    .line 91
    const/4 v0, 0x1

    if-eqz p2, :cond_4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->UNCLASSIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 95
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: UNCLASSIFIED_ERROR. do not change anything"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    return v2

    .line 97
    :cond_1
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 98
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: Capability is not_updated"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    return v0

    .line 101
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    .line 92
    :cond_4
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: Capability is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    return v0
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z
    .locals 7
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "capInfoExpiry"    # J
    .param p5, "serviceAvailabilityInfoExpiry"    # J
    .param p7, "capCacheExpiry"    # J
    .param p9, "msgCapvalidity"    # J

    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z

    move-result v0

    return v0
.end method
