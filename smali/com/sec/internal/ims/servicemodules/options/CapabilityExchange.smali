.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;
.super Ljava/lang/Object;
.source "CapabilityExchange.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityExchange"

.field private static final POLL_LIMIT:I = 0x3e8

.field private static final POLL_REMOVE_LIMIT:I = 0x64


# instance fields
.field private mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private room:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 1
    .param p1, "capabilityDiscoveryModule"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
    .param p2, "capabilityUtil"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;
    .param p3, "eventLog"    # Lcom/sec/internal/helper/SimpleEventLog;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 46
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 47
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 48
    return-void
.end method

.method private delayPoll(ILjava/util/Date;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "current"    # Ljava/util/Date;

    .line 110
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 111
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 112
    .local v1, "delay":J
    const-string/jumbo v3, "use_rand_delay_periodic_poll"

    invoke-interface {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v3, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getRandomizedDelayForPeriodicPolling(IJ)J

    move-result-wide v1

    .line 116
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->startPollingTimer(J)V

    .line 118
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->savePollTimestamp(J)V

    .line 120
    :cond_1
    return-void
.end method

.method private fillPollingList(IZ)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "addAll"    # Z

    .line 416
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    const-string v1, "CapabilityExchange"

    if-nez v0, :cond_0

    .line 417
    const-string v0, "fillPollingList: CapabilitiesCache is null"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 418
    return-void

    .line 420
    :cond_0
    const-string v0, "fillPollingList"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getCapabilities()Ljava/util/Collection;

    move-result-object v0

    .line 423
    .local v0, "capexList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/options/Capabilities;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/options/Capabilities;

    .line 425
    .local v3, "capex":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip, there is no contactId in capex for uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 427
    goto :goto_0

    .line 429
    :cond_1
    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v5, v3, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getCapInfoExpiry(Lcom/sec/ims/options/Capabilities;I)I

    move-result v5

    int-to-long v5, v5

    invoke-interface {v4, v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needPoll(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 430
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updatePollList(Lcom/sec/ims/util/ImsUri;ZI)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v3    # "capex":Lcom/sec/ims/options/Capabilities;
    :cond_3
    goto :goto_0

    .line 435
    .end local v0    # "capexList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/options/Capabilities;>;"
    :cond_4
    goto :goto_1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/util/ConcurrentModificationException;
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 436
    .end local v0    # "e":Ljava/util/ConcurrentModificationException;
    :goto_1
    return-void
.end method

.method private requestCapabilityForOptions(ILjava/util/Date;Ljava/util/List;)Z
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "current"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;)Z"
        }
    .end annotation

    .line 229
    .local p3, "mPollingHistory":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    const-string v0, "CapabilityExchange"

    const-string/jumbo v1, "requestCapabilityForOptions:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "retry":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 232
    .local v1, "urisToRequest":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    monitor-enter v1

    .line 233
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 234
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/util/ImsUri;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 235
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 237
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    if-nez v4, :cond_0

    .line 238
    const-string v4, "CapabilityExchange"

    const-string/jumbo v5, "poll: room is 0"

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    goto :goto_2

    .line 242
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZI)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 244
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->addPollingHistory(Ljava/util/Date;)V

    .line 245
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    goto :goto_1

    .line 247
    :cond_1
    const/4 v0, 0x1

    .line 250
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingRate()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 251
    goto :goto_2

    .line 253
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    goto :goto_0

    .line 254
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 255
    const-string v3, "CapabilityExchange"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "poll: remained mUrisToRequest size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    const/4 v0, 0x1

    .line 258
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/util/ImsUri;>;"
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putUrisToRequestList(ILjava/util/List;)V

    .line 261
    return v0

    .line 258
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private requestCapabilityForPresence(IZLjava/util/Date;)Z
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "isPeriodic"    # Z
    .param p3, "current"    # Ljava/util/Date;

    .line 187
    const-string v0, "CapabilityExchange"

    const-string/jumbo v1, "requestCapabilityForPresence:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "retry":Z
    const/4 v1, 0x0

    .line 190
    .local v1, "subscribed":I
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    if-gtz v2, :cond_0

    if-nez p2, :cond_6

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 196
    .local v2, "urisToRequest":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    monitor-enter v2

    .line 197
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 198
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    .line 199
    if-eqz p2, :cond_1

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    goto :goto_0

    .line 200
    :cond_1
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_CONTACT_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    :goto_0
    nop

    .line 198
    invoke-virtual {v3, v6, v7, v5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZI)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 201
    const/4 v1, 0x1

    .line 202
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 205
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 206
    if-eqz p2, :cond_3

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    goto :goto_1

    .line 207
    :cond_3
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_CONTACT_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    .line 205
    :goto_1
    invoke-virtual {v3, v2, v5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;I)I

    move-result v3

    move v1, v3

    .line 209
    :cond_4
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, p1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putUrisToRequestList(ILjava/util/List;)V

    .line 212
    if-le v1, v4, :cond_5

    .line 213
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setLastListSubscribeStamp(J)V

    .line 215
    :cond_5
    if-eqz p2, :cond_6

    if-lez v1, :cond_6

    .line 216
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->addPollingHistory(Ljava/util/Date;)V

    .line 220
    .end local v2    # "urisToRequest":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "poll: remained mUrisToRequest size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityExchange"

    invoke-static {v3, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    const/4 v0, 0x1

    .line 225
    :cond_7
    return v0

    .line 209
    .restart local v2    # "urisToRequest":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private setThrottleContactSync(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setThrottleContactSync(Z)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setThrottleContactSync(Z)V

    .line 169
    :cond_1
    :goto_0
    return-void
.end method

.method private startThrottledRetryTimer(Landroid/content/Context;ZJ)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "isPeriodic"    # Z
    .param p3, "millis"    # J

    .line 465
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->stopThrottledRetryTimer(Landroid/content/Context;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startThrottledRetryTimer: isPeriodic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityExchange"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-wide/32 v0, 0xea60

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 469
    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v3, 0x1

    .line 470
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 469
    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    goto :goto_0

    .line 472
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.options.sub_throttled_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "IS_PERIODIC"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 474
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setThrottledIntent(Landroid/app/PendingIntent;)V

    .line 475
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getThrottledIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {p1, v1, p3, p4}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 477
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method private stopPoll(Ljava/util/Map;I)Z
    .locals 5
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;I)Z"
        }
    .end annotation

    .line 146
    .local p1, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 147
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "CapabilityExchange"

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_0

    const-string/jumbo v1, "poll_allowed"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 148
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v1

    .line 149
    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 155
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 160
    :cond_2
    return v4

    .line 156
    :cond_3
    :goto_0
    const-string/jumbo v1, "poll: not registered."

    invoke-static {v3, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setforcePollingGuard(Z)V

    .line 158
    return v2

    .line 150
    :cond_4
    :goto_1
    const-string/jumbo v1, "poll: cancel poll request"

    invoke-static {v3, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setforcePollingGuard(Z)V

    .line 152
    return v2
.end method

.method private stopThrottledRetryTimer(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .line 480
    const-string v0, "CapabilityExchange"

    const-string/jumbo v1, "stopThrottledRetryTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 484
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getThrottledIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 485
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getThrottledIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 489
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setThrottledIntent(Landroid/app/PendingIntent;)V

    .line 490
    return-void
.end method

.method private throttledRetryTimer(Landroid/content/Context;IIJLjava/util/List;Z)V
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "room"    # I
    .param p4, "pollingRatePeriod"    # J
    .param p7, "isPeriodic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIJ",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;Z)V"
        }
    .end annotation

    .line 124
    .local p6, "mPollingHistory":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    const-wide/16 v0, 0x0

    .line 125
    .local v0, "mDelay":J
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    if-ne v2, v3, :cond_1

    .line 126
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollListSubExpiry()I

    move-result v2

    if-nez v2, :cond_0

    .line 127
    const-wide/16 v0, 0x7530

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 130
    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollListSubExpiry()I

    move-result v3

    int-to-long v6, v3

    .line 129
    invoke-interface {v2, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getThrottledDelay(J)J

    move-result-wide v2

    mul-long v0, v2, v4

    .line 132
    :goto_0
    if-nez p3, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_2

    .line 133
    mul-long/2addr v4, p4

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v0

    sub-long v0, v4, v2

    goto :goto_1

    .line 137
    :cond_1
    mul-long v0, p4, v4

    .line 142
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p7, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->startThrottledRetryTimer(Landroid/content/Context;ZJ)V

    .line 143
    return-void
.end method

.method private trimPollingHistory(Ljava/util/Date;JILjava/util/List;)V
    .locals 6
    .param p1, "current"    # Ljava/util/Date;
    .param p2, "pollingRatePeriod"    # J
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "JI",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p5, "mPollingHistory":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 174
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Date;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    if-nez v1, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 180
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 184
    .end local v1    # "date":Ljava/util/Date;
    :cond_1
    return-void
.end method


# virtual methods
.method exchangeCapabilities(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p2, "mRegMan"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "myFeatures"    # J
    .param p6, "phoneId"    # I
    .param p7, "extFeature"    # Ljava/lang/String;
    .param p8, "mCallNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 440
    .local p1, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v5, p3

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 441
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    const-string v4, "CapabilityExchange"

    if-nez v3, :cond_0

    .line 442
    const-string v6, "getCapabilities: uri is null"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void

    .line 445
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exchangeCapabilities: myFeatures = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p5}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-eqz v2, :cond_3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move-wide/from16 v6, p4

    goto :goto_0

    .line 452
    :cond_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v15

    .line 453
    .local v15, "imsHandle":I
    invoke-interface {v2, v15}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 454
    const-string v6, "cannot exchange capabilities. currently in suspend"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void

    .line 458
    :cond_2
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move-wide/from16 v6, p4

    move-object/from16 v14, p8

    invoke-virtual {v4, v6, v7, v3, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterInCallFeatures(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)J

    move-result-wide v16

    .line 460
    .end local p4    # "myFeatures":J
    .local v16, "myFeatures":J
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v6

    const/4 v8, 0x0

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const/4 v10, 0x1

    move-object v7, v3

    move-wide/from16 v11, v16

    move/from16 v13, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v6 .. v14}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZJILjava/lang/String;)Z

    .line 462
    return-void

    .line 447
    .end local v15    # "imsHandle":I
    .end local v16    # "myFeatures":J
    .restart local p4    # "myFeatures":J
    :cond_3
    move-wide/from16 v6, p4

    .line 448
    :goto_0
    const-string v8, "exchangeCapabilities: mRegMan or mImsRegInfo is null"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method forcePoll(ZI)V
    .locals 3
    .param p1, "isPeriodic"    # Z
    .param p2, "phoneId"    # I

    .line 407
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forcePoll forcePollingGuard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getForcePollingGuard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getForcePollingGuard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setforcePollingGuard(Z)V

    .line 410
    invoke-direct {p0, p2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->fillPollingList(IZ)V

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->poll(ZI)V

    .line 413
    :cond_0
    return-void
.end method

.method poll(Landroid/content/Context;ZILjava/util/Map;Ljava/util/List;)V
    .locals 17
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "isPeriodic"    # Z
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p4, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    .local p5, "mPollingHistory":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "poll: isPeriodic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 53
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v10, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x12010001

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 56
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(I)V

    .line 57
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->stopThrottledRetryTimer(Landroid/content/Context;)V

    .line 59
    move-object/from16 v11, p4

    invoke-direct {v8, v11, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->stopPoll(Ljava/util/Map;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    invoke-direct {v8, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->setThrottleContactSync(I)V

    .line 69
    const-string v7, "CapabilityExchange"

    const/4 v12, 0x0

    if-eqz v9, :cond_1

    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {v8, v10, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->fillPollingList(IZ)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const-string/jumbo v0, "poll: no uris to request"

    invoke-static {v7, v10, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    return-void

    .line 76
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v13, v0

    .line 77
    .local v13, "current":Ljava/util/Date;
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingRatePeriod()J

    move-result-wide v14

    .line 78
    .local v14, "pollingRatePeriod":J
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move/from16 v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->trimPollingHistory(Ljava/util/Date;JILjava/util/List;)V

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "retry":Z
    iget-object v1, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingRate()I

    move-result v1

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "poll: room: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " request sent in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    iget-object v1, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v1

    iget-object v2, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 86
    invoke-direct {v8, v10, v9, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->requestCapabilityForPresence(IZLjava/util/Date;)Z

    move-result v0

    move-object/from16 v7, p5

    move/from16 v16, v0

    goto :goto_1

    .line 89
    :cond_3
    move-object/from16 v7, p5

    invoke-direct {v8, v10, v13, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->requestCapabilityForOptions(ILjava/util/Date;Ljava/util/List;)Z

    move-result v0

    move/from16 v16, v0

    .line 96
    .end local v0    # "retry":Z
    .local v16, "retry":Z
    :goto_1
    if-eqz v16, :cond_4

    .line 97
    iget v3, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-wide v4, v14

    move-object/from16 v6, p5

    move/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->throttledRetryTimer(Landroid/content/Context;IIJLjava/util/List;Z)V

    .line 98
    return-void

    .line 100
    :cond_4
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setforcePollingGuard(Z)V

    .line 102
    if-eqz v9, :cond_5

    .line 103
    invoke-direct {v8, v10, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->delayPoll(ILjava/util/Date;)V

    .line 104
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v10, v12, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 107
    :cond_5
    return-void
.end method

.method requestCapabilityExchange(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;I)I
    .locals 7
    .param p2, "requestType"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "I)I"
        }
    .end annotation

    .line 324
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 327
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCapabilityExchange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " contacts"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CapabilityExchange"

    invoke-static {v3, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, "notAllowedUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    .line 331
    .local v5, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v6, v5, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isAllowedPrefixesUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotRoleSession(Lcom/sec/ims/util/ImsUri;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 332
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    goto :goto_0

    .line 335
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCapabilityExchange: remove notAllowedUris = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 337
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " contacts after removed notAllowedUris"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 340
    return v0

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->requestCapabilityExchange(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;I)I

    move-result v0

    return v0

    .line 325
    .end local v1    # "notAllowedUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    :cond_4
    :goto_1
    return v0
.end method

.method requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZILcom/sec/ims/options/Capabilities;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/util/Map;Ljava/lang/String;I)Z
    .locals 21
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .param p3, "isAlwaysForce"    # Z
    .param p4, "phoneId"    # I
    .param p5, "ownCap"    # Lcom/sec/ims/options/Capabilities;
    .param p6, "mRegMan"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p8, "mCallNumber"    # Ljava/lang/String;
    .param p9, "mNetworkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "ZI",
            "Lcom/sec/ims/options/Capabilities;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .line 266
    .local p7, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p9

    const-string v1, ""

    .line 267
    .local v1, "extFeature":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    goto :goto_0

    .line 267
    :cond_0
    move-object v15, v1

    .line 270
    .end local v1    # "extFeature":Ljava/lang/String;
    .local v15, "extFeature":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    const-string v2, "CapabilityExchange"

    if-eqz v10, :cond_a

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 275
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v9

    .line 276
    .local v9, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-nez v9, :cond_2

    .line 277
    const-string/jumbo v3, "requestCapabilityExchange: mnoStrategy is null."

    invoke-static {v2, v11, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    return v1

    .line 281
    :cond_2
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v3, v10, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isAllowedPrefixesUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotRoleSession(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 282
    const-string/jumbo v1, "requestCapabilityExchange: isAllowedPrefixesUri and hasChatbotRoleSession are false."

    invoke-static {v2, v11, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    return v4

    .line 286
    :cond_3
    invoke-interface {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 287
    const-string/jumbo v1, "requestCapabilityExchange: isPresenceValidUri is false."

    invoke-static {v2, v11, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    return v4

    .line 291
    :cond_4
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v3, v10, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 292
    return v4

    .line 295
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "user"

    invoke-virtual {v10, v3}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 296
    const-string/jumbo v3, "remove user=phone param for chatbot serviceId"

    invoke-static {v2, v11, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/util/ImsUri;->removeUserParam()V

    .line 301
    :cond_6
    if-eqz v12, :cond_9

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/ImsRegistration;

    move-object/from16 v16, v3

    .local v16, "regi":Lcom/sec/ims/ImsRegistration;
    if-nez v3, :cond_7

    move-object/from16 v20, v9

    goto/16 :goto_1

    .line 305
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-interface {v12, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 306
    const-string v3, "both phoneId 0 and phoneId 1 was suspended, cannot exchange capabilities."

    invoke-static {v2, v11, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    return v1

    .line 310
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCapabilityExchange: uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v11, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCapabilityExchange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", requesttype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isAlwaysForce: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v11, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-interface {v12, v2, v14, v1, v11}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v7

    .line 315
    .local v7, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v7, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;I)J

    move-result-wide v1

    .line 316
    .local v1, "features":J
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move-object/from16 v5, p8

    invoke-virtual {v3, v1, v2, v10, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterInCallFeatures(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)J

    move-result-wide v17

    .line 318
    .end local v1    # "features":J
    .local v17, "features":J
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v19, v7

    .end local v7    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-wide/from16 v6, v17

    move/from16 v8, p4

    move-object/from16 v20, v9

    .end local v9    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v20, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    move-object v9, v15

    invoke-interface/range {v1 .. v9}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZJILjava/lang/String;)Z

    move-result v1

    return v1

    .line 301
    .end local v16    # "regi":Lcom/sec/ims/ImsRegistration;
    .end local v17    # "features":J
    .end local v19    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v9    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_9
    move-object/from16 v20, v9

    .line 302
    .end local v9    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v20    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :goto_1
    const-string/jumbo v3, "requestCapabilityExchange: mRegMan or ImsRegistration is null"

    invoke-static {v2, v11, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    return v1

    .line 271
    .end local v20    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_a
    :goto_2
    const-string/jumbo v3, "requestCapabilityExchange: uri or mControl is null"

    invoke-static {v2, v11, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    return v1
.end method

.method requestInitialCapabilitiesQuery(IZJ)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "mInitialQuery"    # Z
    .param p3, "mLastPollTimestamp"    # J

    .line 348
    const-string v0, "CapabilityExchange"

    const-string/jumbo v1, "requestInitialCapabilitiesQuery:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(ILjava/lang/Object;)V

    .line 352
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v4, "poll_allowed"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isDisableInitialScan()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    const-string/jumbo v1, "requestInitialCapabilitiesQuery: disable initial scan"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 355
    const/4 p2, 0x0

    .line 356
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v1, 0x10

    const/4 v3, 0x0

    .line 357
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    .line 356
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    :cond_0
    return-void

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isReady()Z

    move-result v1

    const-wide/16 v5, 0x3e8

    if-nez v1, :cond_2

    .line 363
    const-string/jumbo v1, "requestInitialCapabilitiesQuery: contact is not ready. retry in 1 second."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 366
    return-void

    .line 369
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 370
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 375
    :cond_3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 376
    .local v1, "current":Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestInitialCapabilitiesQuery: current "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " mLastPollTimestamp "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " mPollingPeriod "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 377
    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v5

    .line 378
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 379
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isPollingInProgress(Ljava/util/Date;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 380
    const-string/jumbo v2, "requestInitialCapabilitiesQuery: Polling already in progress"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 383
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v3

    .line 384
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingRate()I

    move-result v3

    if-lez v3, :cond_6

    .line 385
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_5

    .line 386
    const-string/jumbo v2, "requestInitialCapabilitiesQuery: Polling has not been performed yet, start polling"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 389
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->startPoll(Ljava/util/Date;I)V

    goto :goto_1

    .line 393
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 394
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onContactChanged(Z)V

    goto :goto_1

    .line 397
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onContactChanged(Z)V

    .line 398
    if-eqz p2, :cond_9

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setInitialQuery(Z)V

    goto :goto_1

    .line 371
    .end local v1    # "current":Ljava/util/Date;
    :cond_8
    :goto_0
    const-string/jumbo v1, "requestInitialCapabilitiesQuery: not ready. retry in 1 second."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 404
    :cond_9
    :goto_1
    return-void
.end method

.method updatePollList(Lcom/sec/ims/util/ImsUri;ZI)Z
    .locals 5
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "needAdd"    # Z
    .param p3, "phoneId"    # I

    .line 493
    invoke-static {p3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 494
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 495
    const-string v2, "CapabilityExchange"

    const-string/jumbo v3, "updatePollList: mnoStrategy is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return v1

    .line 498
    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 499
    const-string v2, "CapabilityExchange"

    const-string/jumbo v3, "updatePollList: isCapabilityValidUri is false."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return v1

    .line 503
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePollList: uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", needAdd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityExchange"

    invoke-static {v3, p3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 504
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 505
    .local v2, "urisToRequest":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    monitor-enter v2

    .line 506
    const/4 v3, 0x1

    if-eqz p2, :cond_2

    .line 507
    :try_start_0
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 508
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p3, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putUrisToRequestList(ILjava/util/List;)V

    .line 510
    monitor-exit v2

    return v3

    .line 513
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 514
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 515
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p3, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putUrisToRequestList(ILjava/util/List;)V

    .line 516
    monitor-exit v2

    return v3

    .line 519
    :cond_3
    monitor-exit v2

    .line 520
    return v1

    .line 519
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
