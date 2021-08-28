.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;
.super Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;
.source "CapabilityServiceImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SERVICE_ID_CALL_COMPOSER:Ljava/lang/String; = "gsma.callcomposer"

.field private static final SERVICE_ID_POST_CALL:Ljava/lang/String; = "gsma.callunanswered"

.field private static final SERVICE_ID_SHARED_MAP:Ljava/lang/String; = "gsma.sharedmap"

.field private static final SERVICE_ID_SHARED_SKETCH:Ljava/lang/String; = "gsma.sharedsketch"


# instance fields
.field private mCapabilitiesListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/capability/ICapabilitiesListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

.field private mContactCapalitiesListeners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/capability/ICapabilitiesListener;",
            ">;>;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mServiceListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private serviceEventListener:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;-><init>()V

    .line 68
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    .line 74
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilitiesListeners:Landroid/os/RemoteCallbackList;

    .line 80
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContactCapalitiesListeners:Ljava/util/Hashtable;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 97
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->serviceEventListener:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;

    .line 102
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContext:Landroid/content/Context;

    .line 108
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContext:Landroid/content/Context;

    .line 109
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl$1;-><init>(Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->serviceEventListener:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;

    .line 141
    nop

    .line 142
    const-string/jumbo v1, "options"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 144
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    .line 145
    .local v0, "phoneCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 146
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->serviceEventListener:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "phoneCount":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    .line 54
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->notifyOwnCapabilityChange()V

    return-void
.end method

.method private notifyListeners(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/os/RemoteCallbackList;)V
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/gsma/services/rcs/capability/Capabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/capability/Capabilities;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/capability/ICapabilitiesListener;",
            ">;)V"
        }
    .end annotation

    .line 362
    .local p3, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/gsma/services/rcs/capability/ICapabilitiesListener;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : notifyListeners() contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " capabilities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    :try_start_0
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 367
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 368
    invoke-virtual {p3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    invoke-interface {v3, v0, p2}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener;->onCapabilitiesReceived(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 372
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 370
    :catch_2
    move-exception v1

    .line 371
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 376
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    nop

    .line 379
    :goto_2
    :try_start_1
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 384
    :goto_3
    goto :goto_4

    .line 382
    :catch_3
    move-exception v1

    .line 383
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_4

    .line 380
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_3

    .line 385
    :goto_4
    return-void
.end method

.method private notifyOwnCapabilityChange()V
    .locals 3

    .line 569
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyOwnCapabilityChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 573
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/gsma/services/rcs/capability/CapabilitiesLog;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "own"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 575
    return-void
.end method

.method public static transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 18
    .param p0, "capabilities"    # Lcom/sec/ims/options/Capabilities;

    .line 492
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 493
    .local v1, "bValid":Z
    const/4 v2, 0x0

    .line 494
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 495
    .local v3, "bAutomata":Z
    const-wide/16 v4, 0x0

    .line 497
    .local v4, "timestamp":J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v6

    .line 498
    .local v6, "feathres":J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v8

    .line 499
    .local v8, "extList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v1

    .line 500
    if-eqz v1, :cond_0

    .line 501
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v9

    goto :goto_0

    .line 504
    :cond_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object v2, v9

    .line 507
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 510
    :cond_1
    const/4 v3, 0x0

    .line 511
    sget-object v9, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "transferCapabilities, bValid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", bAutomata:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v9, 0x0

    .line 514
    .local v9, "newFeatures":I
    sget v10, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v10, v10

    and-long/2addr v10, v6

    sget v12, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    .line 516
    or-int/lit8 v9, v9, 0x8

    .line 520
    :cond_2
    sget v10, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v10, v10

    and-long/2addr v10, v6

    sget v12, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 522
    or-int/lit8 v9, v9, 0x10

    .line 526
    :cond_3
    sget v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v10, v10

    and-long/2addr v10, v6

    sget v12, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    sget v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v10, v10

    and-long/2addr v10, v6

    sget v12, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 530
    :cond_4
    or-int/lit8 v9, v9, 0x2

    .line 533
    :cond_5
    sget v10, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v10, v10

    and-long/2addr v10, v6

    sget v12, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    .line 535
    or-int/lit8 v9, v9, 0x1

    .line 539
    :cond_6
    sget v10, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v10, v10

    and-long/2addr v10, v6

    sget v12, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    .line 541
    or-int/lit8 v9, v9, 0x4

    move/from16 v16, v9

    goto :goto_1

    .line 539
    :cond_7
    move/from16 v16, v9

    .line 545
    .end local v9    # "newFeatures":I
    .local v16, "newFeatures":I
    :goto_1
    sget-wide v9, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v0, v9, v10}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 547
    const-string v9, "gsma.callcomposer"

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_8
    sget-wide v9, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v0, v9, v10}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 552
    const-string v9, "gsma.sharedmap"

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_9
    sget-wide v9, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {v0, v9, v10}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 557
    const-string v9, "gsma.sharedsketch"

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_a
    sget-wide v9, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {v0, v9, v10}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 562
    const-string v9, "gsma.callunanswered"

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_b
    new-instance v17, Lcom/gsma/services/rcs/capability/Capabilities;

    move-object/from16 v9, v17

    move/from16 v10, v16

    move-object v11, v2

    move v12, v3

    move-wide v13, v4

    move v15, v1

    invoke-direct/range {v9 .. v15}, Lcom/gsma/services/rcs/capability/Capabilities;-><init>(ILjava/util/Set;ZJZ)V

    return-object v17
.end method


# virtual methods
.method public addCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilitiesListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 415
    monitor-exit v0

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 4
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "listener"    # Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "start : addContactCapabilitiesListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "number":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContactCapalitiesListeners:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 446
    .local v2, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/gsma/services/rcs/capability/ICapabilitiesListener;>;"
    if-nez v2, :cond_0

    .line 447
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    .line 448
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContactCapalitiesListeners:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_0
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 451
    nop

    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/gsma/services/rcs/capability/ICapabilitiesListener;>;"
    monitor-exit v0

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 186
    return-void
.end method

.method public getAllContactCapabilities()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/capability/Capabilities;",
            ">;"
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : getAllContactCapabilities()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, "retMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 284
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    .line 285
    .local v1, "capabilitiesArray":[Lcom/sec/ims/options/Capabilities;
    if-nez v1, :cond_0

    .line 286
    const/4 v2, 0x0

    return-object v2

    .line 288
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v2

    .line 291
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 292
    .local v4, "capabilities":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "dailNum":Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .end local v4    # "capabilities":Lcom/sec/ims/options/Capabilities;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "capabilitiesArray":[Lcom/sec/ims/options/Capabilities;
    .end local v5    # "dailNum":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 298
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-object v0
.end method

.method public getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 7
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "telUri":Ljava/lang/String;
    const/4 v1, 0x0

    .line 260
    .local v1, "capabilities":Lcom/sec/ims/options/Capabilities;
    const/4 v2, 0x0

    .line 262
    .local v2, "ret":Lcom/gsma/services/rcs/capability/Capabilities;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    sget-object v5, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 263
    invoke-virtual {v5}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v5

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v6

    .line 262
    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    move-object v1, v3

    .line 264
    if-eqz v1, :cond_0

    .line 265
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 270
    :cond_0
    nop

    .line 272
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContactCapabilities: contact = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v2

    .line 267
    :catch_0
    move-exception v3

    .line 268
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 269
    const/4 v4, 0x0

    return-object v4
.end method

.method public getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "capabilities":Lcom/sec/ims/options/Capabilities;
    const/4 v1, 0x0

    .line 234
    .local v1, "ret":Lcom/gsma/services/rcs/capability/Capabilities;
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    move-object v0, v2

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 241
    :cond_0
    nop

    .line 243
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMyCapabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-object v1

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 240
    const/4 v3, 0x0

    return-object v3
.end method

.method public getServiceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 483
    const/4 v0, 0x2

    return v0
.end method

.method public isServiceRegistered()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 161
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 162
    .local v0, "manager":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 163
    return v1

    .line 166
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 167
    .local v2, "registration":[Lcom/sec/ims/ImsRegistration;
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 168
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    const-string/jumbo v6, "options"

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 169
    const-string/jumbo v6, "presence"

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 167
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    .restart local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_2
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 174
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_3
    return v1
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 7
    .param p1, "registered"    # Z
    .param p2, "code"    # Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 205
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : notifyRegistrationEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 211
    if-eqz p1, :cond_0

    .line 212
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_1

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :goto_1
    goto :goto_2

    .line 216
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t notify listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 221
    .end local v1    # "N":I
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public receiveCapabilities(Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/sec/ims/options/Capabilities;

    .line 336
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiveCapabilities() contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " capabilities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v1

    .line 342
    .local v1, "c":Lcom/gsma/services/rcs/capability/Capabilities;
    invoke-static {p1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilitiesListeners:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->notifyListeners(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/os/RemoteCallbackList;)V

    .line 346
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContactCapalitiesListeners:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 348
    .local v3, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/gsma/services/rcs/capability/ICapabilitiesListener;>;"
    if-eqz v3, :cond_0

    .line 349
    invoke-direct {p0, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->notifyListeners(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/os/RemoteCallbackList;)V

    .line 351
    .end local v1    # "c":Lcom/gsma/services/rcs/capability/Capabilities;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/gsma/services/rcs/capability/ICapabilitiesListener;>;"
    :cond_0
    monitor-exit v0

    .line 352
    return-void

    .line 351
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilitiesListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 428
    monitor-exit v0

    .line 429
    return-void

    .line 428
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "listener"    # Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "start : removeContactCapabilitiesListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "number":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContactCapalitiesListeners:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 469
    .local v2, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/gsma/services/rcs/capability/ICapabilitiesListener;>;"
    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 472
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/gsma/services/rcs/capability/ICapabilitiesListener;>;"
    :cond_0
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 197
    return-void
.end method

.method public requestAllContactsCapabilities()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 400
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : requestAllContactsCapabilities()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v0, "com.sec.internal.ims.servicemodules.options.poll_timeout"

    .line 402
    .local v0, "INTENT_PERIODIC_POLL_TIMEOUT":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.internal.ims.servicemodules.options.poll_timeout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 404
    return-void
.end method

.method public requestContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 318
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : requestContactCapabilities(String contact)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "telUri":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 323
    invoke-virtual {v3}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v3

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v4

    .line 322
    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    nop

    .line 327
    .end local v0    # "telUri":Ljava/lang/String;
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
