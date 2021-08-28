.class public Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;
.super Lcom/sec/internal/ims/core/handler/RegistrationHandler;
.source "ResipRegistrationManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResipRegiMgr"

.field private static final SHIP_BUILD:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

.field protected mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field protected mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mUaHandler:Landroid/os/Handler;

.field protected mUaHandlerThread:Landroid/os/HandlerThread;

.field protected final mUaList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/UserAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->SHIP_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 110
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/RegistrationHandler;-><init>(Landroid/os/Looper;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandler:Landroid/os/Handler;

    .line 95
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandlerThread:Landroid/os/HandlerThread;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    .line 112
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    .line 113
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 114
    invoke-static {p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 115
    return-void
.end method

.method private configureMedia(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .locals 8
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 371
    const-string v0, "ResipRegiMgr"

    const-string v1, "configureMedia:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v0, ""

    .line 376
    .local v0, "filteredHwSupportedCodecs":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "com.sec.internal.ims.core.handler.secims.ResipMediaHandler"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 377
    .local v3, "resipMediaClass":Ljava/lang/Class;
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getMediaHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    move-result-object v4

    .line 378
    .local v4, "mediaObj":Ljava/lang/Object;
    const-string v5, "getHwSupportedVideoCodecs"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 379
    .local v5, "method":Ljava/lang/reflect/Method;
    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoCodec()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 384
    .end local v3    # "resipMediaClass":Ljava/lang/Class;
    .end local v4    # "mediaObj":Ljava/lang/Object;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 382
    :catch_0
    move-exception v3

    .line 383
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_1

    .line 380
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v3

    .line 381
    .restart local v3    # "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    goto :goto_0

    .line 386
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->newBuilder()Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 387
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 388
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioPortStart()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 389
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioDscp()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioDscp(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 390
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnbbePayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 391
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnboaPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrOaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 392
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwbbePayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrWbPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 393
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwboaPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrWbOaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 394
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmropenPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrOpenPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 395
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDtmfNbPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDtmfPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 396
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDtmfWbPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDtmfWbPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 397
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnboaMaxRed()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrOaMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 398
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnbbeMaxRed()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrBeMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 399
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwboaMaxRed()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrOaWbMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 400
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwbbeMaxRed()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrBeWbMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 401
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsMaxRed()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 402
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnbMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 403
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwbMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrWbMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 404
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioAS()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 405
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioRS()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 406
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioRR()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 407
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPTime()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setPTime(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 408
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMaxPTime()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setMaxPTime(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 409
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 410
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoPortStart()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 411
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getFramerate()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setFrameRate(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 412
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDisplayFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDisplayFormat(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 413
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDisplayFormatHevc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDisplayFormatHevc(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 414
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPacketizationMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setPacketizationMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 415
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265QvgaPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265QvgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 416
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265QvgalPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265QvgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 417
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265VgaPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265VgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 418
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265VgalPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265VgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 419
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265Hd720pPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265Hd720pPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 420
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265Hd720plPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265Hd720pLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 421
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264720pPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264720pPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 422
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264720plPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264720pLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 423
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264VgaPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264VgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 424
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264VgalPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264VgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 425
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264QvgaPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264QvgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 426
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264QvgalPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264QvgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 427
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264CifPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264CifPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 428
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264CiflPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264CifLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 429
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH263QcifPayload()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH263QcifPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 430
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoAS()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 431
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoRS()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 432
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoRR()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 433
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextAS()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 434
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextRS()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 435
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextRR()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 436
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextPort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 437
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioAvpf()I

    move-result v4

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_2

    :cond_0
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 438
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioSrtp()I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_3

    :cond_1
    move v4, v1

    :goto_3
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 439
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoAvpf()I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_4

    :cond_2
    move v4, v1

    :goto_4
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 440
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoSrtp()I

    move-result v4

    if-ne v4, v2, :cond_3

    move v4, v2

    goto :goto_5

    :cond_3
    move v4, v1

    :goto_5
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 441
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSupportVideoCapabilities()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoCapabilities(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 442
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getRTPTimeout()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setRtpTimeout(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 443
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getRTCPTimeout()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setRtcpTimeout(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 444
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getIgnoreRtcpTimeoutOnHoldCall()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setIgnoreRtcpTimeoutOnHoldCall(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 445
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableRtcpOnActiveCall()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEnableRtcpOnActiveCall(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 446
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableAvSync()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEnableAvSync(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 447
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableScr()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEnableScr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 448
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioRtcpXr()I

    move-result v4

    if-ne v4, v2, :cond_4

    move v4, v2

    goto :goto_6

    :cond_4
    move v4, v1

    :goto_6
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioRtcpXr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 449
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoRtcpXr()I

    move-result v4

    if-ne v4, v2, :cond_5

    move v4, v2

    goto :goto_7

    :cond_5
    move v4, v1

    :goto_7
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoRtcpXr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 450
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDtmfMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDtmfMode(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v3

    .line 451
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableEvsCodec()I

    move-result v4

    if-ne v4, v2, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEnableEvsCodec(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 452
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsDiscontinuousTransmission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsDiscontinuousTransmission(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 453
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsDtxRecv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsDtxRecv(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 454
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsHeaderFull()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsHeaderFull(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 455
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsModeSwitch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsModeSwitch(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 456
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsChannelSend()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsChannelSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 457
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsChannelRecv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsChannelRecv(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 458
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsChannelAwareReceive()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsChannelAwareReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 459
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsCodecModeRequest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsCodecModeRequest(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 460
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBitRateSend()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBitRateSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 461
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBitRateReceive()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBitRateReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 462
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthSend()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBandwidthSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 463
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthReceive()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBandwidthReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 464
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsPayload()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsPayload(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 465
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvs2ndPayload()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvs2ndPayload(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 466
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsDefaultBandwidth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsDefaultBandwidth(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 467
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsDefaultBitrate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsDefaultBitrate(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 468
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsPayloadExt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsPayloadExt(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 469
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBitRateSendExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBitRateSendExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 470
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBitRateReceiveExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBitRateReceiveExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 471
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthSendExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBandwidthSendExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 472
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthReceiveExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBandwidthReceiveExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 473
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsLimitedCodec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsLimitedCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v1

    .line 475
    .local v1, "builder":Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->build()Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    move-result-object v2

    return-object v2
.end method

.method private configureRCS(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/constants/Mno;ZI)V
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "simMno"    # Lcom/sec/internal/constants/Mno;
    .param p3, "requestregi"    # Z
    .param p4, "phoneId"    # I

    .line 1057
    const-string v0, "ResipRegiMgr"

    const-string v1, "configureRCS:"

    invoke-static {v0, p4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v0, p2, v1, p3, p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsConfig(Landroid/content/Context;Lcom/sec/internal/constants/Mno;Lcom/sec/ims/settings/ImsProfile;ZI)Lcom/sec/internal/constants/ims/config/RcsConfig;

    move-result-object v0

    .line 1060
    .local v0, "config":Lcom/sec/internal/constants/ims/config/RcsConfig;
    if-eqz v0, :cond_1

    .line 1061
    if-nez p3, :cond_0

    .line 1062
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getSuspendUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configRCSOff(ILjava/lang/String;)V

    goto :goto_0

    .line 1064
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configRCS(ILcom/sec/internal/constants/ims/config/RcsConfig;)V

    .line 1067
    :cond_1
    :goto_0
    return-void
.end method

.method private configureTimerTS(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 4
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "builder"    # Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 355
    const/16 v0, 0x7d00

    .line 356
    .local v0, "timerTS":I
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 357
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    .line 359
    const/16 v0, 0x3e8

    goto :goto_0

    .line 360
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    .line 362
    const v0, 0x30d40

    .line 364
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timerTS=%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResipRegiMgr"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerTS(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 367
    return-object p2
.end method

.method private createUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 63
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "ifacename"    # Ljava/lang/String;
    .param p3, "pcscf"    # Ljava/lang/String;
    .param p5, "ownCap"    # Lcom/sec/ims/options/Capabilities;
    .param p6, "domain"    # Ljava/lang/String;
    .param p7, "impu"    # Ljava/lang/String;
    .param p8, "impi"    # Ljava/lang/String;
    .param p9, "instanceId"    # Ljava/lang/String;
    .param p10, "uuid"    # Ljava/lang/String;
    .param p11, "cmcSaServerUrl"    # Ljava/lang/String;
    .param p12, "rcsBundle"    # Landroid/os/Bundle;
    .param p13, "regHandler"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;",
            ")",
            "Lcom/sec/internal/ims/core/handler/secims/UserAgent;"
        }
    .end annotation

    .line 481
    .local p4, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p10

    move-object/from16 v9, p12

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    .line 482
    .local v10, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPcscfHostname()Ljava/lang/String;

    move-result-object v11

    .line 483
    .local v11, "hostname":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v12

    .line 484
    .local v12, "pdn":I
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v13

    .line 485
    .local v13, "network":Landroid/net/Network;
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v14

    .line 486
    .local v14, "rat":I
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v15

    .line 488
    .local v15, "phoneId":I
    const/16 v16, 0x0

    const-string v2, "ResipRegiMgr"

    if-nez v1, :cond_0

    .line 489
    move-object/from16 v17, v11

    .end local v11    # "hostname":Ljava/lang/String;
    .local v17, "hostname":Ljava/lang/String;
    const-string v11, "createUserAgent: ifacename is null"

    invoke-static {v2, v15, v11}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 490
    return-object v16

    .line 493
    .end local v17    # "hostname":Ljava/lang/String;
    .restart local v11    # "hostname":Ljava/lang/String;
    :cond_0
    move-object/from16 v17, v11

    .end local v11    # "hostname":Ljava/lang/String;
    .restart local v17    # "hostname":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getTransportName()Ljava/lang/String;

    move-result-object v11

    .line 494
    .local v11, "transport":Ljava/lang/String;
    move-object/from16 v18, v11

    .end local v11    # "transport":Ljava/lang/String;
    .local v18, "transport":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v11

    .line 495
    .local v11, "isEmergency":Z
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getUsePrecondition()I

    move-result v19

    move/from16 v20, v14

    .end local v14    # "rat":I
    .local v20, "rat":I
    if-eqz v19, :cond_1

    const/16 v19, 0x1

    goto :goto_0

    :cond_1
    const/16 v19, 0x0

    :goto_0
    move/from16 v21, v19

    .line 496
    .local v21, "isPrecondEnabled":Z
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getPrecondtionInitialSendrecv()Z

    move-result v14

    .line 497
    .local v14, "isPrecondInitialSendrecv":Z
    move/from16 v22, v14

    .end local v14    # "isPrecondInitialSendrecv":Z
    .local v22, "isPrecondInitialSendrecv":Z
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getSessionExpire()I

    move-result v14

    .line 498
    .local v14, "sessionExpires":I
    move/from16 v23, v14

    .end local v14    # "sessionExpires":I
    .local v23, "sessionExpires":I
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getMinSe()I

    move-result v14

    .line 499
    .local v14, "minSe":I
    move/from16 v24, v14

    .end local v14    # "minSe":I
    .local v24, "minSe":I
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getSessionRefresher()Ljava/lang/String;

    move-result-object v14

    .line 500
    .local v14, "sessionRefresher":Ljava/lang/String;
    move-object/from16 v25, v14

    .end local v14    # "sessionRefresher":Ljava/lang/String;
    .local v25, "sessionRefresher":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getRegExpire()I

    move-result v14

    .line 501
    .local v14, "regExpires":I
    move/from16 v26, v14

    .end local v14    # "regExpires":I
    .local v26, "regExpires":I
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getMssSize()I

    move-result v14

    .line 502
    .local v14, "mssPacketSize":I
    move/from16 v27, v14

    .end local v14    # "mssPacketSize":I
    .local v27, "mssPacketSize":I
    invoke-direct {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getPdnName(I)Ljava/lang/String;

    move-result-object v14

    .line 503
    .local v14, "pdnName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 504
    .local v6, "isGcfConfigEnable":Z
    move/from16 v28, v6

    .end local v6    # "isGcfConfigEnable":Z
    .local v28, "isGcfConfigEnable":Z
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getSipMobility()I

    move-result v6

    .line 505
    .local v6, "sipMobility":I
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->isEnableGruu()I

    move-result v29

    if-eqz v29, :cond_2

    const/16 v29, 0x1

    goto :goto_1

    :cond_2
    const/16 v29, 0x0

    :goto_1
    move/from16 v30, v29

    .line 506
    .local v30, "isEnableGruu":Z
    move/from16 v29, v6

    .end local v6    # "sipMobility":I
    .local v29, "sipMobility":I
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->isEnableSessionId()Z

    move-result v6

    .line 507
    .local v6, "isEnableSessionId":Z
    move/from16 v31, v6

    .end local v6    # "isEnableSessionId":Z
    .local v31, "isEnableSessionId":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getAudioEngineType()I

    move-result v6

    .line 508
    .local v6, "audioEngineType":I
    move/from16 v32, v6

    .end local v6    # "audioEngineType":I
    .local v32, "audioEngineType":I
    const/4 v6, 0x0

    .line 509
    .local v6, "isNsdsServiceEnabled":Z
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getSubscribeForReg()I

    move-result v33

    if-eqz v33, :cond_3

    const/16 v33, 0x1

    goto :goto_2

    :cond_3
    const/16 v33, 0x0

    :goto_2
    move/from16 v34, v33

    .line 510
    .local v34, "isSubscribeReg":Z
    move/from16 v33, v6

    .end local v6    # "isNsdsServiceEnabled":Z
    .local v33, "isNsdsServiceEnabled":Z
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v6

    .line 511
    .local v6, "ttyType":I
    move/from16 v35, v6

    .end local v6    # "ttyType":I
    .local v35, "ttyType":I
    const-string/jumbo v6, "support_upgrade_precondition"

    invoke-virtual {v10, v6}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 512
    .local v6, "isSupportUpgradePrecondition":Z
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v36

    .line 513
    .local v36, "isSimMobility":Z
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getAcb()Ljava/util/List;

    move-result-object v5

    .line 514
    .local v5, "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v37, v5

    .end local v5    # "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v37, "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupportUpgradePrecondition "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v15, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 517
    if-eqz v11, :cond_5

    .line 518
    const-string v5, "mmtel-video"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 519
    sget-object v5, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    move v7, v6

    .end local v6    # "isSupportUpgradePrecondition":Z
    .local v7, "isSupportUpgradePrecondition":Z
    invoke-static {v5}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 520
    sget-object v5, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 521
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v6, "createUserAgent: add mmtel, mmtel-video to Capabilities for E-REGI"

    invoke-virtual {v5, v15, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_3

    .line 523
    .end local v7    # "isSupportUpgradePrecondition":Z
    .restart local v6    # "isSupportUpgradePrecondition":Z
    :cond_4
    move v7, v6

    .end local v6    # "isSupportUpgradePrecondition":Z
    .restart local v7    # "isSupportUpgradePrecondition":Z
    sget-object v5, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 524
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v6, "createUserAgent: add mmtel to Capabilities for E-REGI"

    invoke-virtual {v5, v15, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 526
    :goto_3
    invoke-static {v15}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v15}, Lcom/sec/internal/ims/util/ImsUtil;->isRttModeOnFromCallSettings(Landroid/content/Context;I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setRTTMode(Ljava/lang/Boolean;)V

    goto :goto_4

    .line 517
    .end local v7    # "isSupportUpgradePrecondition":Z
    .restart local v6    # "isSupportUpgradePrecondition":Z
    :cond_5
    move v7, v6

    .line 529
    .end local v6    # "isSupportUpgradePrecondition":Z
    .restart local v7    # "isSupportUpgradePrecondition":Z
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createUserAgent: ownCap= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v15, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 531
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v5

    move/from16 v38, v7

    .end local v7    # "isSupportUpgradePrecondition":Z
    .local v38, "isSupportUpgradePrecondition":Z
    sget v7, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    move-object/from16 v39, v10

    .end local v10    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .local v39, "profile":Lcom/sec/ims/settings/ImsProfile;
    int-to-long v9, v7

    cmp-long v5, v5, v9

    if-nez v5, :cond_7

    .line 532
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    const-string/jumbo v5, "smsip"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 533
    const-string v5, "createUserAgent: empty capabilities. smsip only registration"

    invoke-static {v2, v15, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5

    .line 535
    :cond_6
    const-string v5, "createUserAgent: empty capabilities. fail to create"

    invoke-static {v2, v15, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 536
    return-object v16

    .line 540
    :cond_7
    :goto_5
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 541
    .local v5, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    new-instance v6, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v43

    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 v42, v9

    move-object/from16 v44, v10

    move-object/from16 v45, v4

    move-object/from16 v46, v5

    move-object/from16 v47, v3

    invoke-direct/range {v40 .. v47}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/core/handler/secims/IStackIF;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    move-object v3, v6

    .line 543
    .local v3, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createUserAgent: pdn "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") services "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v15, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createUserAgent: uuid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v15, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 547
    const/4 v4, 0x0

    .line 548
    .local v4, "netId":Ljava/lang/Long;
    invoke-virtual/range {v39 .. v39}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    .line 549
    .local v6, "cmcType":I
    const/4 v7, 0x7

    if-eq v6, v7, :cond_9

    const/16 v7, 0x8

    if-eq v6, v7, :cond_9

    const/4 v7, 0x5

    if-ne v6, v7, :cond_8

    goto :goto_6

    .line 556
    :cond_8
    invoke-virtual {v13}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_7

    .line 554
    :cond_9
    :goto_6
    invoke-direct {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getP2pNetworkHandle(I)Ljava/lang/Long;

    move-result-object v4

    .line 559
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createUserAgent: profile="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v39 .. v39}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " iface="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " NetId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v15, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 561
    invoke-virtual/range {v39 .. v39}, Lcom/sec/ims/settings/ImsProfile;->getRegistrationAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 562
    .local v7, "regiAlgo":Ljava/lang/String;
    if-nez v7, :cond_a

    .line 563
    const-string v7, "md5"

    .line 566
    :cond_a
    invoke-virtual/range {v39 .. v39}, Lcom/sec/ims/settings/ImsProfile;->getAuthAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 567
    .local v9, "authAlgo":Ljava/lang/String;
    if-nez v9, :cond_b

    .line 568
    const-string v9, "both"

    .line 570
    :cond_b
    invoke-virtual/range {v39 .. v39}, Lcom/sec/ims/settings/ImsProfile;->getEncAlgorithm()Ljava/lang/String;

    move-result-object v10

    .line 571
    .local v10, "encAlgo":Ljava/lang/String;
    if-nez v10, :cond_c

    .line 572
    const-string v10, "all"

    .line 575
    :cond_c
    const/16 v40, 0x0

    .line 577
    .local v40, "needAutoConf":I
    move/from16 v41, v6

    .end local v6    # "cmcType":I
    .local v41, "cmcType":I
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    move-object/from16 v42, v13

    move-object/from16 v13, v39

    .end local v39    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .local v13, "profile":Lcom/sec/ims/settings/ImsProfile;
    .local v42, "network":Landroid/net/Network;
    invoke-static {v6, v15, v13}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v6

    .line 578
    .local v6, "rcs_profile":Ljava/lang/String;
    move-object/from16 v39, v3

    .end local v3    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v39, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-static {v6}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfileType(Ljava/lang/String;)I

    move-result v3

    .line 580
    .local v3, "rcsProfile":I
    const/16 v43, 0x0

    .line 581
    .local v43, "realm":Ljava/lang/String;
    const-string v44, "CPM"

    .line 582
    .local v44, "imMsgTech":Ljava/lang/String;
    const-string v45, ""

    .line 583
    .local v45, "msrpTransType":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimer1()I

    move-result v46

    .line 584
    .local v46, "timerT1":I
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimer2()I

    move-result v47

    .line 585
    .local v47, "timerT2":I
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimer4()I

    move-result v48

    .line 586
    .local v48, "timerT4":I
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryBaseTime()I

    move-result v49

    .line 587
    .local v49, "regRetryBaseTime":I
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryMaxTime()I

    move-result v50

    .line 588
    .local v50, "regRetryMaxTime":I
    const/16 v51, 0x0

    .line 589
    .local v51, "useKeepAlive":Z
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getQValue()I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    .line 590
    .local v52, "qVal":Ljava/lang/Integer;
    move-object/from16 v53, v6

    .end local v6    # "rcs_profile":Ljava/lang/String;
    .local v53, "rcs_profile":Ljava/lang/String;
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 591
    .local v6, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v54

    .line 592
    .local v54, "serviceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {v54 .. v54}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isAutoConfigNeeded(Ljava/util/Set;)Z

    move-result v55

    if-eqz v55, :cond_d

    .line 593
    const/16 v40, 0x1

    .line 596
    :cond_d
    if-nez v40, :cond_e

    .line 597
    move/from16 v55, v12

    .end local v12    # "pdn":I
    .local v55, "pdn":I
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getPassword()Ljava/lang/String;

    move-result-object v12

    .line 598
    .local v12, "password":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v56, v6

    .end local v6    # "mno":Lcom/sec/internal/constants/Mno;
    .local v56, "mno":Lcom/sec/internal/constants/Mno;
    const-string v6, "createUserAgent: AUTOCONFIG_NOT_NEEDED password="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v15, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v57, v9

    move-object/from16 v6, v44

    move-object/from16 v9, v45

    move/from16 v58, v48

    move/from16 v59, v49

    move/from16 v60, v50

    move/from16 v8, v51

    move/from16 v44, v3

    move-object/from16 v45, v10

    move-object/from16 v3, v18

    move/from16 v10, v46

    move/from16 v18, v47

    goto/16 :goto_8

    .line 600
    .end local v55    # "pdn":I
    .end local v56    # "mno":Lcom/sec/internal/constants/Mno;
    .restart local v6    # "mno":Lcom/sec/internal/constants/Mno;
    .local v12, "pdn":I
    :cond_e
    move-object/from16 v56, v6

    move/from16 v55, v12

    .end local v6    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v12    # "pdn":I
    .restart local v55    # "pdn":I
    .restart local v56    # "mno":Lcom/sec/internal/constants/Mno;
    const-string/jumbo v6, "password"

    move-object/from16 v8, p12

    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 601
    .local v12, "password":Ljava/lang/String;
    const-string/jumbo v6, "realm"

    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 602
    const-string v6, "imMsgTech"

    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 603
    .end local v44    # "imMsgTech":Ljava/lang/String;
    .local v6, "imMsgTech":Ljava/lang/String;
    move/from16 v44, v3

    .end local v3    # "rcsProfile":I
    .local v44, "rcsProfile":I
    const-string v3, "msrpTransType"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 604
    .end local v45    # "msrpTransType":Ljava/lang/String;
    .local v3, "msrpTransType":Ljava/lang/String;
    move-object/from16 v45, v10

    .end local v10    # "encAlgo":Ljava/lang/String;
    .local v45, "encAlgo":Ljava/lang/String;
    const-string/jumbo v10, "transport"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 605
    .end local v18    # "transport":Ljava/lang/String;
    .local v10, "transport":Ljava/lang/String;
    move-object/from16 v18, v10

    .end local v10    # "transport":Ljava/lang/String;
    .restart local v18    # "transport":Ljava/lang/String;
    const-string/jumbo v10, "useKeepAlive"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v51

    .line 606
    const-string/jumbo v10, "qVal"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    .line 607
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v57, v9

    .end local v9    # "authAlgo":Ljava/lang/String;
    .local v57, "authAlgo":Ljava/lang/String;
    const-string v9, "getRcsConfig - password : "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-static {v12}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", imMsgTech : "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", msrpTransType : "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 607
    invoke-static {v2, v15, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 609
    const-string v9, "Timer_T1"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    .line 610
    const-string v9, "Timer_T2"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v47

    .line 611
    const-string v9, "Timer_T4"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v48

    .line 612
    const-string v9, "RegRetryBaseTime"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v49

    .line 613
    const-string v9, "RegRetryMaxTime"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v50

    move-object v9, v3

    move-object/from16 v3, v18

    move/from16 v10, v46

    move/from16 v18, v47

    move/from16 v58, v48

    move/from16 v59, v49

    move/from16 v60, v50

    move/from16 v8, v51

    .line 618
    .end local v46    # "timerT1":I
    .end local v47    # "timerT2":I
    .end local v48    # "timerT4":I
    .end local v49    # "regRetryBaseTime":I
    .end local v50    # "regRetryMaxTime":I
    .end local v51    # "useKeepAlive":Z
    .local v3, "transport":Ljava/lang/String;
    .local v8, "useKeepAlive":Z
    .local v9, "msrpTransType":Ljava/lang/String;
    .local v10, "timerT1":I
    .local v18, "timerT2":I
    .local v58, "timerT4":I
    .local v59, "regRetryBaseTime":I
    .local v60, "regRetryMaxTime":I
    :goto_8
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v46

    if-eqz v46, :cond_f

    invoke-static {v13}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v46

    if-nez v46, :cond_f

    .line 619
    move/from16 v46, v10

    .end local v10    # "timerT1":I
    .restart local v46    # "timerT1":I
    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v10, v13, v15}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    .line 620
    .local v10, "imsDmProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-direct {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureMedia(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    move-result-object v47

    .line 621
    .local v47, "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    move-object/from16 v48, v10

    .end local v10    # "imsDmProfile":Lcom/sec/ims/settings/ImsProfile;
    .local v48, "imsDmProfile":Lcom/sec/ims/settings/ImsProfile;
    const-string v10, "createUserAgent: imsDmProfile from DmProfileLoader"

    invoke-static {v2, v15, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 622
    .end local v48    # "imsDmProfile":Lcom/sec/ims/settings/ImsProfile;
    move-object/from16 v10, v47

    goto :goto_9

    .line 618
    .end local v46    # "timerT1":I
    .end local v47    # "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .local v10, "timerT1":I
    :cond_f
    move/from16 v46, v10

    .line 623
    .end local v10    # "timerT1":I
    .restart local v46    # "timerT1":I
    invoke-direct {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureMedia(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    move-result-object v47

    move-object/from16 v10, v47

    .line 627
    .local v10, "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    :goto_9
    move-object/from16 v47, v9

    .end local v9    # "msrpTransType":Ljava/lang/String;
    .local v47, "msrpTransType":Ljava/lang/String;
    const-string v9, "is_server_header_enabled"

    if-eqz v11, :cond_10

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v48

    if-eqz v48, :cond_10

    .line 628
    move-object/from16 v48, v5

    .end local v5    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .local v48, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->newBuilder()Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    .line 629
    move/from16 v49, v8

    .end local v8    # "useKeepAlive":Z
    .local v49, "useKeepAlive":Z
    const-string v8, ""

    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpi(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    .line 630
    move-object/from16 v50, v10

    .end local v10    # "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .local v50, "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    const-string/jumbo v10, "sip:anonymous@anonymous.invalid"

    invoke-virtual {v5, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    .line 631
    invoke-virtual {v5, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPreferredId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    .line 632
    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setDomain(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    .line 633
    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPassword(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    .line 634
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsIpSec(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    .line 635
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->isWifiPreConditionEnabled()Z

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setWifiPreConditionEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    .line 636
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->shouldUseCompactHeader()Z

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseCompactHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    .line 637
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEmergencyProfile(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 638
    invoke-interface {v10, v15, v9, v8}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsServerHeaderEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    move/from16 v61, v28

    move-object/from16 v51, v37

    move-object/from16 v8, v43

    .local v5, "builder":Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    goto/16 :goto_d

    .line 627
    .end local v48    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v49    # "useKeepAlive":Z
    .end local v50    # "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .local v5, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .restart local v8    # "useKeepAlive":Z
    .restart local v10    # "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    :cond_10
    move-object/from16 v48, v5

    move/from16 v49, v8

    move-object/from16 v50, v10

    .line 640
    .end local v5    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v8    # "useKeepAlive":Z
    .end local v10    # "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .restart local v48    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .restart local v49    # "useKeepAlive":Z
    .restart local v50    # "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v8, "null"

    const-string v10, "empty"

    if-eqz v5, :cond_12

    .line 641
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createUserAgent: impi is "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p8

    if-nez v9, :cond_11

    goto :goto_a

    :cond_11
    move-object v8, v10

    :goto_a
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v15, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 642
    return-object v16

    .line 644
    :cond_12
    move-object/from16 v5, p8

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_14

    .line 645
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v51, v8

    const-string v8, "createUserAgent: domain is "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p6

    move-object/from16 v62, v37

    move-object/from16 v37, v10

    move-object/from16 v10, v62

    .end local v37    # "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_13

    move-object/from16 v62, v51

    move-object/from16 v51, v10

    move-object/from16 v10, v62

    goto :goto_b

    :cond_13
    move-object/from16 v51, v10

    move-object/from16 v10, v37

    .end local v10    # "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v51, "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v15, v9}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 646
    return-object v16

    .line 649
    .end local v51    # "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37    # "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14
    move-object/from16 v8, p6

    move-object/from16 v51, v37

    .end local v37    # "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v51    # "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 650
    move-object/from16 v43, p6

    .line 653
    :cond_15
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->newBuilder()Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v10

    .line 654
    invoke-virtual {v10, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpi(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v10

    .line 655
    move-object/from16 v5, p7

    move/from16 v61, v28

    .end local v28    # "isGcfConfigEnable":Z
    .local v61, "isGcfConfigEnable":Z
    invoke-virtual {v10, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v10

    .line 656
    invoke-virtual {v10, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPreferredId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v10

    .line 657
    invoke-virtual {v10, v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setDomain(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v10

    .line 658
    invoke-virtual {v10, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPassword(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v10

    .line 659
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->isIpSecEnabled()Z

    move-result v28

    if-eqz v28, :cond_16

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isIPSecAllow()Z

    move-result v28

    if-eqz v28, :cond_16

    const/4 v5, 0x1

    goto :goto_c

    :cond_16
    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v10, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsIpSec(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    .line 660
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->isWifiPreConditionEnabled()Z

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setWifiPreConditionEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    .line 661
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->shouldUseCompactHeader()Z

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseCompactHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    .line 662
    invoke-virtual {v5, v11}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEmergencyProfile(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 663
    const/4 v8, 0x0

    invoke-interface {v10, v15, v9, v8}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsServerHeaderEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v5

    move-object/from16 v8, v43

    .line 665
    .end local v43    # "realm":Ljava/lang/String;
    .local v5, "builder":Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .local v8, "realm":Ljava/lang/String;
    :goto_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###set profile id, id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v15, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 667
    move/from16 v9, v35

    .line 668
    .local v9, "textMode":I
    const/4 v10, 0x4

    move/from16 v28, v9

    .end local v35    # "ttyType":I
    .local v9, "ttyType":I
    .local v28, "textMode":I
    if-ne v9, v10, :cond_18

    .line 669
    invoke-static {v15}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRTTMode()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 670
    const/4 v10, 0x3

    .end local v28    # "textMode":I
    .local v10, "textMode":I
    goto :goto_e

    .line 672
    .end local v10    # "textMode":I
    .restart local v28    # "textMode":I
    :cond_17
    const/4 v10, 0x2

    .end local v28    # "textMode":I
    .restart local v10    # "textMode":I
    goto :goto_e

    .line 674
    .end local v10    # "textMode":I
    .restart local v28    # "textMode":I
    :cond_18
    const/4 v10, 0x3

    if-ne v9, v10, :cond_1a

    .line 675
    invoke-static {v15}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRTTMode()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 676
    const/4 v10, 0x3

    .end local v28    # "textMode":I
    .restart local v10    # "textMode":I
    goto :goto_e

    .line 678
    .end local v10    # "textMode":I
    .restart local v28    # "textMode":I
    :cond_19
    const/4 v10, 0x0

    .end local v28    # "textMode":I
    .restart local v10    # "textMode":I
    goto :goto_e

    .line 674
    .end local v10    # "textMode":I
    .restart local v28    # "textMode":I
    :cond_1a
    move/from16 v10, v28

    .line 682
    .end local v28    # "textMode":I
    .restart local v10    # "textMode":I
    :goto_e
    move/from16 v28, v11

    .end local v11    # "isEmergency":Z
    .local v28, "isEmergency":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v12

    .end local v12    # "password":Ljava/lang/String;
    .local v35, "password":Ljava/lang/String;
    const-string v12, "TTY Type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " convert to TextMode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v15, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 684
    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 685
    const-string/jumbo v12, "srvcc_version"

    move/from16 v37, v9

    const/4 v9, 0x0

    .end local v9    # "ttyType":I
    .local v37, "ttyType":I
    invoke-interface {v11, v15, v12, v9}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v11

    .line 686
    .local v11, "srvccVersion":I
    iget-object v12, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object/from16 v19, v2

    const-string v2, "ignore_display_name"

    invoke-interface {v12, v15, v2, v9}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    .line 689
    .local v2, "ignoreDisplayName":Z
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIface(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setProfileId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    move v12, v2

    .end local v2    # "ignoreDisplayName":Z
    .local v12, "ignoreDisplayName":Z
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNetId(J)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPdn(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 690
    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setServiceList(Ljava/util/Set;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 691
    move-object/from16 v9, p5

    invoke-virtual {v1, v9}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setQparam(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    .line 692
    move-object/from16 v43, v4

    .end local v4    # "netId":Ljava/lang/Long;
    .local v43, "netId":Ljava/lang/Long;
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getRemoteUriType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v9

    invoke-static {v2, v4, v9, v15}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getNetworkUriType(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRemoteUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 693
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getControlDscp()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setControlDscp(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 694
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTransportType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPcscfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 695
    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRegiAlgorithm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    move-object/from16 v9, v57

    .end local v57    # "authAlgo":Ljava/lang/String;
    .local v9, "authAlgo":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAuthAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    move-object/from16 v2, v45

    .end local v45    # "encAlgo":Ljava/lang/String;
    .local v2, "encAlgo":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEncrAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 696
    move/from16 v4, v21

    .end local v21    # "isPrecondEnabled":Z
    .local v4, "isPrecondEnabled":Z
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPrecondEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 697
    move/from16 v2, v22

    .end local v22    # "isPrecondInitialSendrecv":Z
    .local v2, "isPrecondInitialSendrecv":Z
    .restart local v45    # "encAlgo":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPrecondInitialSendrecv(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 698
    move/from16 v2, v23

    .end local v23    # "sessionExpires":I
    .local v2, "sessionExpires":I
    .restart local v22    # "isPrecondInitialSendrecv":Z
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSessionExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    move/from16 v2, v26

    .end local v26    # "regExpires":I
    .local v2, "regExpires":I
    .restart local v23    # "sessionExpires":I
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRegExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 699
    move/from16 v2, v24

    .end local v24    # "minSe":I
    .local v2, "minSe":I
    .restart local v26    # "regExpires":I
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMinSe(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 700
    nop

    .end local v2    # "minSe":I
    .restart local v24    # "minSe":I
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSipUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 701
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRealm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImMsgTech(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 702
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getRingbackTimer()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRingbackTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 703
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getRingingTimer()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRingingTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 704
    move-object/from16 v2, v50

    .end local v50    # "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .local v2, "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setCallProfile(Lcom/sec/internal/ims/core/handler/secims/CallProfile;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 705
    nop

    .end local v2    # "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .restart local v50    # "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsSoftphoneEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 706
    invoke-static {v15}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsCdmalessEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 707
    move/from16 v2, v27

    .end local v27    # "mssPacketSize":I
    .local v2, "mssPacketSize":I
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMssSize(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 708
    move/from16 v2, v29

    .end local v29    # "sipMobility":I
    .local v2, "sipMobility":I
    .restart local v27    # "mssPacketSize":I
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSipMobility(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 709
    move/from16 v2, v30

    .end local v30    # "isEnableGruu":Z
    .local v2, "isEnableGruu":Z
    .restart local v29    # "sipMobility":I
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsEnableGruu(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 710
    move/from16 v21, v2

    move/from16 v2, v31

    .end local v31    # "isEnableSessionId":Z
    .local v2, "isEnableSessionId":Z
    .local v21, "isEnableGruu":Z
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsEnableSessionId(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 711
    move/from16 v2, v32

    .end local v32    # "audioEngineType":I
    .local v2, "audioEngineType":I
    .restart local v31    # "isEnableSessionId":Z
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAudioEngineType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 712
    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTextMode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 713
    nop

    .end local v2    # "audioEngineType":I
    .restart local v32    # "audioEngineType":I
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->isVceConfigEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setVceConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 714
    move/from16 v2, v61

    .end local v61    # "isGcfConfigEnable":Z
    .local v2, "isGcfConfigEnable":Z
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setGcfConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 715
    move/from16 v2, v33

    .end local v33    # "isNsdsServiceEnabled":Z
    .local v2, "isNsdsServiceEnabled":Z
    .restart local v61    # "isGcfConfigEnable":Z
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNsdsServiceEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 716
    nop

    .end local v2    # "isNsdsServiceEnabled":Z
    .restart local v33    # "isNsdsServiceEnabled":Z
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->isMsrpBearerUsed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMsrpBearerUsed(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 717
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSubscriberTimer()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSubscriberTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 718
    move/from16 v2, v34

    .end local v34    # "isSubscribeReg":Z
    .local v2, "isSubscribeReg":Z
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSubscribeReg(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 719
    move/from16 v30, v2

    move/from16 v2, v49

    .end local v49    # "useKeepAlive":Z
    .local v2, "useKeepAlive":Z
    .local v30, "isSubscribeReg":Z
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseKeepAlive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 720
    nop

    .end local v2    # "useKeepAlive":Z
    .restart local v49    # "useKeepAlive":Z
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSelfPort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSelfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 721
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getScmVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setScmVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 722
    move-object/from16 v2, v47

    .end local v47    # "msrpTransType":Ljava/lang/String;
    .local v2, "msrpTransType":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMsrpTransType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 723
    nop

    .end local v2    # "msrpTransType":Ljava/lang/String;
    .restart local v47    # "msrpTransType":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getFullCodecOfferRequired()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsFullCodecOfferRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 724
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getRcsTelephonyFeatureTagRequired()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsRcsTelephonyFeatureTagRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 725
    move/from16 v2, v44

    .end local v44    # "rcsProfile":I
    .local v2, "rcsProfile":I
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRcsProfile(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 726
    nop

    .end local v2    # "rcsProfile":I
    .restart local v44    # "rcsProfile":I
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getIsTransportNeeded()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsTransportNeeded(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 727
    move/from16 v2, v20

    .end local v20    # "rat":I
    .local v2, "rat":I
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRat(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 728
    nop

    .end local v2    # "rat":I
    .restart local v20    # "rat":I
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getDbrTimer()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setDbrTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 729
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->isTcpGracefulShutdownEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsTcpGracefulShutdownEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 730
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTcpRstUacErrorcode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTcpRstUacErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 731
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTcpRstUasErrorcode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTcpRstUasErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 732
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getPrivacyHeaderRestricted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPrivacyHeaderRestricted(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 733
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getUsePemHeader()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUsePemHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 734
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSupportEct()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportEct(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 735
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getEarlyMediaRtpTimeoutTimer()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEarlyMediaRtpTimeoutTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 736
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getAddHistinfo()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAddHistinfo(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 737
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportedGeolocationPhase(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 738
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getNeedPidfSipMsg()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNeedPidfSipMsg(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 739
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getUseSubcontactWhenResub()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseSubcontactWhenResub(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 740
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getUseProvisionalResponse100rel()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseProvisionalResponse100rel(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 741
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getUse183OnProgressIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUse183OnProgressIncoming(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 742
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getUseQ850causeOn480()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseQ850causeOn480(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 743
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSupport183ForIr92v9Precondition()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupport183ForIr92v9Precondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 744
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSupportImsNotAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportImsNotAvailable(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 745
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSupportLtePreferred()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportLtePreferred(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 746
    move/from16 v2, v38

    .end local v38    # "isSupportUpgradePrecondition":Z
    .local v2, "isSupportUpgradePrecondition":Z
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportUpgradePrecondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 747
    nop

    .end local v2    # "isSupportUpgradePrecondition":Z
    .restart local v38    # "isSupportUpgradePrecondition":Z
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSupportReplaceMerge()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportReplaceMerge(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 748
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSupportAccessType()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportAccessType(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 749
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setLastPaniHeader(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 750
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSelectTransportAfterTcpReset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSelectTransportAfterTcpReset(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 751
    invoke-virtual {v1, v11}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSrvccVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 752
    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsSimMobility(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 753
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setCmcType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 754
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getVideoCrbtSupportType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setVideoCrbtSupportType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 755
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getRetryInviteOnTcpReset()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRetryInviteOnTcpReset(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 756
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getEnableVerstat()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEanbleVerstat(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 757
    move/from16 v2, v46

    .end local v46    # "timerT1":I
    .local v2, "timerT1":I
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimer1(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 758
    move/from16 v2, v18

    .end local v18    # "timerT2":I
    .local v2, "timerT2":I
    .restart local v46    # "timerT1":I
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimer2(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 759
    move/from16 v2, v58

    .end local v58    # "timerT4":I
    .local v2, "timerT4":I
    .restart local v18    # "timerT2":I
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimer4(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 760
    move/from16 v34, v2

    .end local v2    # "timerT4":I
    .local v34, "timerT4":I
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimerA()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerA(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 761
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimerB()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerB(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 762
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimerC()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerC(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 763
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimerD()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerD(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 764
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimerE()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerE(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 765
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerF(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 766
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimerG()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerG(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 767
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimerH()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerH(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 768
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimerI()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerI(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 769
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimerJ()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerJ(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 770
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTimerK()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerK(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 771
    move/from16 v2, v59

    .end local v59    # "regRetryBaseTime":I
    .local v2, "regRetryBaseTime":I
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRegRetryBaseTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 772
    move/from16 v57, v2

    move/from16 v2, v60

    .end local v60    # "regRetryMaxTime":I
    .local v2, "regRetryMaxTime":I
    .local v57, "regRetryBaseTime":I
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRegRetryMaxTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 773
    move/from16 v58, v2

    .end local v2    # "regRetryMaxTime":I
    .local v58, "regRetryMaxTime":I
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportDualRcs(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 774
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->isPttSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPttSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 775
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getTryReregisterFromKeepalive()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTryReregisterFromKeepalive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 776
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSslType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSslType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 777
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSupport199ProvisionalResponse()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupport199ProvisionalResponse(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 778
    move-object/from16 v2, v51

    .end local v51    # "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAcb(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 779
    invoke-virtual {v1, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIgnoreDisplayName(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 780
    nop

    .end local v2    # "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v51    # "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSupportNetworkInitUssi()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportNetworkInitUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 781
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSendByeForUssi()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSendByeForUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 782
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSupportRfc6337ForDelayedOffer()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportRfc6337ForDelayedOffer(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    .line 783
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getHashAlgoType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setHashAlgoType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 785
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 786
    sget-object v1, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 788
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAccessToken(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 790
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 791
    move-object/from16 v2, p11

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAuthServerUrl(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    goto :goto_f

    .line 790
    :cond_1b
    move-object/from16 v2, p11

    .line 793
    .end local v1    # "token":Ljava/lang/String;
    :goto_f
    move-object/from16 v1, v56

    goto :goto_10

    :cond_1c
    move-object/from16 v2, p11

    invoke-interface/range {v48 .. v48}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 794
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-object/from16 v1, v56

    goto :goto_10

    .line 796
    :cond_1d
    move-object/from16 v1, v56

    .end local v56    # "mno":Lcom/sec/internal/constants/Mno;
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 798
    :goto_10
    move-object/from16 v56, v1

    move-object/from16 v1, p9

    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    .restart local v56    # "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 799
    move-object/from16 v1, p10

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createUserAgent: TransportType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-static {v2, v15, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 801
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    .end local v3    # "transport":Ljava/lang/String;
    .local v19, "transport":Ljava/lang/String;
    const-string v3, "createUserAgent: sessionRefresher="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v25

    .end local v25    # "sessionRefresher":Ljava/lang/String;
    .local v3, "sessionRefresher":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v15, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 803
    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSessionRefresher(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    goto :goto_11

    .line 801
    .end local v19    # "transport":Ljava/lang/String;
    .local v3, "transport":Ljava/lang/String;
    .restart local v25    # "sessionRefresher":Ljava/lang/String;
    :cond_1e
    move-object/from16 v19, v3

    move-object/from16 v3, v25

    .line 806
    .end local v25    # "sessionRefresher":Ljava/lang/String;
    .local v3, "sessionRefresher":Ljava/lang/String;
    .restart local v19    # "transport":Ljava/lang/String;
    :goto_11
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1f

    .line 807
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setLinkedImpuList(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 810
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v2

    const-string v2, "createUserAgent: hostname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    .end local v17    # "hostname":Ljava/lang/String;
    .local v2, "hostname":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v3

    .end local v3    # "sessionRefresher":Ljava/lang/String;
    .local v17, "sessionRefresher":Ljava/lang/String;
    const-string v3, ", P-CSCF="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    move-object/from16 v62, v25

    move/from16 v25, v4

    move-object/from16 v4, v62

    .end local v4    # "isPrecondEnabled":Z
    .local v25, "isPrecondEnabled":Z
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v15, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 811
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setHostname(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPcscfIp(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 814
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setContactDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 817
    invoke-virtual {v5, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPhoneId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 819
    invoke-direct {v0, v13, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureTimerTS(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 821
    move/from16 v1, v55

    move-object/from16 v62, v39

    move-object/from16 v39, v2

    move-object/from16 v2, v62

    .end local v55    # "pdn":I
    .local v1, "pdn":I
    .local v2, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v39, "hostname":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setPdn(I)V

    .line 822
    move-object/from16 v1, v42

    .end local v42    # "network":Landroid/net/Network;
    .local v1, "network":Landroid/net/Network;
    .restart local v55    # "pdn":I
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setNetwork(Landroid/net/Network;)V

    .line 824
    nop

    .end local v1    # "network":Landroid/net/Network;
    .restart local v42    # "network":Landroid/net/Network;
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPdn()I

    move-result v3

    move-object/from16 v59, v6

    .end local v6    # "imMsgTech":Ljava/lang/String;
    .local v59, "imMsgTech":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6, v15}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "pani":Ljava/lang/String;
    if-nez v1, :cond_20

    .line 826
    const-string v3, "createUserAgent: pani is null"

    invoke-static {v4, v15, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 827
    return-object v16

    .line 829
    :cond_20
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setCurPani(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 830
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->isXqEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsXqEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 832
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v3

    .line 834
    .local v3, "isSoftphone":Z
    if-nez v3, :cond_21

    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->isVceConfigEnabled()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 835
    :cond_21
    const-string v6, "enable subscribe dialog"

    invoke-static {v4, v15, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 836
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSubscribeDialogEvent(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 839
    :cond_22
    invoke-virtual {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 840
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->build()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setUaProfile(Lcom/sec/internal/ims/core/handler/secims/UaProfile;)V

    .line 842
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "pani":Ljava/lang/String;
    .local v16, "pani":Ljava/lang/String;
    const-string v1, "createUserAgent:mno="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->build()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v15, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 843
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;

    move-object/from16 v4, p1

    move-object/from16 v6, p13

    invoke-direct {v1, v0, v15, v4, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->registerListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;)V

    .line 991
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->create()I

    .line 993
    return-object v2
.end method

.method private getP2pNetworkHandle(I)Ljava/lang/Long;
    .locals 10
    .param p1, "cmcType"    # I

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getP2pNetworkHandle, cmcType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 999
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1001
    .local v2, "netId":Ljava/lang/Long;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 1002
    .local v6, "network":Landroid/net/Network;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 1003
    .local v7, "ni":Landroid/net/NetworkInfo;
    if-nez v7, :cond_0

    .line 1004
    goto/16 :goto_2

    .line 1006
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getP2pNetworkHandle, getTypeName["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "], getSubtypeName["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "], getType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "], getSubtype["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "], isConnected["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1006
    invoke-static {v1, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v6}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1023
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "netId (NetworkHandle): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const/4 v8, 0x7

    if-eq p1, v8, :cond_2

    const/16 v8, 0x8

    if-ne p1, v8, :cond_1

    goto :goto_1

    .line 1031
    :cond_1
    goto :goto_2

    .line 1027
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    sget v9, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_WIFI_P2P:I

    if-ne v8, v9, :cond_3

    .line 1028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found netId for cmcType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", netId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    return-object v2

    .line 1001
    .end local v6    # "network":Landroid/net/Network;
    .end local v7    # "ni":Landroid/net/NetworkInfo;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1035
    :cond_4
    return-object v2
.end method

.method private getPdnName(I)Ljava/lang/String;
    .locals 2
    .param p1, "pdn"    # I

    .line 1039
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1048
    :cond_0
    const-string v0, "emergency"

    return-object v0

    .line 1044
    :cond_1
    const-string v0, "ims"

    return-object v0

    .line 1046
    :cond_2
    const-string/jumbo v0, "wifi"

    return-object v0

    .line 1042
    :cond_3
    const-string v0, "internet"

    return-object v0

    .line 1050
    :cond_4
    const-string v0, "default"

    return-object v0
.end method

.method private getUserAgent(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 7
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "impu"    # Lcom/sec/ims/util/ImsUri;

    .line 1325
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1326
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1327
    .local v2, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 1329
    .local v3, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1330
    goto :goto_0

    .line 1333
    :cond_1
    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1334
    if-eqz p2, :cond_4

    .line 1335
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/NameAddr;

    .line 1336
    .local v5, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v5}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1337
    return-object v1

    .line 1339
    .end local v5    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_2
    goto :goto_1

    :cond_3
    goto :goto_2

    .line 1341
    :cond_4
    return-object v1

    .line 1344
    .end local v1    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v2    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local v3    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_5
    :goto_2
    goto :goto_0

    .line 1346
    :cond_6
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 1348
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    return-object v0

    .line 1351
    :cond_7
    return-object v0
.end method

.method static synthetic lambda$isUserAgentInRegistered$0(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1095
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->isRegistered(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public configure(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 1071
    const-string v0, "ResipRegiMgr"

    const-string v1, "configure:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1072
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    .line 1074
    .local v0, "stackIf":Lcom/sec/internal/ims/core/handler/secims/StackIF;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, "imei":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1077
    invoke-static {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getFormattedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1079
    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configRegistration(ILjava/lang/String;)V

    .line 1080
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 v3, 0x0

    .line 1081
    const-string/jumbo v4, "srvcc_version"

    invoke-interface {v2, p1, v4, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v2

    .line 1082
    .local v2, "srvccVersion":I
    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configSrvcc(II)V

    .line 1083
    return-void
.end method

.method public deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "local"    # Z

    .line 269
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 270
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deregisterInternal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",DEREGI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x11020002

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureRCS(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/constants/Mno;ZI)V

    .line 275
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 276
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const/4 v2, 0x0

    .line 279
    .local v2, "isRcsRegistered":Z
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 280
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v3, :cond_0

    .line 281
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v2

    .line 284
    :cond_0
    invoke-virtual {v1, p2, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deregister(ZZ)V

    .line 286
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->needKeepEmergencyTask()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 287
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_3

    .line 288
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 290
    :cond_3
    return-void
.end method

.method public dump()V
    .locals 6

    .line 1195
    const-string v0, "ResipRegiMgr"

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1196
    const-string v1, "Dump of UserAgents:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1198
    .local v2, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 1199
    .local v3, "profile":Lcom/sec/ims/settings/ImsProfile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserAgent ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] State: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getStateName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], Profile: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1199
    invoke-static {v0, v4}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    .end local v2    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v3    # "profile":Lcom/sec/ims/settings/ImsProfile;
    goto :goto_0

    .line 1203
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->dump()V

    .line 1204
    return-void
.end method

.method protected getAudioEngineType()I
    .locals 2

    .line 1208
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getModemBoardName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHANNON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;
    .locals 3
    .param p1, "ua"    # Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    .line 1246
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1247
    const-string v1, "ResipRegiMgr"

    const-string v2, "getImsiByUserAgent: ua is null!"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    return-object v0

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$zdzd6Q66HcnL6ih8zJVTBJogbp0;->INSTANCE:Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$zdzd6Q66HcnL6ih8zJVTBJogbp0;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 1252
    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1251
    return-object v0
.end method

.method public getImsiByUserAgentHandle(I)Ljava/lang/String;
    .locals 2
    .param p1, "handle"    # I

    .line 1263
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 1264
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 3
    .param p1, "handle"    # I

    .line 1356
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1357
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1358
    return-object v1

    .line 1360
    .end local v1    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :cond_0
    goto :goto_0

    .line 1361
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    return-object p1
.end method

.method public getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 1300
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 7
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUserAgent, phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1307
    .local v2, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 1308
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    .line 1310
    .local v4, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1311
    goto :goto_0

    .line 1314
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserAgent, reg.getPhoneId()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    if-ne v5, p2, :cond_2

    .line 1317
    return-object v2

    .line 1320
    .end local v2    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    goto :goto_0

    .line 1321
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 12
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .line 1269
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAgentByImsi : Argument imsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResipRegiMgr"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1272
    .local v4, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 1273
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    .line 1275
    .local v6, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1276
    goto :goto_0

    .line 1279
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1280
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v7

    .line 1281
    .local v7, "phoneId":I
    invoke-static {v7}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v8

    .line 1282
    .local v8, "subId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserAgentByImsi, phoneId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",subId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v9, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v9, v8}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v9

    .line 1284
    .local v9, "imsiReg":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 1285
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getUserAgentByImsi imsi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v7, v10}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1286
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1287
    return-object v4

    .line 1291
    .end local v4    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local v6    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v7    # "phoneId":I
    .end local v8    # "subId":I
    .end local v9    # "imsiReg":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1292
    :cond_3
    return-object v0

    .line 1294
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "service"    # Ljava/lang/String;

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/handler/secims/UserAgent;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1378
    .local v2, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 1379
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 1380
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    .line 1382
    .local v4, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1383
    goto :goto_0

    .line 1385
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1386
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1389
    .end local v2    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    goto :goto_0

    .line 1390
    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method public bridge synthetic getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    return-object p1
.end method

.method public getUserAgentByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 4
    .param p1, "regId"    # I

    .line 1235
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1236
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1237
    .local v2, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1238
    return-object v1

    .line 1240
    .end local v1    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v2    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_0
    goto :goto_0

    .line 1241
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    return-object p1
.end method

.method public getUserAgentOnPdn(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 3
    .param p1, "pdn"    # I
    .param p2, "phoneId"    # I

    .line 1366
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1367
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPdn()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1368
    return-object v1

    .line 1370
    .end local v1    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :cond_0
    goto :goto_0

    .line 1371
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgentOnPdn(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 3

    .line 139
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UaHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandlerThread:Landroid/os/HandlerThread;

    .line 140
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 141
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IPdnController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    .line 144
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerUaListener(ILcom/sec/internal/ims/core/handler/secims/StackEventListener;)V

    .line 183
    return-void
.end method

.method public isUserAgentInRegistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1094
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$P4U0oIV-Z2BmiD4O3yWjCGjP4qE;->INSTANCE:Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$P4U0oIV-Z2BmiD4O3yWjCGjP4qE;

    .line 1095
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 1096
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1094
    return v0
.end method

.method public onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZLcom/sec/ims/util/SipError;I)V
    .locals 0
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "isRequestedDeregi"    # Z
    .param p3, "error"    # Lcom/sec/ims/util/SipError;
    .param p4, "retryAfter"    # I

    .line 328
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 329
    return-void
.end method

.method public onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;I)V
    .locals 5
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "handle"    # I
    .param p3, "error"    # Lcom/sec/ims/util/SipError;
    .param p4, "retryAfter"    # I

    .line 294
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    .line 295
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 296
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p3}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 303
    :cond_0
    return-void

    .line 306
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->MISSING_P_ASSOCIATED_URI:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p3}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 310
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRefreshReg()Z

    move-result v0

    const-string v1, "ResipRegiMgr"

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 312
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v2, "Dont Remove the user Agent for Refresh Reg ,Re-register to be triggered."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_4
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 315
    .local v0, "taskUa":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    if-ne v2, p2, :cond_5

    .line 316
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_0

    .line 317
    :cond_5
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 318
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove user agent not in the IRegisterTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 320
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->terminate()V

    .line 321
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->unRegisterListener()V

    .line 324
    .end local v0    # "taskUa":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v1    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :cond_6
    :goto_0
    return-void
.end method

.method public registerInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Z)Z
    .locals 24
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "ifacename"    # Ljava/lang/String;
    .param p3, "pcscf"    # Ljava/lang/String;
    .param p5, "ownCap"    # Lcom/sec/ims/options/Capabilities;
    .param p6, "domain"    # Ljava/lang/String;
    .param p7, "impu"    # Ljava/lang/String;
    .param p8, "impi"    # Ljava/lang/String;
    .param p9, "instanceId"    # Ljava/lang/String;
    .param p10, "uuid"    # Ljava/lang/String;
    .param p11, "cmcSaServerUrl"    # Ljava/lang/String;
    .param p13, "rcsBundle"    # Landroid/os/Bundle;
    .param p14, "isVoWiFiSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)Z"
        }
    .end annotation

    .line 189
    .local p4, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p12, "thirdPartyFeatureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v10

    .line 190
    .local v10, "phoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerInternal: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pcscf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    sget-boolean v1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->SHIP_BUILD:Z

    if-nez v1, :cond_0

    move-object v1, v13

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    const-string v9, "ResipRegiMgr"

    invoke-static {v9, v10, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v16

    .line 194
    .local v16, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v1, 0x12

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 195
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    sget-object v3, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p14, :cond_1

    .line 196
    const-string/jumbo v0, "update geo location"

    invoke-static {v9, v10, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    iget-object v0, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    .line 198
    .local v0, "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    if-eqz v0, :cond_1

    .line 199
    invoke-interface {v0, v10, v8}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    .line 204
    .end local v0    # "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    :cond_1
    iget-object v0, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-direct {v14, v15, v0, v7, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureRCS(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/constants/Mno;ZI)V

    .line 206
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-static {v0, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v17

    .line 207
    .local v17, "convertedRegId":I
    iget-object v0, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 208
    .local v6, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v6, :cond_4

    .line 209
    const-string/jumbo v0, "register: creating UserAgent."

    invoke-static {v9, v10, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    iget-object v5, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v18, v5

    move-object/from16 v5, p5

    move-object/from16 v19, v6

    .end local v6    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v19, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    move-object/from16 v6, p6

    move/from16 v20, v7

    move-object/from16 v7, p7

    move/from16 v21, v8

    move-object/from16 v8, p8

    move-object/from16 v22, v9

    move-object/from16 v9, p9

    move/from16 v23, v10

    .end local v10    # "phoneId":I
    .local v23, "phoneId":I
    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p13

    move-object/from16 v13, v18

    invoke-direct/range {v0 .. v13}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->createUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v6

    .line 212
    .end local v19    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v6    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-eqz v6, :cond_3

    .line 213
    iget-object v0, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-interface {v15, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)V

    .line 215
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v15, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 217
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->INITIAL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-interface {v15, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 218
    const-string v0, "SEND SIP REGISTER"

    invoke-static {v15, v0}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 222
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    iget-object v0, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    invoke-interface {v0, v15, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyTriggeringRecoveryAction(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    .line 264
    :cond_2
    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v2, p5

    move-object/from16 v4, p7

    move-object v7, v6

    move/from16 v1, v23

    move-object/from16 v6, p12

    goto/16 :goto_3

    .line 226
    :cond_3
    const-string/jumbo v0, "register: fail creating UserAgent."

    move-object/from16 v2, v22

    move/from16 v1, v23

    .end local v23    # "phoneId":I
    .local v1, "phoneId":I
    invoke-static {v2, v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    return v21

    .line 230
    .end local v1    # "phoneId":I
    .restart local v10    # "phoneId":I
    :cond_4
    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object v2, v9

    move v1, v10

    .end local v6    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v10    # "phoneId":I
    .restart local v1    # "phoneId":I
    .restart local v19    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v0

    .line 231
    .local v0, "up":Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    move-object/from16 v3, p3

    if-eqz v3, :cond_5

    .line 232
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setPcscfIp(Ljava/lang/String;)V

    .line 236
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "register: Re-Register with new services="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->RE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-interface {v15, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 240
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 241
    const-string v2, "mmtel-video"

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 242
    sget-object v2, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v2, p5

    invoke-virtual {v2, v6, v7}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 243
    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 244
    iget-object v4, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v6, "createUserAgent: add mmtel, mmtel-video to Capabilities for E-REGI"

    invoke-virtual {v4, v1, v15, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_6
    move-object/from16 v2, p5

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 247
    iget-object v4, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v6, "createUserAgent : add mmtel to Capabilities for E-REGI"

    invoke-virtual {v4, v1, v15, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_7
    move-object/from16 v2, p5

    .line 251
    :goto_1
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)V

    .line 252
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setServiceList(Ljava/util/Set;)V

    .line 253
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setLinkedImpuList(Ljava/util/List;)V

    .line 254
    move-object/from16 v4, p7

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setImpu(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-nez v6, :cond_8

    .line 256
    move-object/from16 v6, p12

    move-object/from16 v7, v19

    .end local v19    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v7, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-virtual {v7, v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setThirdPartyFeatureTags(Ljava/util/List;)V

    goto :goto_2

    .line 255
    .end local v7    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v19    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :cond_8
    move-object/from16 v6, p12

    move-object/from16 v7, v19

    .line 260
    .end local v19    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v7    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :goto_2
    iget-object v8, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v8

    invoke-interface {v8, v1, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyReRegistering(ILjava/util/Set;)V

    .line 261
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->register()I

    .line 264
    .end local v0    # "up":Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    :goto_3
    return v20
.end method

.method public removePreviousLastPani(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 1158
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->removePreviousPlani(I)V

    .line 1159
    return-void
.end method

.method public removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1213
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUserAgent: task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipRegiMgr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1215
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v0

    .line 1216
    .local v0, "uaRegId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1217
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v1, :cond_0

    .line 1218
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    const-string/jumbo v4, "removeUserAgent: UserAgent null"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1219
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUserAgent()V

    .line 1220
    return-void

    .line 1223
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeUserAgent: UserAgent handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1224
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->terminate()V

    .line 1225
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUserAgent()V

    .line 1227
    return-void
.end method

.method public sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12
    .param p1, "handle"    # I
    .param p2, "intf"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "transport"    # Ljava/lang/String;
    .param p7, "family"    # Ljava/lang/String;
    .param p8, "netId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1101
    .local p4, "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDnsQuery: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ResipRegiMgr"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1103
    return-void
.end method

.method public setEventLog(Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 0
    .param p1, "eventLog"    # Lcom/sec/internal/helper/SimpleEventLog;

    .line 119
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 120
    return-void
.end method

.method public setPdnController(Lcom/sec/internal/interfaces/ims/core/IPdnController;)V
    .locals 0
    .param p1, "pdnController"    # Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 134
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 135
    return-void
.end method

.method public setRegistrationHandler(Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V
    .locals 0
    .param p1, "regHandler"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    .line 124
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    .line 125
    return-void
.end method

.method public setSilentLogEnabled(Z)V
    .locals 2
    .param p1, "onoff"    # Z

    .line 1087
    const-string v0, "ResipRegiMgr"

    const-string/jumbo v1, "setSilentLogEnabled:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    .line 1089
    .local v0, "stackIf":Lcom/sec/internal/ims/core/handler/secims/StackIF;
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->setSilentLogEnabled(Z)V

    .line 1090
    return-void
.end method

.method public setSimManagers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p1, "simManagerList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/ISimManager;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    .line 130
    return-void
.end method

.method public suspended(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)Z
    .locals 7
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "state"    # Z

    .line 333
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 334
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 335
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getSuspendState()Z

    move-result v1

    if-eq v1, p2, :cond_3

    .line 336
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    .line 337
    .local v1, "networkEvent":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v5, "Suspend : "

    goto :goto_0

    :cond_0
    const-string v5, "Resume : "

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 338
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->suspended(Z)V

    .line 341
    if-eqz p2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->removeRecoveryAction()V

    goto :goto_1

    .line 344
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v3, :cond_2

    .line 345
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    invoke-interface {v2, p1, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyTriggeringRecoveryAction(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    .line 348
    :cond_2
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 351
    .end local v0    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v1    # "networkEvent":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public updateGeolocation(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/constants/ims/gls/LocationInfo;)V
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "geolocation"    # Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 1184
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1185
    const-string v0, "ResipRegiMgr"

    const-string/jumbo v1, "updateGeolocation: ua is null. return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    return-void

    .line 1189
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    .line 1190
    .local v0, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V

    .line 1191
    return-void
.end method

.method public updatePani(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 7
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1108
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1109
    .local v0, "phoneId":I
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1110
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1112
    .local v2, "pani":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1113
    return-void

    .line 1116
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setLkcForLastPani(ILjava/lang/String;Lcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)V

    .line 1118
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1119
    return-void

    .line 1121
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1123
    .local v3, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const-string v4, ""

    .line 1124
    .local v4, "lastPani":Ljava/lang/String;
    const-string v5, "IEEE-802.11"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1125
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v0, v1, v6}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getLastPani(ILcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1126
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAge(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1127
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getTimeInPlani(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateTimeInPlani(J)V

    .line 1131
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setCurPani(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updatePani(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-interface {p1, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPaniSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    return-void
.end method

.method public updateRat(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "network"    # I

    .line 1163
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1164
    return-void

    .line 1167
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    .line 1168
    .local v0, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->updateRat(I)V

    .line 1169
    return-void
.end method

.method public updateTimeInPlani(ILcom/sec/ims/settings/ImsProfile;)V
    .locals 13
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 1138
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getLastPani(ILcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1139
    .local v0, "plani":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAge(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1141
    .local v1, "time":J
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)I

    move-result v3

    .line 1142
    .local v3, "cid":I
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v4, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isChangedPlani(ILjava/lang/String;)Z

    move-result v4

    .line 1144
    .local v4, "isChanged":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateTimeInPlani: plani "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", time "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "ResipRegiMgr"

    invoke-static {v8, p1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1145
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getTimeInPlani(I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-nez v5, :cond_0

    .line 1146
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setTimeInPlani(IJ)V

    .line 1149
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 1150
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setTimeInPlani(IJ)V

    .line 1151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    .end local v1    # "time":J
    .end local v3    # "cid":I
    .end local v4    # "isChanged":Z
    :cond_1
    return-void
.end method

.method public updateVceConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "config"    # Z

    .line 1173
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1174
    const-string v0, "ResipRegiMgr"

    const-string/jumbo v1, "updateVceConfig: no pending task, simply return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return-void

    .line 1178
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    .line 1179
    .local v0, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->updateVceConfig(Z)V

    .line 1180
    return-void
.end method
