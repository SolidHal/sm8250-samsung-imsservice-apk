.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;
.super Ljava/lang/Object;
.source "CapabilityQuery.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityQuery"

.field private static final SHORT_NUMBER_DELAY:J = 0x7d0L

.field private static final SHORT_NUMBER_LENGTH:I = 0x8


# instance fields
.field private mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

.field private mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;)V
    .locals 0
    .param p1, "capabilityDiscoveryModule"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
    .param p2, "capabilityUtil"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;
    .param p3, "capabilityExchange"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 38
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 39
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    .line 40
    return-void
.end method

.method private copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "number"    # Ljava/lang/String;

    .line 276
    const-string v0, "CapabilityQuery"

    const-string v1, "copyToOwnCapabilities: CAPABILITY DISCOVERY MECHANISM is off. Copy to OwnCapabilities"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 278
    .local v0, "own":Lcom/sec/ims/options/Capabilities;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    .line 280
    .local v1, "ownFeatures":J
    invoke-virtual {v0, p1}, Lcom/sec/ims/options/Capabilities;->setUri(Lcom/sec/ims/util/ImsUri;)V

    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V

    .line 282
    invoke-virtual {v0, p2}, Lcom/sec/ims/options/Capabilities;->setNumber(Ljava/lang/String;)V

    .line 284
    .end local v1    # "ownFeatures":J
    :cond_0
    return-object v0
.end method

.method private needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V
    .locals 18
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "features"    # J
    .param p6, "isShortNumber"    # Z
    .param p7, "lazyQuery"    # Z
    .param p8, "phoneId"    # I

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-wide/from16 v10, p4

    move/from16 v15, p8

    invoke-static/range {p8 .. p8}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 290
    invoke-virtual {v2, v12, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getCapInfoExpiry(Lcom/sec/ims/options/Capabilities;I)I

    move-result v2

    int-to-long v4, v2

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 291
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getServiceAvailabilityInfoExpiry()I

    move-result v2

    int-to-long v6, v2

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 292
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapCacheExpiry()J

    move-result-wide v8

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 293
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getMsgcapvalidity()J

    move-result-wide v16

    .line 289
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v12, v10

    move-wide/from16 v10, v16

    invoke-interface/range {v1 .. v11}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z

    move-result v1

    const/4 v2, 0x6

    const-string v3, "CapabilityQuery"

    if-eqz v1, :cond_2

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needCapabilityRefresh: true, missing capabilities for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v15, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    if-eqz p7, :cond_1

    .line 296
    const/16 v1, 0x8

    if-eqz p6, :cond_0

    .line 297
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 298
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v1, v3, v15, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x7d0

    .line 297
    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-wide v4, v12

    goto/16 :goto_0

    .line 301
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 302
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v1, v3, v15, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 301
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-wide v4, v12

    goto/16 :goto_0

    .line 305
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 306
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3, v15, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 305
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-wide v4, v12

    goto/16 :goto_0

    .line 308
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v1, v12, v4

    if-ltz v1, :cond_4

    move-object/from16 v1, p1

    move-wide v4, v12

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v4, v5}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(J)Z

    move-result v6

    if-nez v6, :cond_5

    .line 309
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needCapabilityRefresh: true, missing features for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v15, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 311
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v6

    invoke-virtual {v3, v2, v6, v15, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 310
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v6, p2

    goto/16 :goto_0

    .line 308
    :cond_4
    move-object/from16 v1, p1

    move-wide v4, v12

    .line 313
    :cond_5
    const v2, 0x12010007

    if-eqz v1, :cond_6

    .line 314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needCapabilityRefresh: false, capex is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v15, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    move-object/from16 v6, p2

    if-eq v6, v3, :cond_7

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",NOREF,"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_6
    move-object/from16 v6, p2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needCapabilityRefresh: false, capex is null for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v15, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    if-eq v6, v3, :cond_7

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",NOREF,NOCAP"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 325
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;
    .locals 2
    .param p1, "phoneId"    # I

    .line 390
    const-string v0, "CapabilityQuery"

    const-string v1, "getAllCapabilities:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    const-string v1, "getAllCapabilities: CapabilityDiscoveryModule is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x0

    return-object v0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getRcsUserCapabilities()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sec/ims/options/Capabilities;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/options/Capabilities;

    return-object v0
.end method

.method getCapabilities(II)Lcom/sec/ims/options/Capabilities;
    .locals 5
    .param p1, "id"    # I
    .param p2, "phoneId"    # I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCapabilities: Capex list id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityQuery"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 49
    .local v0, "capex":Lcom/sec/ims/options/Capabilities;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getCapInfoExpiry(Lcom/sec/ims/options/Capabilities;I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is expired. refresh it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 52
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 54
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: No need to refresh. capex ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ucXTz5hqdB7L09u5aavOB3EqZFc;->INSTANCE:Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ucXTz5hqdB7L09u5aavOB3EqZFc;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    :goto_0
    return-object v0
.end method

.method getCapabilities(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 13
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "features"    # J
    .param p4, "phoneId"    # I
    .param p5, "rcsProfile"    # Ljava/lang/String;

    .line 132
    move-object v9, p0

    move-object v0, p1

    move/from16 v10, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityQuery"

    invoke-static {v2, v10, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v10, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v1, v2, :cond_1

    .line 141
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    move-object v11, v0

    .end local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 140
    .end local v0    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    move-object v11, v0

    .line 144
    .end local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    .local v11, "uri":Lcom/sec/ims/util/ImsUri;
    :goto_0
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, v11, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    return-object v3

    .line 148
    :cond_2
    invoke-static/range {p5 .. p5}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 149
    invoke-virtual {v11}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v11, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 152
    :cond_3
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v12

    .line 153
    .local v12, "capex":Lcom/sec/ims/options/Capabilities;
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v12

    move-object v3, v11

    move-wide v4, p2

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V

    .line 155
    return-object v12

    .line 136
    .end local v11    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v12    # "capex":Lcom/sec/ims/options/Capabilities;
    .restart local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_4
    :goto_1
    const-string v1, "getCapabilities: failed"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v3
.end method

.method getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;ILjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 14
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "phoneId"    # I
    .param p4, "rcsProfile"    # Ljava/lang/String;

    .line 221
    move-object v9, p0

    move-object v0, p1

    move/from16 v10, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: refreshType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p2

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityQuery"

    invoke-static {v2, v10, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v10, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_2

    .line 229
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v1, v2, :cond_1

    .line 230
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    move-object v12, v0

    .end local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 229
    .end local v0    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    move-object v12, v0

    .line 233
    .end local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    .local v12, "uri":Lcom/sec/ims/util/ImsUri;
    :goto_0
    if-eqz v12, :cond_4

    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, v12, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 237
    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 238
    invoke-virtual {v12}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v12, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 241
    :cond_3
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v13

    .line 242
    .local v13, "capex":Lcom/sec/ims/options/Capabilities;
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object v3, v12

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V

    .line 244
    return-object v13

    .line 234
    .end local v13    # "capex":Lcom/sec/ims/options/Capabilities;
    :cond_4
    :goto_1
    return-object v3

    .line 225
    .end local v12    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_5
    :goto_2
    const-string v1, "getCapabilities: failed"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-object v3
.end method

.method getCapabilities(Ljava/lang/String;JILjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 14
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "features"    # J
    .param p4, "phoneId"    # I
    .param p5, "rcsProfile"    # Ljava/lang/String;

    .line 103
    move-object v9, p0

    move-object v10, p1

    move/from16 v11, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCapabilities: feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityQuery"

    invoke-static {v1, v11, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v11, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 107
    return-object v2

    .line 110
    :cond_0
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v12

    .line 111
    .local v12, "uri":Lcom/sec/ims/util/ImsUri;
    if-nez v12, :cond_1

    .line 112
    const-string v0, "getCapabilities: uri is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v2

    .line 116
    :cond_1
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, v12, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    return-object v2

    .line 120
    :cond_2
    invoke-static/range {p5 .. p5}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 122
    invoke-direct {p0, v12, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 125
    :cond_3
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v13

    .line 126
    .local v13, "capex":Lcom/sec/ims/options/Capabilities;
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object v3, v12

    move-wide/from16 v4, p2

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V

    .line 128
    return-object v13
.end method

.method getCapabilities(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ZILjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 16
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "lazyQuery"    # Z
    .param p4, "phoneId"    # I
    .param p5, "rcsProfile"    # Ljava/lang/String;

    .line 61
    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: refreshType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lazyQuery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityQuery"

    invoke-static {v2, v12, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: number "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v12, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(I)V

    .line 66
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 67
    return-object v4

    .line 70
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkCapDiscoveryOption()Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_1

    .line 71
    new-instance v1, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v1}, Lcom/sec/ims/options/Capabilities;-><init>()V

    .line 72
    .local v1, "dummyCapex":Lcom/sec/ims/options/Capabilities;
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    or-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 73
    invoke-virtual {v1, v5}, Lcom/sec/ims/options/Capabilities;->setAvailiable(Z)V

    .line 74
    return-object v1

    .line 77
    .end local v1    # "dummyCapex":Lcom/sec/ims/options/Capabilities;
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkNeedParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 78
    .end local p1    # "number":Ljava/lang/String;
    .local v13, "number":Ljava/lang/String;
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    invoke-virtual {v0, v13, v5}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v14

    .line 79
    .local v14, "uri":Lcom/sec/ims/util/ImsUri;
    if-nez v14, :cond_2

    .line 80
    const-string v0, "getCapabilities: uri is null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v4

    .line 84
    :cond_2
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, v14, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    return-object v4

    .line 88
    :cond_3
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    if-eq v10, v0, :cond_4

    .line 89
    const v0, 0x12010006

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",GETCAPA,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 92
    :cond_4
    invoke-static/range {p5 .. p5}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 93
    invoke-direct {v9, v14, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 96
    :cond_5
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v15

    .line 97
    .local v15, "capex":Lcom/sec/ims/options/Capabilities;
    const-wide/16 v6, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_6

    move v8, v5

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    move-object v3, v14

    move-wide v4, v6

    move v6, v8

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V

    .line 99
    return-object v15
.end method

.method getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JILjava/lang/String;)[Lcom/sec/ims/options/Capabilities;
    .locals 26
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "features"    # J
    .param p5, "phoneId"    # I
    .param p6, "rcsProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "JI",
            "Ljava/lang/String;",
            ")[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    .line 159
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v0, p0

    move-object/from16 v12, p2

    move/from16 v13, p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: refreshType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "CapabilityQuery"

    invoke-static {v14, v13, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    const/4 v15, 0x0

    if-nez p1, :cond_0

    .line 162
    const-string v1, "getCapabilities: uris is null."

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-object v15

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: uris "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v13, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    return-object v15

    .line 170
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    .line 171
    .local v10, "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 173
    .local v11, "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v16

    .line 174
    .local v16, "capaConfig":Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    invoke-static/range {p6 .. p6}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 175
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 176
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    .line 177
    .local v3, "copyToOwn":Lcom/sec/ims/options/Capabilities;
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "copyToOwn":Lcom/sec/ims/options/Capabilities;
    goto :goto_0

    .line 179
    :cond_2
    new-array v1, v8, [Lcom/sec/ims/options/Capabilities;

    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/ims/options/Capabilities;

    return-object v1

    .line 182
    :cond_3
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v9

    .line 183
    .local v9, "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/sec/ims/util/ImsUri;

    .line 184
    .local v7, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v7, :cond_9

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v7, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    goto :goto_1

    .line 187
    :cond_4
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    .line 188
    .local v4, "capex":Lcom/sec/ims/options/Capabilities;
    if-eqz v4, :cond_5

    .line 189
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_5
    if-eqz v4, :cond_7

    move-wide/from16 v2, p3

    invoke-virtual {v4, v2, v3}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(J)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 193
    invoke-virtual {v1, v4, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getCapInfoExpiry(Lcom/sec/ims/options/Capabilities;I)I

    move-result v1

    move-object/from16 v18, v7

    .end local v7    # "uri":Lcom/sec/ims/util/ImsUri;
    .local v18, "uri":Lcom/sec/ims/util/ImsUri;
    int-to-long v6, v1

    .line 194
    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getServiceAvailabilityInfoExpiry()I

    move-result v1

    move-object/from16 v19, v9

    .end local v9    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v19, "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    int-to-long v8, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapCacheExpiry()J

    move-result-wide v20

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getMsgcapvalidity()J

    move-result-wide v22

    .line 193
    move-object/from16 v1, v19

    move-object v2, v4

    move-object/from16 v3, p2

    move-object/from16 v24, v4

    .end local v4    # "capex":Lcom/sec/ims/options/Capabilities;
    .local v24, "capex":Lcom/sec/ims/options/Capabilities;
    move-wide v4, v6

    move-object/from16 v25, v18

    const/4 v15, 0x6

    .end local v18    # "uri":Lcom/sec/ims/util/ImsUri;
    .local v25, "uri":Lcom/sec/ims/util/ImsUri;
    move-wide v6, v8

    move-object/from16 v15, v19

    const/4 v12, 0x0

    .end local v19    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v15, "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    move-wide/from16 v8, v20

    move-object v12, v10

    move-object/from16 v19, v11

    .end local v10    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v11    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    .local v12, "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local v19, "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    move-wide/from16 v10, v22

    invoke-interface/range {v1 .. v11}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 204
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: No need to refresh. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v13, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 192
    .end local v12    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v15    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v19    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    .end local v24    # "capex":Lcom/sec/ims/options/Capabilities;
    .end local v25    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v4    # "capex":Lcom/sec/ims/options/Capabilities;
    .restart local v7    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v9    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v10    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v11    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    :cond_7
    move-object/from16 v24, v4

    move-object/from16 v25, v7

    move-object v15, v9

    move-object v12, v10

    move-object/from16 v19, v11

    .line 195
    .end local v4    # "capex":Lcom/sec/ims/options/Capabilities;
    .end local v7    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v9    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v10    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v11    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    .restart local v12    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v15    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v19    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    .restart local v24    # "capex":Lcom/sec/ims/options/Capabilities;
    .restart local v25    # "uri":Lcom/sec/ims/util/ImsUri;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is expired. refresh it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v13, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    const-string v1, "allow_list_capex"

    invoke-interface {v15, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 198
    move-object/from16 v1, v25

    .end local v25    # "uri":Lcom/sec/ims/util/ImsUri;
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 200
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v25    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_8
    move-object/from16 v1, v25

    .end local v25    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 201
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3, v13, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 200
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 206
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v24    # "capex":Lcom/sec/ims/options/Capabilities;
    :goto_3
    move-object v10, v12

    move-object v9, v15

    move-object/from16 v11, v19

    const/4 v8, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p2

    goto/16 :goto_1

    .line 184
    .end local v12    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v15    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v19    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    .restart local v7    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v9    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v10    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v11    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    :cond_9
    move-object v1, v7

    move-object v15, v9

    move-object v12, v10

    move-object/from16 v19, v11

    .end local v7    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v9    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v10    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v11    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    .restart local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v12    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v15    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v19    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    const/4 v8, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p2

    goto/16 :goto_1

    .line 207
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v12    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v15    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v19    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    .restart local v9    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v10    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v11    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    :cond_a
    move-object v15, v9

    move-object v12, v10

    move-object/from16 v19, v11

    .end local v9    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v10    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v11    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    .restart local v12    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v15    # "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v19    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_b

    .line 208
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v13, v3, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 209
    :cond_b
    const/4 v3, 0x0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_c

    .line 210
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 211
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v1, v5, v2, v13, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 210
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 213
    :cond_c
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "capa_skip_notify_force_refresh_sync"

    invoke-interface {v15, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    move-object/from16 v2, p2

    if-ne v2, v1, :cond_e

    move-object/from16 v3, v19

    goto :goto_5

    :cond_d
    move-object/from16 v2, p2

    .line 217
    :cond_e
    new-array v1, v3, [Lcom/sec/ims/options/Capabilities;

    move-object/from16 v3, v19

    .end local v19    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    .local v3, "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/ims/options/Capabilities;

    return-object v1

    .line 213
    .end local v3    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    .restart local v19    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    :cond_f
    move-object/from16 v2, p2

    move-object/from16 v3, v19

    .line 215
    .end local v19    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    .restart local v3    # "caplist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    :goto_5
    const/4 v1, 0x0

    return-object v1
.end method

.method getCapabilitiesByContactId(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ILjava/lang/String;)[Lcom/sec/ims/options/Capabilities;
    .locals 11
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "phoneId"    # I
    .param p4, "rcsProfile"    # Ljava/lang/String;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCapabilitiesByContactId: contactId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", refreshType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CapabilityQuery"

    invoke-static {v2, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 251
    return-object v3

    .line 254
    :cond_0
    const-string v0, "FORCE_CAPA_POLLING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->forcePoll(ZI)V

    .line 256
    return-object v3

    .line 259
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getNumberlistByContactId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 264
    .local v10, "normalizedNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_2

    .line 266
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 267
    .local v4, "nornumber":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 268
    .local v5, "teluri":Lcom/sec/ims/util/ImsUri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", teluri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, p3, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v4    # "nornumber":Ljava/lang/String;
    goto :goto_0

    .line 272
    .end local v5    # "teluri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v6, v1

    move-object v3, p0

    move-object v4, v0

    move-object v5, p2

    move v8, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JILjava/lang/String;)[Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    return-object v1
.end method

.method getOwnCapabilities(IILjava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;IZLjava/lang/String;Lcom/sec/ims/options/Capabilities;)Lcom/sec/ims/options/Capabilities;
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "mAvailablePhoneId"    # I
    .param p4, "mRegMan"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p5, "mNetworkType"    # I
    .param p6, "mIsInCall"    # Z
    .param p7, "mCallNumber"    # Ljava/lang/String;
    .param p8, "ownCap"    # Lcom/sec/ims/options/Capabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "IZ",
            "Ljava/lang/String;",
            "Lcom/sec/ims/options/Capabilities;",
            ")",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    .line 358
    .local p3, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 359
    return-object v1

    .line 362
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    const-string v2, "CapabilityQuery"

    if-nez v0, :cond_1

    if-eq p2, p1, :cond_1

    .line 363
    const-string v0, "getOwnCapabilities: mAvailablePhoneId = ! phoneId"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 364
    return-object v1

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 369
    new-instance v0, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v0}, Lcom/sec/ims/options/Capabilities;-><init>()V

    .line 371
    .local v0, "own":Lcom/sec/ims/options/Capabilities;
    :try_start_0
    invoke-virtual {p8}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    move-object v0, v1

    .line 372
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, p3, p4, p5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterServicesWithReg(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;II)Ljava/util/Set;

    move-result-object v1

    .line 373
    .local v1, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 374
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    .line 375
    .local v3, "features":J
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v5, v3, v4, v1, p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;I)J

    move-result-wide v5

    move-wide v3, v5

    .line 376
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v5, v3, v4, p6, p7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithCallState(JZLjava/lang/String;)J

    move-result-wide v5

    move-wide v3, v5

    .line 377
    invoke-virtual {v0, v3, v4}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    .line 378
    invoke-virtual {v0, v3, v4}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v1    # "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "features":J
    :cond_2
    goto :goto_0

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 383
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOwnCapabilities: feature="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", detail="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 386
    return-object v0
.end method

.method getOwnCapabilitiesBase(ILcom/sec/ims/options/Capabilities;)Lcom/sec/ims/options/Capabilities;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "ownCap"    # Lcom/sec/ims/options/Capabilities;

    .line 328
    const-string v0, "CapabilityQuery"

    const-string v1, "getOwnCapabilitiesBase:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, "own":Lcom/sec/ims/options/Capabilities;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    :try_start_0
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 335
    goto :goto_0

    .line 333
    :catch_0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 336
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    if-eqz v1, :cond_0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOwnCapabilitiesBase: module is not ready, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    :cond_0
    return-object v1

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 346
    :try_start_1
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 349
    goto :goto_1

    .line 347
    :catch_1
    move-exception v2

    .line 348
    .restart local v2    # "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 350
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_1
    if-eqz v1, :cond_2

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOwnCapabilitiesBase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    :cond_2
    return-object v1
.end method
