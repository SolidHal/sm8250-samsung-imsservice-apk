.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;
.super Ljava/lang/Object;
.source "CapabilityUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityUtil"

.field static final exponentialCapInfoExpiry:[I


# instance fields
.field private mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->exponentialCapInfoExpiry:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4b0
        0xe10
        0x1c20
        0x3840
        0x7080
    .end array-data
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 1
    .param p1, "capabilityDiscoveryModule"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 65
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    .line 66
    return-void
.end method

.method private checkChatFeatures(Ljava/util/Set;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 317
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 319
    .local v0, "maskChatServices":J
    const-string v2, "chatbot-communication"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    or-long/2addr v2, v4

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 324
    :cond_0
    const-string v2, "ft_http"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    or-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 328
    :cond_1
    const-string/jumbo v2, "slm"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 329
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v2, v2

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 332
    :cond_2
    const-string v2, "im"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    or-int/2addr v2, v3

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    or-int/2addr v2, v3

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    or-int/2addr v2, v3

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    or-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 338
    :cond_3
    const-string v2, "ft"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    or-int/2addr v2, v3

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    or-int/2addr v2, v3

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    or-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 343
    :cond_4
    return-wide v0
.end method

.method private checkCshFeatures(Ljava/util/Set;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 347
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 349
    .local v0, "maskCshServices":J
    const-string v2, "is"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 353
    :cond_0
    const-string/jumbo v2, "vs"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 357
    :cond_1
    const-string v2, "gls"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    or-int/2addr v2, v3

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    or-int/2addr v2, v3

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    or-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 362
    :cond_2
    const-string v2, "ec"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 363
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    or-long/2addr v2, v4

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    or-long/2addr v2, v4

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 366
    :cond_3
    return-wide v0
.end method

.method private checkRcsFeatures(Ljava/util/Set;I)J
    .locals 6
    .param p2, "networkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .line 370
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 372
    .local v0, "maskRcsServices":J
    const-string/jumbo v2, "plug-in"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    or-long/2addr v0, v2

    .line 376
    :cond_0
    const-string/jumbo v2, "presence"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    or-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 380
    :cond_1
    const-string v2, "lastseen"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    or-long/2addr v0, v2

    .line 385
    :cond_2
    const-string v2, "mmtel"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isServiceAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 386
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    or-int/2addr v3, v4

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 389
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    .line 390
    .local v3, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const-string v4, "mmtel-video"

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 391
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isServiceAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 392
    :cond_4
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    or-int/2addr v4, v5

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    or-int/2addr v4, v5

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 396
    :cond_5
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isServiceAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 397
    const-string v2, "mmtel-call-composer"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 398
    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    or-long/2addr v0, v4

    .line 401
    :cond_6
    return-wide v0
.end method

.method public static hasFeature(JJ)Z
    .locals 2
    .param p0, "ownFeature"    # J
    .param p2, "feature"    # J

    .line 313
    and-long v0, p0, p2

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCapabilityCacheEmpty(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getCapabilities()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    .line 241
    .local v1, "capex":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 243
    goto :goto_0

    .line 245
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 247
    .end local v1    # "capex":Lcom/sec/ims/options/Capabilities;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isServiceAvailable(I)Z
    .locals 6
    .param p1, "networkType"    # I

    .line 493
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 494
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 495
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/16 v5, 0xd

    if-ne v1, v2, :cond_0

    .line 497
    if-eq p1, v5, :cond_1

    const/16 v2, 0x12

    if-eq p1, v2, :cond_1

    if-eq p1, v4, :cond_1

    .line 505
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v2

    if-nez v2, :cond_1

    .line 506
    return v3

    .line 509
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_1

    .line 512
    return v3

    .line 515
    :cond_1
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "phoneId"    # I

    .line 694
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 695
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 696
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    .line 697
    .local v1, "ownCap":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getPhoneId()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 699
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockOptionsToOwnUri: Block for sending OPTIONS to own number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CapabilityUtil"

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x1

    return v0

    .line 702
    .end local v1    # "ownCap":Lcom/sec/ims/options/Capabilities;
    :cond_1
    goto :goto_0

    .line 704
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method changeParalysed(ZI)V
    .locals 3
    .param p1, "mode"    # Z
    .param p2, "phoneId"    # I

    .line 251
    const-string v0, "CapabilityUtil"

    const-string v1, "changeParalysed"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->getParalysed(I)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    invoke-interface {v1, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->setParalysed(ZI)V

    .line 254
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    .line 255
    .local v1, "mCapabilityConfig":Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const-string v2, "call unpublish"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->unpublish(I)V

    .line 265
    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCapabilityCacheEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onContactChanged(Z)V

    .line 269
    .end local v1    # "mCapabilityConfig":Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    :cond_1
    return-void
.end method

.method checkModuleReady(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CapabilityUtil"

    if-nez v0, :cond_0

    .line 709
    const-string v0, "checkModuleReady: module is disabled"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 710
    return v1

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 714
    const-string v0, "checkModuleReady: uriGenerator is null"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 715
    return v1

    .line 718
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_2

    .line 719
    const-string v0, "checkModuleReady: MnoStrategy is null"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 720
    return v1

    .line 723
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    if-nez v0, :cond_3

    .line 724
    const-string v0, "checkModuleReady: config is null"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 725
    return v1

    .line 728
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 729
    const-string v0, "checkModuleReady: mConfig.isAvailable == false"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 730
    return v1

    .line 733
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method extractMsisdnFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "CapabilityUtil"

    const-string v1, "extractMsisdnFromUri uri is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, ""

    return-object v0

    .line 92
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "prefixIndex":I
    move-object v1, p1

    .line 94
    .local v1, "removedPrefix":Ljava/lang/String;
    if-ltz v0, :cond_1

    .line 95
    add-int/lit8 v0, v0, 0x1

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_1
    move-object v2, v1

    .line 100
    .local v2, "trimmed":Ljava/lang/String;
    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 101
    .local v3, "domainIndex":I
    if-ltz v3, :cond_2

    .line 102
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 104
    :cond_2
    return-object v2
.end method

.method filterEnrichedCallFeatures(J)J
    .locals 4
    .param p1, "features"    # J

    .line 415
    const-string v0, "CapabilityUtil"

    const-string v1, "filterEnrichedCallFeatures: disable CallComposer, PostCall, ISH, VSH, ShareMap and ShareSketch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    not-int v0, v0

    int-to-long v0, v0

    and-long/2addr v0, p1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    not-long v2, v2

    and-long/2addr v0, v2

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    not-long v2, v2

    and-long/2addr v0, v2

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    not-long v2, v2

    and-long/2addr v0, v2

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    not-long v2, v2

    and-long/2addr v0, v2

    return-wide v0
.end method

.method filterFeaturesWithCallState(JZLjava/lang/String;)J
    .locals 4
    .param p1, "features"    # J
    .param p3, "isInCall"    # Z
    .param p4, "callNumber"    # Ljava/lang/String;

    .line 405
    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    return-wide p1

    .line 406
    :cond_1
    :goto_0
    const-string v0, "CapabilityUtil"

    const-string v1, "filterFeaturesWithCallState: disable ISH, VSH, ShareMap and ShareSketch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    not-int v0, v0

    int-to-long v0, v0

    and-long/2addr v0, p1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    not-long v2, v2

    and-long/2addr v0, v2

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    not-long v2, v2

    and-long/2addr v0, v2

    return-wide v0
.end method

.method filterFeaturesWithService(JLjava/util/Set;I)J
    .locals 4
    .param p1, "features"    # J
    .param p4, "networkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .line 296
    .local p3, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 298
    .local v0, "mask":J
    if-nez p3, :cond_0

    .line 299
    return-wide p1

    .line 302
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filterFeaturesWithService: features="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", services="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityUtil"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkChatFeatures(Ljava/util/Set;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 306
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkCshFeatures(Ljava/util/Set;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 307
    invoke-direct {p0, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkRcsFeatures(Ljava/util/Set;I)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 309
    and-long v2, p1, v0

    return-wide v2
.end method

.method filterInCallFeatures(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)J
    .locals 10
    .param p1, "features"    # J
    .param p3, "requestUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "callNumber"    # Ljava/lang/String;

    .line 430
    const-string v0, "CapabilityUtil"

    if-nez p3, :cond_0

    .line 431
    const-string v1, "Request URI is null, return existing availFeatures"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-wide p1

    .line 434
    :cond_0
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "requestMsisdn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request uri["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] callNumber["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v2, ", remove incall features"

    const-string/jumbo v4, "we\'re not in call with "

    if-nez p4, :cond_1

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    not-int v0, v0

    int-to-long v2, v0

    and-long/2addr v2, p1

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    not-int v0, v0

    int-to-long v4, v0

    and-long/2addr v2, v4

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    not-long v4, v4

    and-long/2addr v2, v4

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    not-long v4, v4

    and-long/2addr v2, v4

    return-wide v2

    .line 446
    :cond_1
    const/4 v5, 0x0

    .line 447
    .local v5, "normalizedReqUri":Lcom/sec/ims/util/ImsUri;
    const/4 v6, 0x0

    .line 448
    .local v6, "normalizedCallNumber":Lcom/sec/ims/util/ImsUri;
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    .line 449
    .local v7, "mUriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    if-eqz v7, :cond_2

    .line 450
    const/4 v8, 0x1

    invoke-virtual {v7, v1, v8}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 451
    invoke-virtual {v7, p4, v8}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 453
    :cond_2
    if-eqz v5, :cond_3

    move-object v8, v5

    goto :goto_0

    :cond_3
    move-object v8, p3

    :goto_0
    move-object v5, v8

    .line 454
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "normalizedReqUri["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] normalizedCallNumber["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v5, v6}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    not-int v0, v0

    int-to-long v2, v0

    and-long/2addr v2, p1

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    not-int v0, v0

    int-to-long v8, v0

    and-long/2addr v2, v8

    sget-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    not-long v8, v8

    and-long/2addr v2, v8

    sget-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    not-long v8, v8

    and-long/2addr v2, v8

    return-wide v2

    .line 464
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "we\'re in call with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", don\'t change incall features"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-wide p1
.end method

.method filterServicesWithReg(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;II)Ljava/util/Set;
    .locals 10
    .param p2, "regMan"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p3, "networkType"    # I
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "II)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 469
    .local p1, "imsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 471
    .local v0, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    .line 472
    .local v1, "imsHandle":I
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v2

    .line 473
    .local v2, "regiServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetwork(I)I

    move-result v3

    .line 474
    .local v3, "network":I
    invoke-static {p4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 475
    .local v4, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 476
    move v3, p3

    .line 478
    :cond_0
    const/4 v5, 0x0

    invoke-interface {p2, v0, v3, v5, p4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v5

    .line 479
    .local v5, "profileServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 480
    .local v6, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    .line 481
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 482
    .local v8, "svc":Ljava/lang/String;
    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 483
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 485
    .end local v8    # "svc":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 487
    :cond_2
    return-object v6

    .line 489
    .end local v0    # "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    .end local v1    # "imsHandle":I
    .end local v2    # "regiServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "network":I
    .end local v4    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v5    # "profileServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method getCapInfoExpiry(Lcom/sec/ims/options/Capabilities;I)I
    .locals 6
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "phoneId"    # I

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "capInfoExpiry":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    .line 111
    .local v1, "mCapabilityConfig":Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    if-eqz p1, :cond_0

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getNonRCScapInfoExpiry()I

    move-result v0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapInfoExpiry()I

    move-result v0

    .line 117
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getIsSupportExpCapInfoExpiry()Z

    move-result v2

    .line 118
    .local v2, "isSupportExpCapInfoExpiry":Z
    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getExpCapInfoExpiry()I

    move-result v3

    .line 120
    .local v3, "expCapInfoExpiry":I
    if-ge v3, v0, :cond_2

    .line 121
    if-lez v3, :cond_1

    .line 122
    move v0, v3

    goto :goto_0

    .line 124
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->exponentialCapInfoExpiry:[I

    const/4 v5, 0x0

    aget v0, v4, v5

    .line 129
    .end local v2    # "isSupportExpCapInfoExpiry":Z
    .end local v3    # "expCapInfoExpiry":I
    :cond_2
    :goto_0
    return v0
.end method

.method getDelayTimeToPoll(JI)J
    .locals 9
    .param p1, "lastListSubscribeStamp"    # J
    .param p3, "phoneId"    # I

    .line 187
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    return-wide v1

    .line 190
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 191
    .local v0, "current":Ljava/util/Date;
    invoke-static {p3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 192
    invoke-virtual {v4, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollListSubExpiry()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getThrottledDelay(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 193
    .local v3, "throttle":J
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, p1

    sub-long v5, v3, v5

    .line 194
    .local v5, "delay":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDelayTimeToPoll: delay = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", lastListSubscribeStamp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CapabilityUtil"

    invoke-static {v8, p3, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    cmp-long v7, v5, v1

    if-lez v7, :cond_1

    move-wide v1, v5

    :cond_1
    return-wide v1
.end method

.method getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 8
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "caps":Lcom/sec/ims/options/Capabilities;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache()Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    .line 221
    .local v1, "cacheList":Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 224
    :cond_0
    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getPAssertedId()Ljava/util/List;

    move-result-object v2

    .line 227
    .local v2, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const/4 v3, 0x0

    .line 228
    .local v3, "domain":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    .line 229
    .local v5, "remoteUri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v6

    sget-object v7, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v6, v7, :cond_1

    .line 230
    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 231
    goto :goto_1

    .line 233
    .end local v5    # "remoteUri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    goto :goto_0

    .line 234
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v4, v5, p1, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    return-object v4

    .line 236
    .end local v2    # "identities":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v3    # "domain":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method getRandomizedDelayForPeriodicPolling(IJ)J
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "delay"    # J

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRandomizedDelayForPeriodicPolling: delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityUtil"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 802
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 803
    .local v0, "r":D
    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    add-double/2addr v2, v4

    long-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method handleRemovedNumbers(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getAndFlushRemovedNumbers()Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "removedNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemovedNumbers: removed numbers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityUtil"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v1, "removedUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 277
    .local v4, "number":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 278
    .local v5, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v5, :cond_0

    .line 279
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updatePollList(Lcom/sec/ims/util/ImsUri;ZI)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRemovedNumbers: updatePollList, removed uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, p1, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    goto :goto_0

    .line 286
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->remove(Ljava/util/List;)V

    .line 288
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    .line 289
    .local v2, "mCapabilityConfig":Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    invoke-interface {v3, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->removePresenceCache(Ljava/util/List;I)V

    .line 293
    .end local v2    # "mCapabilityConfig":Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    :cond_2
    return-void
.end method

.method isAllowedPrefixesUri(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 8
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "phoneId"    # I

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    .line 161
    .local v0, "mCapabilityConfig":Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 162
    return v1

    .line 165
    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v3, v4, :cond_1

    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 166
    return v2

    .line 169
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapAllowedPrefixes()Ljava/util/Set;

    move-result-object v3

    .line 170
    .local v3, "prefixPatterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/regex/Pattern;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 171
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "msdn":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 173
    return v1

    .line 175
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/regex/Pattern;

    .line 176
    .local v6, "prefix":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAllowedPrefixesUri: prefix = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", msdn = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "CapabilityUtil"

    invoke-static {v5, p2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    return v2

    .line 180
    .end local v6    # "prefix":Ljava/util/regex/Pattern;
    :cond_3
    goto :goto_0

    .line 181
    :cond_4
    return v1

    .line 183
    .end local v4    # "msdn":Ljava/lang/String;
    :cond_5
    return v2
.end method

.method isCapabilityDiscoveryDisabled(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 78
    const-string/jumbo v0, "options"

    invoke-static {p1, v0, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 80
    .local v0, "isOptionsEnabled":Z
    :goto_0
    const-string/jumbo v3, "presence"

    invoke-static {p1, v3, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 82
    .local v3, "isPresenceEnabled":Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method isCheckRcsSwitch(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "rcsSwitchOn":Z
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 71
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    const-string/jumbo v4, "rcs"

    invoke-static {p1, v4, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v0, v4

    .line 72
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 74
    :cond_1
    return v0
.end method

.method isPhoneLockState(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 519
    const-string/jumbo v0, "ro.crypto.type"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "cryptoType":Ljava/lang/String;
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "voldDecrypt":Ljava/lang/String;
    const-string v2, "block"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "CapabilityUtil"

    if-eqz v2, :cond_0

    .line 525
    const-string/jumbo v2, "trigger_restart_framework"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 526
    const-string v2, "isPhoneLockState: not required sync contact in lock state"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const v2, 0x1201000a

    const-string v4, "N,LOCKED"

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 528
    return v3

    .line 532
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCheckRcsSwitch(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 533
    const-string v2, "isPhoneLockState : rcs switch is disabled"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return v3

    .line 537
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method isRegistrationSupported(Lcom/sec/ims/ImsRegistration;)Z
    .locals 4
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 199
    const-string/jumbo v0, "presence"

    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CapabilityUtil"

    if-nez v0, :cond_0

    const-string/jumbo v0, "options"

    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const-string v0, "isRegistrationSupported: no presence and options in service list"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v1

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 205
    const-string v0, "isRegistrationSupported: getRcsStrategy is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v1

    .line 209
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkImsiBasedRegi(Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    .line 210
    .local v0, "isImsiBasedRegi":Z
    if-eqz v0, :cond_2

    .line 211
    const-string v3, "isRegistrationSupported: isImsiBasedRegi is true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return v1

    .line 215
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method onImsSettingsUpdate(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 593
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(I)V

    .line 595
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 596
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 597
    const-string v0, "omadm/./3GPP_IMS/EAB_SETTING"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getBadEventProgress(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->changeParalysed(ZI)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->reset(I)V

    .line 603
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 604
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->changeParalysed(ZI)V

    .line 605
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 606
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v0, :cond_1

    .line 607
    invoke-interface {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateOmaDmNodes(I)V

    .line 609
    :cond_1
    return-void

    .line 613
    .end local v0    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    const-string v1, "CapabilityUtil"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 618
    :cond_3
    const-string v0, "onImsSettingsUpdate: refresh configuration"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->readConfig(I)V

    .line 622
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 623
    .restart local v0    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v0, :cond_4

    .line 624
    invoke-interface {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateOmaDmNodes(I)V

    .line 627
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isPollingPeriodUpdated()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v1

    .line 628
    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 629
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 631
    :cond_5
    return-void

    .line 614
    .end local v0    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_6
    :goto_1
    const-string v0, "onImsSettingsUpdate: not ready"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void
.end method

.method onNetworkChanged(Landroid/content/Context;Lcom/sec/internal/constants/ims/os/NetworkEvent;IILjava/util/Map;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p3, "phoneId"    # I
    .param p4, "mAvailablePhoneId"    # I
    .param p6, "mNetworkEvent"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p7, "mNetworkClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/constants/ims/os/NetworkEvent;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Lcom/sec/internal/constants/ims/os/NetworkEvent;",
            "I)V"
        }
    .end annotation

    .line 635
    .local p5, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityUtil"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 637
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "onNetworkChanged: dual rcs is true."

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_0
    if-eq p4, p3, :cond_1

    .line 640
    const-string v0, "onNetworkChanged: mAvailablePhoneId = ! phoneId"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 641
    return-void

    .line 644
    :cond_1
    :goto_0
    iget v0, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v0

    .line 645
    .local v0, "networkclass":I
    const/4 v2, 0x1

    .line 647
    .local v2, "doUpdate":Z
    iget v3, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-nez v3, :cond_2

    iget-boolean v3, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eqz v3, :cond_3

    :cond_2
    if-eqz p6, :cond_4

    iget v3, p6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v4, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v3, v4, :cond_4

    .line 649
    :cond_3
    return-void

    .line 651
    :cond_4
    if-ne p7, v0, :cond_5

    .line 652
    const/4 v2, 0x0

    .line 655
    :cond_5
    iget-boolean v3, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eqz v3, :cond_7

    .line 656
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-nez v3, :cond_7

    .line 657
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setNetworkType(I)V

    goto :goto_1

    .line 659
    :cond_7
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget v4, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setNetworkType(I)V

    .line 662
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 663
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setNetworkClass(I)V

    .line 664
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 665
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_8

    if-eqz v2, :cond_8

    .line 667
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v4, 0x1

    invoke-virtual {v1, p3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    goto :goto_4

    .line 668
    :cond_8
    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 669
    const-string v4, "onNetworkChanged: setOwnCapabilities(false) is called"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_c

    .line 671
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v5, 0x2

    if-ge v1, v5, :cond_b

    .line 672
    invoke-static {p1, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result v5

    .line 674
    .local v5, "rcsEnabled":Z
    if-nez v5, :cond_9

    .line 675
    goto :goto_3

    .line 678
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 679
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 680
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v6, v1, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    .line 671
    .end local v5    # "rcsEnabled":Z
    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_b
    goto :goto_4

    .line 684
    :cond_c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 685
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 686
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    .line 690
    :cond_d
    :goto_4
    return-void
.end method

.method onServiceSwitched(ILandroid/content/ContentValues;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "switchStatus"    # Landroid/content/ContentValues;
    .param p5, "mCapabilityModuleOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/ContentValues;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 738
    .local p3, "mPresenceSwitchOnList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local p4, "mOptionsSwitchOnList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const-string v0, "CapabilityUtil"

    const-string/jumbo v1, "onServiceSwitched: "

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 740
    const-string/jumbo v1, "presence"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 756
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 740
    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 741
    .local v1, "isPresenceOn":Z
    :goto_0
    const-string/jumbo v5, "options"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    .line 742
    .local v5, "isOptionsOn":Z
    :goto_1
    const/4 v6, 0x0

    .line 744
    .local v6, "isChanged":Z
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eq v7, v1, :cond_2

    .line 745
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v7, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setPresenceSwitch(IZ)V

    .line 746
    const/4 v6, 0x1

    .line 747
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onServiceSwitched: presence changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, p1, v7}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 749
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eq v7, v5, :cond_3

    .line 750
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v7, p1, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->settOptionsSwitch(IZ)V

    .line 751
    const/4 v6, 0x1

    .line 752
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onServiceSwitched: options changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, p1, v7}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 755
    :cond_3
    if-eqz v6, :cond_5

    .line 756
    invoke-interface {p3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p4, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 757
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCapabilityModuleOn(Z)V

    .line 758
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->stop()V

    goto :goto_2

    .line 760
    :cond_4
    if-nez p5, :cond_5

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCapabilityModuleOn(Z)V

    .line 762
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->start()V

    .line 766
    :cond_5
    :goto_2
    return-void
.end method

.method onUserSwitched()V
    .locals 6

    .line 770
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v0

    .line 771
    .local v0, "userId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitched: userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 773
    .local v2, "phoneId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 774
    .local v3, "urisToRequest":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    monitor-enter v3

    .line 775
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 776
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putUrisToRequestList(ILjava/util/List;)V

    .line 778
    .end local v2    # "phoneId":Ljava/lang/Integer;
    .end local v3    # "urisToRequest":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    goto :goto_0

    .line 776
    .restart local v2    # "phoneId":Ljava/lang/Integer;
    .restart local v3    # "urisToRequest":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 779
    .end local v2    # "phoneId":Ljava/lang/Integer;
    .end local v3    # "urisToRequest":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getDefaultPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 780
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getDefaultPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isDisableInitialScan()Z

    move-result v1

    if-nez v1, :cond_1

    .line 781
    const-string v1, "CapabilityUtil"

    const-string/jumbo v2, "onUserSwitched: start ContactCache"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->stop()V

    .line 783
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->start()V

    .line 784
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    .line 786
    :cond_1
    return-void
.end method

.method sendGateMessage(Lcom/sec/ims/util/ImsUri;JI)V
    .locals 9
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "availFeatures"    # J
    .param p4, "phoneId"    # I

    .line 542
    const-string v0, ""

    const-string v1, "CapabilityUtil"

    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    const-string/jumbo v2, "sendGateMessage"

    invoke-static {v1, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 545
    .local v2, "util":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 546
    .local v3, "phoneNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v3, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "nationalNumber":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, "countryCode":Ljava/lang/String;
    const-string v5, "OFF"

    .line 549
    .local v5, "capOnOff":Ljava/lang/String;
    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v6, v6

    invoke-static {p2, p3, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v6

    if-nez v6, :cond_0

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    int-to-long v6, v6

    .line 550
    invoke-static {p2, p3, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 551
    :cond_0
    const-string v6, "ON"

    move-object v5, v6

    .line 554
    :cond_1
    const-string v6, "GATE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<GATE-M>IPME_CAPABILITY_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "</GATE-M>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v0    # "nationalNumber":Ljava/lang/String;
    .end local v2    # "util":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .end local v3    # "phoneNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v4    # "countryCode":Ljava/lang/String;
    .end local v5    # "capOnOff":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .end local v0    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    :goto_0
    return-void
.end method

.method sendRCSCInfoToHQM(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 585
    if-gez p1, :cond_0

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendRCSCInfoToHQM : phoneId is invaild "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 p1, 0x0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->sendRCSCInfoToHQM()V

    .line 590
    return-void
.end method

.method sendRCSLInfoToHQM(Landroid/content/Context;ZI)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLatching"    # Z
    .param p3, "phoneId"    # I

    .line 567
    if-gez p3, :cond_0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendRCSLInfoToHQM : phoneId is invaild "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 p3, 0x0

    .line 572
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 573
    .local v0, "rcsmKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    xor-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LTCH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v1, "RCSL"

    invoke-static {p1, v1, p3, v0}, Lcom/sec/internal/ims/diagnosis/RcsHqmAgent;->sendRCSInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Z

    move-result v1

    return v1
.end method

.method updateExpCapInfoExpiry(Lcom/sec/ims/options/Capabilities;JI)I
    .locals 17
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "features"    # J
    .param p4, "phoneId"    # I

    .line 133
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->getExpCapInfoExpiry()I

    move-result v3

    .line 134
    .local v3, "expCapInfoExpiry":I
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v5

    .line 135
    .local v5, "mCapabilitiesCache":Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    invoke-virtual {v5, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->isAvailable(J)Z

    move-result v6

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->isAvailable(J)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v6, v7, :cond_1

    .line 137
    invoke-virtual {v5, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->isAvailable(J)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v9

    .line 139
    .local v6, "isCapChanged":Z
    :goto_1
    const-string v7, "CapabilityUtil"

    if-eqz v3, :cond_6

    if-eqz v6, :cond_2

    goto :goto_3

    .line 144
    :cond_2
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 145
    .local v10, "current":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    int-to-long v13, v3

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    cmp-long v11, v11, v13

    if-ltz v11, :cond_3

    move v8, v9

    .line 146
    .local v8, "needUpdate":Z
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateExpCapInfoExpiry: expCapInfoExpiry = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", needUpdate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v2, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    if-eqz v8, :cond_5

    .line 149
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    sget-object v12, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->exponentialCapInfoExpiry:[I

    array-length v13, v12

    sub-int/2addr v13, v9

    if-ge v11, v13, :cond_5

    .line 150
    aget v12, v12, v11

    if-ne v3, v12, :cond_4

    .line 151
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateExpCapInfoExpiry: increase to "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->exponentialCapInfoExpiry:[I

    add-int/lit8 v13, v11, 0x1

    aget v12, v12, v13

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v2, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    sget-object v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->exponentialCapInfoExpiry:[I

    add-int/lit8 v9, v11, 0x1

    aget v7, v7, v9

    return v7

    .line 149
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 156
    .end local v11    # "i":I
    :cond_5
    return v3

    .line 140
    .end local v8    # "needUpdate":Z
    .end local v10    # "current":Ljava/util/Date;
    :cond_6
    :goto_3
    const-string/jumbo v9, "updateExpCapInfoExpiry: initiates expCapInfoExpiry"

    invoke-static {v7, v2, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    sget-object v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->exponentialCapInfoExpiry:[I

    aget v7, v7, v8

    return v7
.end method
