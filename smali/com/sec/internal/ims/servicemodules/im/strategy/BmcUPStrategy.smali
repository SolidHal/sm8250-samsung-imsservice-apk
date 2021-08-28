.class public final Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;
.source "BmcUPStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final MAX_RETRY_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->MAX_RETRY_COUNT:I

    .line 58
    return-void
.end method

.method private handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 4
    .param p1, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "currentRetryCount"    # I

    .line 163
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 164
    .local v0, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

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

    .line 171
    if-ge p2, v2, :cond_1

    .line 172
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    goto :goto_0

    .line 169
    :cond_0
    nop

    .line 176
    :cond_1
    :goto_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1
.end method


# virtual methods
.method public checkCapability(Ljava/util/Set;J)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 8
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

    .line 191
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 192
    .local v0, "capDiscModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    if-nez v0, :cond_0

    .line 193
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    const-string v3, "checkCapability: capDiscModule is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v1

    return-object v1

    .line 197
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 198
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    invoke-interface {v0, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    .line 199
    .local v3, "caps":Lcom/sec/ims/options/Capabilities;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->hasOneOfFeaturesAvailable(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 208
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_1
    goto :goto_0

    .line 200
    .restart local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v3    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_2
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCapability: No capabilities for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v2

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    if-nez v3, :cond_4

    const-string v6, ""

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ": isAvailable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    const/high16 v1, 0x120b0000

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",NOCAP,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    const-string/jumbo v5, "xx"

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v1

    return-object v1

    .line 210
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_6
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1
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

    .line 182
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p4, v0, :cond_0

    .line 183
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 186
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->checkCapability(Ljava/util/Set;J)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0
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

    .line 67
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 69
    .local v0, "capDiscModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    if-nez v0, :cond_0

    .line 70
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    const-string v3, "forceRefreshCapability: capDiscModule is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    return-void

    .line 74
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceRefreshCapability: uris "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    if-eqz p2, :cond_1

    .line 76
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 77
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    or-int/2addr v4, v5

    int-to-long v4, v4

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;

    .line 78
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public getThrottledDelay(J)J
    .locals 2
    .param p1, "delay"    # J

    .line 263
    const-wide/16 v0, 0x3

    return-wide v0
.end method

.method public handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 6
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 232
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v5, 0x4

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v5, 0x5

    aput-object v1, v0, v5

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 235
    :cond_0
    new-array v0, v3, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 237
    :cond_1
    new-array v0, v4, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 240
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->isSlmEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    :goto_0
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
    .locals 7
    .param p1, "errorReason"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .param p2, "isPublish"    # Z

    .line 246
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

    .line 247
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_SUBSCRIBE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 248
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

    .line 249
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_FULL_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 251
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

    .line 152
    invoke-static {p5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    if-eqz p6, :cond_0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    invoke-virtual {p0, p1, p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0

    .line 159
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 85
    invoke-static {p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->isCapabilityValidUriForUS(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    return v0
.end method

.method public isCustomizedFeature(J)Z
    .locals 1
    .param p1, "featureCapability"    # J

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstMsgInvite(Z)Z
    .locals 1
    .param p1, "isFirstMsgInvite"    # Z

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public isFtHttpOnlySupported(Z)Z
    .locals 1
    .param p1, "isGroup"    # Z

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public isPresenceReadyToRequest(ZZ)Z
    .locals 1
    .param p1, "ownInfoPublished"    # Z
    .param p2, "paralysed"    # Z

    .line 124
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRevocationAvailableMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 1
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public isSubscribeThrottled(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;JZZ)Z
    .locals 9
    .param p1, "s"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .param p2, "millis"    # J
    .param p4, "isAvailFetch"    # Z
    .param p5, "isAlwaysForce"    # Z

    .line 129
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 130
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    const-string v3, "isSubscribeThrottled: retried subscription"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    return v1

    .line 134
    :cond_0
    if-eqz p5, :cond_1

    .line 135
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    const-string v3, "isSubscribeThrottled: isAlwaysForce true"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    return v1

    .line 139
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 140
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 142
    .local v2, "offset":J
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSubscribeThrottled: interval from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
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

    .line 142
    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    cmp-long v4, v2, p2

    if-gez v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z
    .locals 7
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p2, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p3, "features"    # J
    .param p5, "cacheInfoExpiry"    # J

    .line 93
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 94
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: Capability is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    return v0

    .line 98
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, v1, :cond_1

    .line 99
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: Capability USER_NOT_FOUND"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    return v0

    .line 103
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->UNCLASSIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 104
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: UNCLASSIFIED_ERROR. do not change anything"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    return v2

    .line 108
    :cond_2
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 109
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: Capability is not_updated"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    return v0

    .line 113
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-eq p1, v1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
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

    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z

    move-result v0

    return v0
.end method

.method public needStopAutoRejoin(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 3
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 225
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
