.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;
.super Ljava/lang/Object;
.source "PresenceUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceUtil"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static calListSubscribeExponentialBackOffRetryTime(II)J
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "retryCount"    # I

    .line 175
    const/4 v0, 0x5

    .line 176
    .local v0, "LIST_SUBSCRIBE_EXPONENTIAL_BACKOFF_MAX_RETRY":I
    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    .line 179
    .local v1, "ExpBackOffRetrySlots_30Mins":[J
    if-gt p1, v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    add-int/lit8 v2, p1, -0x1

    aget-wide v2, v1, v2

    return-wide v2

    .line 180
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calListSubscribeExponentialBackOffRetryTime: invaild retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceUtil"

    invoke-static {v3, p0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    const-wide/16 v2, 0x0

    return-wide v2

    :array_0
    .array-data 8
        0x708
        0xe10
        0x1c20
        0x3840
        0x7080
    .end array-data
.end method

.method public static calPublishExpBackOffRetryTimeUnlimit(II)J
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "retryCount"    # I

    .line 150
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 153
    .local v0, "ExpBackOffRetrySlots_2Min":[J
    if-gtz p1, :cond_0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calPublishExponentialBackOffRetryTime: invaild retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceUtil"

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    const-wide/16 v1, 0x0

    return-wide v1

    .line 156
    :cond_0
    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 157
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v0, v1

    return-wide v1

    .line 159
    :cond_1
    add-int/lit8 v1, p1, -0x1

    aget-wide v1, v0, v1

    return-wide v1

    nop

    :array_0
    .array-data 8
        0x78
        0xf0
        0x1e0
        0x3c0
        0xe10
    .end array-data
.end method

.method private static calPublishExponentialBackOffRetryTime(II)J
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "retryCount"    # I

    .line 138
    const/4 v0, 0x4

    .line 139
    .local v0, "PUBLISH_EXPONENTIAL_BACKOFF_MAX_RETRY":I
    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    .line 142
    .local v1, "ExpBackOffRetrySlots_1Min":[J
    if-gt p1, v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    add-int/lit8 v2, p1, -0x1

    aget-wide v2, v1, v2

    return-wide v2

    .line 143
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calPublishExponentialBackOffRetryTime: invaild retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceUtil"

    invoke-static {v3, p0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 144
    const-wide/16 v2, 0x0

    return-wide v2

    :array_0
    .array-data 8
        0x3c
        0x78
        0xf0
        0x1e0
    .end array-data
.end method

.method private static calSubscribeExponentialBackOffRetryTime(II)J
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "retryCount"    # I

    .line 163
    const/4 v0, 0x4

    .line 164
    .local v0, "SUBSCRIBE_EXPONENTIAL_BACKOFF_MAX_RETRY":I
    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    .line 167
    .local v1, "ExpBackOffRetrySlots_1Min":[J
    if-gt p1, v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    add-int/lit8 v2, p1, -0x1

    aget-wide v2, v1, v2

    return-wide v2

    .line 168
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calSubscribeExponentialBackOffRetryTime: invaild retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceUtil"

    invoke-static {v3, p0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    const-wide/16 v2, 0x0

    return-wide v2

    :array_0
    .array-data 8
        0x3c
        0x78
        0xf0
        0x1e0
    .end array-data
.end method

.method static convertUriType(Lcom/sec/ims/util/ImsUri;ZLcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/util/UriGenerator;I)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p0, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p1, "useSipOnly"    # Z
    .param p2, "info"    # Lcom/sec/ims/presence/PresenceInfo;
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p4, "uriGenerator"    # Lcom/sec/internal/ims/util/UriGenerator;
    .param p5, "phoneId"    # I

    .line 69
    if-nez p2, :cond_0

    .line 70
    move-object v0, p0

    .local v0, "uriToRequest":Lcom/sec/ims/util/ImsUri;
    goto :goto_1

    .line 72
    .end local v0    # "uriToRequest":Lcom/sec/ims/util/ImsUri;
    :cond_0
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .restart local v0    # "uriToRequest":Lcom/sec/ims/util/ImsUri;
    :goto_0
    goto :goto_1

    .line 75
    .end local v0    # "uriToRequest":Lcom/sec/ims/util/ImsUri;
    :cond_2
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, p0

    .line 79
    .restart local v0    # "uriToRequest":Lcom/sec/ims/util/ImsUri;
    :goto_1
    if-eqz p1, :cond_4

    .line 80
    invoke-virtual {p4, p0}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 83
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertUriType: requested uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceUtil"

    invoke-static {v2, p5, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    return-object v0
.end method

.method static getExtendedPublishTimerCond(ILjava/util/List;)Z
    .locals 5
    .param p0, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;)Z"
        }
    .end annotation

    .line 133
    .local p1, "serviceTuples":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/ServiceTuple;>;"
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isOneOf([Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->isExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    nop

    .line 133
    :goto_0
    return v3
.end method

.method static getListSubscribeExpBackOffRetryTime(II)J
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "retryCount"    # I

    .line 128
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isOneOf([Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->calListSubscribeExponentialBackOffRetryTime(II)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 128
    :goto_0
    return-wide v0
.end method

.method static getPollListSubExp(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 88
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

    invoke-static {p0, v1, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getPublishExpBackOffRetryTime(II)J
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "retryCount"    # I

    .line 114
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    sget-object v3, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isOneOf([Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->calPublishExponentialBackOffRetryTime(II)J

    move-result-wide v0

    return-wide v0

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    new-array v1, v1, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SEC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->KT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isOneOf([Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->calPublishExpBackOffRetryTimeUnlimit(II)J

    move-result-wide v0

    return-wide v0

    .line 119
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static getSubscribeExpBackOffRetryTime(II)J
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "retryCount"    # I

    .line 123
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isOneOf([Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->calSubscribeExponentialBackOffRetryTime(II)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 123
    :goto_0
    return-wide v0
.end method

.method private static isExtendedPublishTimerCond(ILjava/util/List;)Z
    .locals 6
    .param p0, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;)Z"
        }
    .end annotation

    .line 191
    .local p1, "serviceTuples":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/ServiceTuple;>;"
    invoke-static {p1}, Lcom/sec/ims/presence/ServiceTuple;->getFeatures(Ljava/util/List;)J

    move-result-wide v0

    .line 192
    .local v0, "featureSet":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExtendedPublishTimerCond: services: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceUtil"

    invoke-static {v3, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v2, v2

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v2, v2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v2, v2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static isRegProhibited(Lcom/sec/ims/ImsRegistration;I)Z
    .locals 6
    .param p0, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p1, "phoneId"    # I

    .line 99
    if-eqz p0, :cond_0

    .line 100
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 101
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationList()Ljava/util/Map;

    move-result-object v1

    .line 102
    .local v1, "mRegistrationList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 103
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/ImsRegistration;

    .line 104
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/ims/ImsRegistration;->setProhibited(Z)V

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRegProhibited: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PresenceUtil"

    invoke-static {v5, p1, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result v4

    return v4

    .line 110
    .end local v0    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v1    # "mRegistrationList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    .end local v2    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static sendRCSPPubInfoToHQM(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "publishErrorCode"    # I
    .param p2, "publishErrorReason"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    const v0, true
    return v0
.end method

.method static sendRCSPSubInfoToHQM(Landroid/content/Context;II)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscribeErrorCode"    # I
    .param p2, "phoneId"    # I

    .line 223

    const v0, true
    return v0
.end method

.method static translateToCapExResult(Lcom/sec/ims/presence/PresenceInfo;Lcom/sec/ims/util/ImsUri;JLcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .locals 3
    .param p0, "info"    # Lcom/sec/ims/presence/PresenceInfo;
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "features"    # J
    .param p4, "statusCode"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 45
    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v0

    .line 46
    .local v0, "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    if-eqz v0, :cond_0

    .line 48
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 49
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    goto :goto_0

    .line 51
    .end local v1    # "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->POLLING_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .restart local v1    # "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    goto :goto_0

    .line 54
    .end local v1    # "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-ne p4, v1, :cond_2

    .line 55
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .restart local v1    # "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    goto :goto_0

    .line 56
    .end local v1    # "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    :cond_2
    if-eqz v0, :cond_3

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .restart local v1    # "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    goto :goto_0

    .line 58
    .end local v1    # "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    :cond_3
    if-eqz v0, :cond_4

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {p2, p3, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .restart local v1    # "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    goto :goto_0

    .line 61
    .end local v1    # "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 64
    .restart local v1    # "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    :goto_0
    return-object v1
.end method

.method static triggerOmadmTreeSync(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 92
    const-string v0, "PresenceUtil"

    const-string/jumbo v1, "triggerOmadmTreeSync:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.sdm.START_DM_SYNC_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.sdm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
