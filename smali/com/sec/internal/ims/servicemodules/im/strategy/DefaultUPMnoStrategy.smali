.class public Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;
.source "DefaultUPMnoStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final MAX_RETRY_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->MAX_RETRY_COUNT:I

    .line 57
    return-void
.end method


# virtual methods
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

    .line 125
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 126
    .local v0, "capDiscModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

    .line 127
    .local v1, "phoneId":I
    if-nez v0, :cond_0

    .line 128
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

    const-string v4, "checkCapability: capDiscModule is null"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v2

    return-object v2

    .line 132
    :cond_0
    const/4 v2, 0x0

    .line 133
    .local v2, "isCapAlwaysOn":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v3

    .line 134
    .local v3, "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v3, :cond_1

    .line 135
    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isImCapAlwaysOn()Z

    move-result v2

    .line 137
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCapability: isCapAlwaysOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    if-eqz v2, :cond_6

    .line 140
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    .line 141
    .local v5, "uri":Lcom/sec/ims/util/ImsUri;
    sget-object v6, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, v5, v6, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v6

    .line 144
    .local v6, "caps":Lcom/sec/ims/options/Capabilities;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v7

    sget v9, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 145
    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v4, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v4

    .line 146
    :cond_2
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v6, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->hasOneOfFeatures(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 150
    .end local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_3
    goto :goto_0

    .line 147
    .restart local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_4
    :goto_1
    invoke-virtual {p0, v5, v6, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->logNoCapability(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;J)V

    .line 148
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v4

    return-object v4

    .line 150
    .end local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_5
    goto :goto_4

    .line 152
    :cond_6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    .line 153
    .restart local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    sget-object v6, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, v5, v6, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v6

    .line 154
    .restart local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0, v6, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->hasOneOfFeaturesAvailable(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_3

    .line 159
    .end local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_7
    goto :goto_2

    .line 155
    .restart local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_8
    :goto_3
    invoke-virtual {p0, v5, v6, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->logNoCapability(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;J)V

    .line 157
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v4

    return-object v4

    .line 162
    .end local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_9
    :goto_4
    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v4
.end method

.method public checkCapability(Ljava/util/Set;JLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2
    .param p2, "capability"    # J
    .param p4, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p5, "isBroadcastMsg"    # Z
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

    .line 110
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p4, v0, :cond_0

    .line 111
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 114
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->checkCapability(Ljava/util/Set;J)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0
.end method

.method public dropUnsupportedCharacter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public getThrottledDelay(J)J
    .locals 0
    .param p1, "delay"    # J

    .line 368
    return-wide p1
.end method

.method public getftResumableOption(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;ZLcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 1
    .param p1, "cancelreason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "isGroup"    # Z
    .param p3, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p4, "transferMech"    # I

    .line 96
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->LOW_MEMORY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->WIFI_DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0

    .line 101
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0
.end method

.method public final handleAttachFileFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2
    .param p1, "close"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 286
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public handleFtFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2
    .param p1, "ftError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 326
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public handleFtHttpDownloadError(Lcom/sec/internal/helper/HttpRequest;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;
    .locals 5
    .param p1, "httpReq"    # Lcom/sec/internal/helper/HttpRequest;

    .line 331
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 334
    .local v0, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_2

    const/16 v2, 0x194

    if-eq v1, v2, :cond_1

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_0

    .line 349
    const/4 v1, 0x3

    .local v1, "delay":I
    goto :goto_0

    .line 336
    .end local v1    # "delay":I
    :cond_0
    const-string v1, "Retry-After"

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/RetryTimerUtil;->getRetryAfter(Ljava/lang/String;)I

    move-result v1

    .line 337
    .restart local v1    # "delay":I
    goto :goto_0

    .line 345
    .end local v1    # "delay":I
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->VALIDITY_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 346
    const/4 v1, -0x1

    .line 347
    .restart local v1    # "delay":I
    goto :goto_0

    .line 340
    .end local v1    # "delay":I
    :cond_2
    const/4 v1, 0x3

    .line 341
    .restart local v1    # "delay":I
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_FT_HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->handleFtHttpRequestFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    .line 342
    nop

    .line 352
    :goto_0
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;I)V

    return-object v2
.end method

.method public final handleFtMsrpInterruption(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2
    .param p1, "errorReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 272
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 3
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 316
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

    .line 318
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 320
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->isSlmEnabled()Z

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
    .locals 7
    .param p1, "errorReason"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .param p2, "isPublish"    # Z

    .line 357
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_SUBSCRIBE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 359
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

    .line 360
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_FULL_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 362
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_RETRY_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0
.end method

.method public handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "currentRetryCount"    # I
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p6, "isSlmMessage"    # Z
    .param p7, "isFtHttp"    # Z

    .line 67
    invoke-static {p5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    if-eqz p6, :cond_0

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0, p1, p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0

    .line 74
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public final handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2
    .param p1, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 277
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, v0, :cond_0

    .line 278
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 280
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method protected handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 4
    .param p1, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "currentRetryCount"    # I

    .line 78
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 79
    .local v0, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 86
    if-ge p2, v2, :cond_1

    .line 87
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    goto :goto_0

    .line 84
    :cond_0
    nop

    .line 91
    :cond_1
    :goto_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1
.end method

.method public isCloseSessionNeeded(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 1
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public isCustomizedFeature(J)Z
    .locals 2
    .param p1, "featureCapability"    # J

    .line 215
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isDeleteSessionSupported(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;I)Z
    .locals 1
    .param p1, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p2, "stateId"    # I

    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method public isDisplayWarnText()Z
    .locals 1

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public final isFTHTTPAutoResumeAndCancelPerConnectionChange()Z
    .locals 1

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public final isFirstMsgInvite(Z)Z
    .locals 0
    .param p1, "isFirstMsgInvite"    # Z

    .line 296
    return p1
.end method

.method public isFtHttpOnlySupported(Z)Z
    .locals 1
    .param p1, "isGroup"    # Z

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public final isNeedToReportToRegiGvn(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 3
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 267
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    return v0
.end method

.method public final isResendFTResume(Z)Z
    .locals 1
    .param p1, "isGroupChat"    # Z

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public isRevocationAvailableMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 1
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method protected logNoCapability(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;J)V
    .locals 5
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "caps"    # Lcom/sec/ims/options/Capabilities;
    .param p3, "features"    # J

    .line 118
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCapability: No capabilities for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    if-nez p2, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": isAvailable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    const/high16 v0, 0x120b0000

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",NOCAP,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "xx"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 121
    return-void
.end method

.method public needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z
    .locals 4
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p2, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p3, "features"    # J
    .param p5, "cacheInfoExpiry"    # J

    .line 167
    const/4 v0, 0x1

    if-eqz p2, :cond_5

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, v1, :cond_0

    goto :goto_2

    .line 172
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    invoke-virtual {p2, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: User is offline"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    return v2

    .line 177
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->UNCLASSIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, v1, :cond_2

    goto :goto_1

    .line 182
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    .line 178
    :cond_4
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: do not change anything"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    return v2

    .line 168
    :cond_5
    :goto_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: Capability is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    return v0
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z
    .locals 4
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "capInfoExpiry"    # J
    .param p5, "serviceAvailabilityInfoExpiry"    # J
    .param p7, "capCacheExpiry"    # J
    .param p9, "msgCapvalidity"    # J

    .line 221
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 222
    return v1

    .line 225
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 226
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

    const-string v3, "needRefresh: Capability is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    return v0

    .line 228
    :cond_1
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    invoke-virtual {p1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

    const-string v3, "needRefresh: fetch failed capabilities"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    return v0

    .line 231
    :cond_2
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_3

    invoke-virtual {p1, p5, p6}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    return v0

    .line 233
    :cond_3
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_4

    .line 234
    return v0

    .line 235
    :cond_4
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_5

    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 236
    return v0

    .line 238
    :cond_5
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_7

    .line 239
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result v2

    if-eqz v2, :cond_6

    move-wide v2, p5

    goto :goto_0

    :cond_6
    move-wide v2, p3

    .line 238
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v0

    :cond_7
    return v1
.end method

.method public needStopAutoRejoin(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 1
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public updateAvailableFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J
    .locals 0
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "features"    # J
    .param p4, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 205
    return-wide p2
.end method

.method public updateFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J
    .locals 5
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "features"    # J
    .param p4, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 187
    if-eqz p1, :cond_2

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 192
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFeatures: feature is NOT_UPDATED, remains previous features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    return-wide v0

    .line 197
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

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

    .line 200
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    or-long/2addr v0, p2

    return-wide v0

    .line 189
    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFeatures: set features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    return-wide p2
.end method
