.class public Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;
.super Lcom/sec/internal/ims/core/handler/MediaHandler;
.source "ResipMediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;
    }
.end annotation


# static fields
.field private static final DTMF_VOLUME:I = 0x55

.field private static final EVENT_CONNECT_TO_SVE:I = 0x12c

.field private static final EVENT_HOLD_VIDEO_RESPONSE:I = 0xc9

.field private static final EVENT_MODIFY_VIDEO:I = 0x6b

.field private static final EVENT_RESUME_VIDEO_RESPONSE:I = 0xca

.field private static final EVENT_SVE_CONNECTED:I = 0x12d

.field private static final EVENT_VIDEO_EVENT:I = 0x6c

.field public static final MAX_VIDEO_CODEC_LIST_CHAR_SIZE:I = 0x100

.field private static final NOTIFY_CAM_CAPTURE_FAILURE:I = 0xd

.field private static final NOTIFY_CAM_CAPTURE_SUCCESS:I = 0xc

.field private static final NOTIFY_CAM_DISABLED_ERROR:I = 0x10

.field private static final NOTIFY_CAM_FIRST_FRAME_READY:I = 0x8

.field private static final NOTIFY_CAM_START_FAILURE:I = 0x7

.field private static final NOTIFY_CAM_START_SUCCESS:I = 0x6

.field private static final NOTIFY_CAM_STOP_SUCCESS:I = 0x9

.field private static final NOTIFY_CAM_SWITCH_FAILURE:I = 0xb

.field private static final NOTIFY_CAM_SWITCH_SUCCESS:I = 0xa

.field private static final NOTIFY_CHANGE_PEER_DIMENSION:I = 0xf

.field private static final NOTIFY_EMOJI_INFO_CHANGE:I = 0x4a

.field private static final NOTIFY_EMOJI_START_FAILURE:I = 0x47

.field private static final NOTIFY_EMOJI_START_SUCCESS:I = 0x46

.field private static final NOTIFY_EMOJI_STOP_FAILURE:I = 0x49

.field private static final NOTIFY_EMOJI_STOP_SUCCESS:I = 0x48

.field private static final NOTIFY_FAR_FRAME_READY:I = 0x5

.field private static final NOTIFY_LCL_CAPTURE_FAILURE:I = 0x2

.field private static final NOTIFY_LCL_CAPTURE_SUCCESS:I = 0x1

.field private static final NOTIFY_NO_FAR_FRAME:I = 0xe

.field private static final NOTIFY_RECORD_START_FAILURE:I = 0x33

.field private static final NOTIFY_RECORD_START_FAILURE_NO_MEMORY:I = 0x34

.field private static final NOTIFY_RECORD_START_SUCCESS:I = 0x32

.field private static final NOTIFY_RECORD_STOP_FAILURE:I = 0x3d

.field private static final NOTIFY_RECORD_STOP_SUCCESS:I = 0x3c

.field private static final NOTIFY_RMT_CAPTURE_FAILURE:I = 0x4

.field private static final NOTIFY_RMT_CAPTURE_SUCCESS:I = 0x3

.field public static final NOTIFY_VIDEO_ATTEMPTED:I = 0x28

.field public static final NOTIFY_VIDEO_FAIR_QUALITY:I = 0x1f

.field public static final NOTIFY_VIDEO_GOOD_QUALITY:I = 0x20

.field public static final NOTIFY_VIDEO_MAX_QUALITY:I = 0x22

.field public static final NOTIFY_VIDEO_POOR_QUALITY:I = 0x1e

.field public static final NOTIFY_VIDEO_RTCP_CLEAR:I = 0x17

.field public static final NOTIFY_VIDEO_RTCP_TIMEOUT:I = 0x15

.field public static final NOTIFY_VIDEO_RTP_CLEAR:I = 0x16

.field public static final NOTIFY_VIDEO_RTP_TIMEOUT:I = 0x14

.field public static final NOTIFY_VIDEO_VERYPOOR_QUALITY:I = 0x21


# instance fields
.field private mContext:Landroid/content/Context;

.field public mHwSupportedVideoCodecList:Ljava/lang/String;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mMediaEventlistener:Lcom/sec/sve/IImsMediaEventListener;

.field private mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

.field private mRingBackToneThread:Landroid/os/HandlerThread;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field private mSveConnected:Z

.field private mSveConnecting:Z

.field private mSveManager:Lcom/sec/sve/SecVideoEngineManager;

.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 305
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/MediaHandler;-><init>(Landroid/os/Looper;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    .line 93
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 98
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    .line 99
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneThread:Landroid/os/HandlerThread;

    .line 101
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventlistener:Lcom/sec/sve/IImsMediaEventListener;

    .line 306
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mContext:Landroid/content/Context;

    .line 307
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 308
    new-instance v0, Lcom/sec/sve/SecVideoEngineManager;

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)V

    invoke-direct {v0, p2, v1}, Lcom/sec/sve/SecVideoEngineManager;-><init>(Landroid/content/Context;Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    .line 326
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method private connectToSve()V
    .locals 3

    .line 721
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVE is not connected ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectToSve"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->connectService()V

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    .line 727
    :cond_0
    return-void
.end method

.method private getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 3
    .param p1, "phoneId"    # I

    .line 485
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 487
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const-string v1, "mmtel-video"

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 489
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v1, :cond_0

    .line 490
    const-string/jumbo v2, "vs"

    invoke-interface {v0, v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 493
    :cond_0
    return-object v1
.end method

.method private getUaForMediaEvent(III)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "target"    # I
    .param p3, "eventType"    # I

    .line 510
    const/4 v0, 0x0

    .line 512
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 513
    if-eqz p2, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    const-string v1, "mmtel-video"

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUaWithService(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    goto :goto_1

    .line 514
    :cond_1
    :goto_0
    const-string/jumbo v1, "vs"

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUaWithService(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    goto :goto_1

    .line 519
    :cond_2
    const-string v1, "mmtel"

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUaWithService(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 522
    :goto_1
    return-object v0
.end method

.method private getUaWithService(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "service"    # Ljava/lang/String;

    .line 497
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 498
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const/4 v1, 0x0

    .line 500
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 501
    invoke-interface {v0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    goto :goto_0

    .line 503
    :cond_0
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 506
    :goto_0
    return-object v1
.end method

.method private onHoldVideoResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 665
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 667
    .local v0, "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 669
    .local v1, "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    iget-object v2, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 671
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_HOLD_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 673
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 675
    .end local v1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :cond_0
    return-void
.end method

.method private onModifyVideo(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 7
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 526
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;

    .line 527
    .local v0, "modifyData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;->session()J

    move-result-wide v1

    long-to-int v1, v1

    .line 528
    .local v1, "sessionId":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;->direction()J

    move-result-wide v2

    long-to-int v2, v2

    .line 529
    .local v2, "direction":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;->isHeldCall()Z

    move-result v3

    .line 531
    .local v3, "isHeldCall":Z
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onModifyVideo() session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isHoldCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 535
    .local v4, "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v4, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 537
    if-nez v2, :cond_0

    .line 538
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_HELD:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 540
    :cond_0
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RESUMED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 543
    :goto_0
    invoke-virtual {v4, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setIsHeldCall(Z)V

    .line 545
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 546
    return-void
.end method

.method private onResumeVideoResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 678
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 680
    .local v0, "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 682
    .local v1, "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    iget-object v2, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 684
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RESUME_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 686
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 688
    .end local v1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :cond_0
    return-void
.end method

.method private onSveConnected()V
    .locals 3

    .line 730
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->registerMediaEventListener()V

    .line 732
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/sec/sve/SecVideoEngineManager;->sveSendGeneralEvent(IIILjava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->saeTerminate()V

    .line 734
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/sec/sve/SecVideoEngineManager;->sveGetCodecCapacity(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    .line 735
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSveConnected hwSupportedVideoCodecList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SVE was not connected!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :goto_0
    return-void
.end method

.method private onVideoEvent(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 9
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 549
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;

    .line 550
    .local v0, "videoEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->phoneId()J

    move-result-wide v1

    long-to-int v1, v1

    .line 551
    .local v1, "phoneId":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->session()J

    move-result-wide v2

    long-to-int v2, v2

    .line 552
    .local v2, "sessionId":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->event()J

    move-result-wide v3

    long-to-int v3, v3

    .line 553
    .local v3, "event":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->arg1()J

    move-result-wide v4

    long-to-int v4, v4

    .line 554
    .local v4, "arg1":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->arg2()J

    move-result-wide v5

    long-to-int v5, v5

    .line 556
    .local v5, "arg2":I
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onVideoEvent() session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 559
    .local v6, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v6, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 560
    invoke-virtual {v6, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 562
    const/16 v7, 0x14

    if-eq v3, v7, :cond_4

    const/16 v7, 0x15

    if-eq v3, v7, :cond_3

    const/16 v7, 0x28

    if-eq v3, v7, :cond_2

    const/16 v7, 0x3c

    if-eq v3, v7, :cond_1

    const/16 v7, 0x3d

    if-eq v3, v7, :cond_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    goto/16 :goto_0

    .line 657
    :pswitch_0
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_INFO_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 654
    :pswitch_1
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 655
    goto/16 :goto_0

    .line 651
    :pswitch_2
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 652
    goto/16 :goto_0

    .line 648
    :pswitch_3
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 649
    goto/16 :goto_0

    .line 645
    :pswitch_4
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 646
    goto/16 :goto_0

    .line 636
    :pswitch_5
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 637
    goto/16 :goto_0

    .line 633
    :pswitch_6
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 634
    goto/16 :goto_0

    .line 630
    :pswitch_7
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 631
    goto/16 :goto_0

    .line 594
    :pswitch_8
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_MAX_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 595
    goto/16 :goto_0

    .line 591
    :pswitch_9
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_VERYPOOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 592
    goto/16 :goto_0

    .line 588
    :pswitch_a
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_GOOD_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 589
    goto/16 :goto_0

    .line 585
    :pswitch_b
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_FAIR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 586
    goto/16 :goto_0

    .line 582
    :pswitch_c
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_POOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 583
    goto/16 :goto_0

    .line 627
    :pswitch_d
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_DISABLED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 628
    goto/16 :goto_0

    .line 622
    :pswitch_e
    invoke-virtual {v6, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setWidth(I)V

    .line 623
    invoke-virtual {v6, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setHeight(I)V

    .line 624
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CHANGE_PEER_DIMENSION:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 625
    goto :goto_0

    .line 616
    :pswitch_f
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->NO_FAR_FRAME:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 617
    goto :goto_0

    .line 579
    :pswitch_10
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 580
    goto :goto_0

    .line 576
    :pswitch_11
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 577
    goto :goto_0

    .line 603
    :pswitch_12
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 604
    goto :goto_0

    .line 564
    :pswitch_13
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_FIRST_FRAME_READY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 565
    goto :goto_0

    .line 597
    :pswitch_14
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 598
    goto :goto_0

    .line 600
    :pswitch_15
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 601
    goto :goto_0

    .line 567
    :pswitch_16
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 568
    goto :goto_0

    .line 613
    :pswitch_17
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 614
    goto :goto_0

    .line 608
    :pswitch_18
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_SUCCEEDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 609
    goto :goto_0

    .line 642
    :cond_0
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 643
    goto :goto_0

    .line 639
    :cond_1
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 640
    goto :goto_0

    .line 619
    :cond_2
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_ATTEMPTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 620
    goto :goto_0

    .line 573
    :cond_3
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RTCP_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 574
    goto :goto_0

    .line 570
    :cond_4
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RTP_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 571
    nop

    .line 661
    :goto_0
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v7, v6}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 662
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_18
        :pswitch_17
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bindToNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 480
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToNetwork : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->bindToNetwork(Landroid/net/Network;)V

    .line 482
    return-void
.end method

.method public deinitToneGenerator()V
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deinit ToneGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1019
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1021
    :cond_0
    return-void
.end method

.method public getHwSupportedVideoCodecs(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "profileCodecs"    # Ljava/lang/String;

    .line 1283
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1288
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1289
    .local v1, "profileList":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1290
    .local v2, "supportedCodecList":[Ljava/lang/String;
    const-string v3, ""

    .line 1291
    .local v3, "filteredCodecs":Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v7, v1, v6

    .line 1292
    .local v7, "profileCodec":Ljava/lang/String;
    array-length v8, v2

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v2, v9

    .line 1293
    .local v10, "supportedCodec":Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1294
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1295
    move-object v3, v7

    goto :goto_2

    .line 1297
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1292
    .end local v10    # "supportedCodec":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1291
    .end local v7    # "profileCodec":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1302
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHwSupportedVideoCodecs filteredCodecs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    return-object v3

    .line 1284
    .end local v1    # "profileList":[Ljava/lang/String;
    .end local v2    # "supportedCodecList":[Ljava/lang/String;
    .end local v3    # "filteredCodecs":Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getHwSupportedVideoCodecs - fails to get HW supported codec"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 692
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xca

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onSveConnected()V

    goto :goto_0

    .line 711
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->connectToSve()V

    .line 712
    goto :goto_0

    .line 707
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onResumeVideoResponse(Lcom/sec/internal/helper/AsyncResult;)V

    .line 708
    goto :goto_0

    .line 703
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onHoldVideoResponse(Lcom/sec/internal/helper/AsyncResult;)V

    .line 704
    goto :goto_0

    .line 699
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onVideoEvent(Lcom/sec/internal/helper/AsyncResult;)V

    .line 700
    goto :goto_0

    .line 695
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onModifyVideo(Lcom/sec/internal/helper/AsyncResult;)V

    .line 696
    nop

    .line 718
    :goto_0
    return-void
.end method

.method public holdVideo(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I

    .line 353
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 356
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    const/16 v1, 0xc9

    .line 360
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 359
    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->holdVideo(ILandroid/os/Message;)V

    .line 361
    return-void
.end method

.method public init()V
    .locals 3

    .line 330
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/MediaHandler;->init()V

    .line 332
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 334
    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerModifyVideoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6c

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerVideoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    .line 338
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    .line 339
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->sendEmptyMessage(I)Z

    .line 341
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RingBackToneThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneThread:Landroid/os/HandlerThread;

    .line 342
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 343
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    .line 344
    return-void
.end method

.method public initToneGenerator()V
    .locals 3

    .line 1008
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init ToneGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1012
    :cond_0
    return-void
.end method

.method public isSupportingCameraMotor()Z
    .locals 4

    .line 1308
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->isSupportingCameraMotor()Z

    move-result v0

    .line 1309
    .local v0, "cameraMotor":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportingCameraMotor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    return v0
.end method

.method public muteLocalRingBackTone()Z
    .locals 3

    .line 1161
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->isPlayingRingBackTone()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    .line 1162
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1167
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1163
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->sendEmptyMessage(I)Z

    .line 1164
    return v1
.end method

.method public registerMediaEventListener()V
    .locals 2

    .line 1172
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventlistener:Lcom/sec/sve/IImsMediaEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/sve/SecVideoEngineManager;->registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V

    .line 1173
    return-void
.end method

.method public restartEmoji(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p2}, Lcom/sec/sve/SecVideoEngineManager;->restartEmoji(I)V

    .line 476
    return-void
.end method

.method public resumeVideo(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 368
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    const/16 v1, 0xca

    .line 372
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 371
    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->resumeVideo(ILandroid/os/Message;)V

    .line 373
    return-void
.end method

.method public saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 13
    .param p1, "channel"    # I
    .param p2, "mno"    # I
    .param p3, "localIp"    # Ljava/lang/String;
    .param p4, "localPort"    # I
    .param p5, "remoteIp"    # Ljava/lang/String;
    .param p6, "remotePort"    # I
    .param p7, "localRTCPPort"    # I
    .param p8, "remoteRTCPPort"    # I
    .param p9, "pdn"    # Ljava/lang/String;
    .param p10, "xqEnabled"    # Z
    .param p11, "ttyChannel"    # Z

    .line 768
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/sec/sve/SecVideoEngineManager;->saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v1

    return v1
.end method

.method public saeDeleteChannel(I)I
    .locals 1
    .param p1, "channel"    # I

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->saeDeleteChannel(I)I

    move-result v0

    return v0
.end method

.method public saeEnableSRTP(III[BI)I
    .locals 6
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "profile"    # I
    .param p4, "key"    # [B
    .param p5, "keylen"    # I

    .line 810
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->saeEnableSRTP(III[BI)I

    move-result v0

    return v0
.end method

.method public saeGetAudioRxTrackId(I)I
    .locals 1
    .param p1, "channel"    # I

    .line 855
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->saeGetAudioRxTrackId(I)I

    move-result v0

    return v0
.end method

.method public saeGetLastPlayedVoiceTime(I)Ljava/lang/Object;
    .locals 1
    .param p1, "channel"    # I

    .line 835
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object v0

    return-object v0
.end method

.method public saeGetVersion([BI)I
    .locals 1
    .param p1, "version"    # [B
    .param p2, "bufflen"    # I

    .line 850
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeGetVersion([BI)I

    move-result v0

    return v0
.end method

.method public saeHandleDtmf(IIII)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "code"    # I
    .param p3, "mode"    # I
    .param p4, "operation"    # I

    .line 800
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->saeHandleDtmf(IIII)I

    move-result v0

    return v0
.end method

.method public saeInitialize(III)V
    .locals 3
    .param p1, "convertedMno"    # I
    .param p2, "dtmfMode"    # I
    .param p3, "sas"    # I

    .line 744
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saeInitialize convertedMno = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeInitialize(III)V

    .line 747
    return-void
.end method

.method public saeModifyChannel(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I

    .line 790
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeModifyChannel(II)I

    move-result v0

    return v0
.end method

.method public saeSetAudioPath(II)I
    .locals 1
    .param p1, "dir_in"    # I
    .param p2, "dir_out"    # I

    .line 860
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeSetAudioPath(II)I

    move-result v0

    return v0
.end method

.method public saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 33
    .param p1, "channel"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "rx_type"    # I
    .param p5, "freq"    # I
    .param p6, "bitrate"    # I
    .param p7, "ptime"    # I
    .param p8, "maxptime"    # I
    .param p9, "octectAligned"    # Z
    .param p10, "mode_set"    # I
    .param p11, "nchannel"    # I
    .param p12, "dtxEnable"    # I
    .param p13, "red_level"    # I
    .param p14, "red_pt"    # I
    .param p15, "dtx"    # C
    .param p16, "dtxRecv"    # C
    .param p17, "hfOnly"    # C
    .param p18, "evsModeSwitch"    # C
    .param p19, "chSend"    # C
    .param p20, "chRecv"    # C
    .param p21, "chAwareRecv"    # I
    .param p22, "cmr"    # I
    .param p23, "brSendMin"    # Ljava/lang/String;
    .param p24, "brSendMax"    # Ljava/lang/String;
    .param p25, "brRecvMin"    # Ljava/lang/String;
    .param p26, "brRecvMax"    # Ljava/lang/String;
    .param p27, "sendBwRange"    # Ljava/lang/String;
    .param p28, "recvBwRange"    # Ljava/lang/String;
    .param p29, "defaultBr"    # Ljava/lang/String;
    .param p30, "defaultBw"    # Ljava/lang/String;

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    .line 756
    move-object/from16 v0, p0

    move/from16 v31, v1

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object v0, v1

    move/from16 v1, p21

    move-object/from16 v32, v0

    int-to-short v0, v1

    move/from16 v21, v0

    move/from16 v0, p22

    int-to-short v1, v0

    move/from16 v22, v1

    move/from16 v1, v31

    move-object/from16 v0, v32

    invoke-virtual/range {v0 .. v30}, Lcom/sec/sve/SecVideoEngineManager;->saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public saeSetDtmfCodecInfo(IIIII)I
    .locals 6
    .param p1, "channel"    # I
    .param p2, "type"    # I
    .param p3, "rxtype"    # I
    .param p4, "bitrate"    # I
    .param p5, "inband"    # I

    .line 805
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->saeSetDtmfCodecInfo(IIIII)I

    move-result v0

    return v0
.end method

.method public saeSetRtcpOnCall(III)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "rr"    # I
    .param p3, "rs"    # I

    .line 815
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeSetRtcpOnCall(III)I

    move-result v0

    return v0
.end method

.method public saeSetRtcpTimeout(IJ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "sec"    # J

    .line 825
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeSetRtcpTimeout(IJ)I

    move-result v0

    return v0
.end method

.method public saeSetRtcpXr(IIIII[I)I
    .locals 7
    .param p1, "channel"    # I
    .param p2, "flag"    # I
    .param p3, "blocks"    # I
    .param p4, "statflags"    # I
    .param p5, "rttmode"    # I
    .param p6, "maxsizesInt"    # [I

    .line 830
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/SecVideoEngineManager;->saeSetRtcpXr(IIIII[I)I

    move-result v0

    return v0
.end method

.method public saeSetRtpTimeout(IJ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "sec"    # J

    .line 820
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeSetRtpTimeout(IJ)I

    move-result v0

    return v0
.end method

.method public saeSetTOS(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "tos"    # I

    .line 845
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeSetTOS(II)I

    move-result v0

    return v0
.end method

.method public saeSetVoicePlayDelay(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "delayTime"    # I

    .line 840
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeSetVoicePlayDelay(II)I

    move-result v0

    return v0
.end method

.method public saeStartChannel(IIZ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "enableIpv6"    # Z

    .line 774
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeStartChannel(IIZ)I

    move-result v0

    return v0
.end method

.method public saeStartRecording(IIIZ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "samplingRate"    # I
    .param p4, "isApVoice"    # Z

    .line 966
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->saeStartRecording(IIIZ)I

    move-result v0

    return v0
.end method

.method public saeStopChannel(I)I
    .locals 1
    .param p1, "channel"    # I

    .line 785
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->saeStopChannel(I)I

    move-result v0

    return v0
.end method

.method public saeStopRecording(IZ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "isApVoice"    # Z

    .line 971
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeStopRecording(IZ)I

    move-result v0

    return v0
.end method

.method public saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 10
    .param p1, "channel"    # I
    .param p2, "dir"    # I
    .param p3, "localIp"    # Ljava/lang/String;
    .param p4, "localPort"    # I
    .param p5, "remoteIp"    # Ljava/lang/String;
    .param p6, "remotePort"    # I
    .param p7, "localRTCPPort"    # I
    .param p8, "remoteRTCPPort"    # I

    .line 780
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/sec/sve/SecVideoEngineManager;->saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v1

    return v1
.end method

.method public sendMediaEvent(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "target"    # I
    .param p3, "event"    # I
    .param p4, "eventType"    # I

    .line 1181
    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUaForMediaEvent(III)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 1183
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "User Agent was empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    return-void

    .line 1188
    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMediaEvent(III)V

    .line 1189
    return-void
.end method

.method public sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .locals 1
    .param p1, "rtpStats"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V

    .line 349
    return-void
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "enable"    # Z
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "frameSize"    # Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public setAudioParameters(ILjava/lang/String;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "audioParameters"    # Ljava/lang/String;

    .line 1045
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1046
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_3

    .line 1047
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    .line 1048
    .local v1, "vsm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1052
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "skip to set to Audio F/W"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1049
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " set to Audio F/W"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1055
    .end local v1    # "vsm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    :cond_3
    :goto_2
    return-void
.end method

.method public setCamera(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .line 426
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 1
    .param p1, "value"    # I

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->setCameraEffect(I)V

    .line 441
    return-void
.end method

.method public setDisplaySurface(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "windowHandle"    # Ljava/lang/Object;
    .param p2, "color"    # I

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplaySurface() color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object v1, p1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1, p2}, Lcom/sec/sve/SecVideoEngineManager;->setDisplaySurface(Landroid/view/Surface;I)V

    .line 401
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->setOrientation(I)V

    .line 416
    return-void
.end method

.method public setPreviewResolution(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->setPreviewResolution(II)V

    .line 389
    return-void
.end method

.method public setPreviewSurface(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "windowHandle"    # Ljava/lang/Object;
    .param p2, "color"    # I

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSurface() color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object v1, p1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1, p2}, Lcom/sec/sve/SecVideoEngineManager;->setPreviewSurface(Landroid/view/Surface;I)V

    .line 395
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "value"    # F

    .line 420
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->setZoom(F)V

    .line 421
    return-void
.end method

.method public startCamera(III)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "cameraId"    # I

    .line 378
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 379
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "startCamera: can\'t find UserAgent for mmtel-video."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 383
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->startCamera(II)V

    .line 384
    return-void
.end method

.method public startEmoji(IILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "emojiInfo"    # Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->startEmoji(ILjava/lang/String;)V

    .line 466
    return-void
.end method

.method public startLocalRingBackTone(III)I
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I

    .line 1144
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start RBT with st"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " v-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tt-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->setRingBackToneData(III)V

    .line 1147
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->sendEmptyMessage(I)Z

    .line 1149
    const/4 v0, 0x0

    return v0
.end method

.method public startRecord(IILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .line 445
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 446
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 447
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "startRecord: can\'t find UserAgent for mmtel-video."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void

    .line 450
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->startRecord(ILjava/lang/String;)V

    .line 451
    return-void
.end method

.method public steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 12
    .param p1, "mno"    # I
    .param p2, "localIp"    # Ljava/lang/String;
    .param p3, "localPort"    # I
    .param p4, "remoteIp"    # Ljava/lang/String;
    .param p5, "remotePort"    # I
    .param p6, "localRTCPPort"    # I
    .param p7, "remoteRTCPPort"    # I
    .param p8, "pdn"    # Ljava/lang/String;
    .param p9, "xqEnabled"    # Z
    .param p10, "ttyChannel"    # Z

    .line 1216
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/sec/sve/SecVideoEngineManager;->steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v1

    return v1
.end method

.method public steDeleteChannel(I)I
    .locals 1
    .param p1, "channel"    # I

    .line 1232
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->steDeleteChannel(I)I

    move-result v0

    return v0
.end method

.method public steEnableSRTP(III[BI)I
    .locals 6
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "profile"    # I
    .param p4, "key"    # [B
    .param p5, "keylen"    # I

    .line 1273
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->steEnableSRTP(III[BI)I

    move-result v0

    return v0
.end method

.method public steInitialize()V
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->steInitialize()V

    .line 1195
    return-void
.end method

.method public steModifyChannel(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I

    .line 1243
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->steModifyChannel(II)I

    move-result v0

    return v0
.end method

.method public steSendText(ILjava/lang/String;I)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "len"    # I

    .line 1258
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->steSendText(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public steSetCallOptions(IZ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "isRtcpOnCall"    # Z

    .line 1263
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->steSetCallOptions(IZ)I

    move-result v0

    return v0
.end method

.method public steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 33
    .param p1, "channel"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "rx_type"    # I
    .param p5, "freq"    # I
    .param p6, "bitrate"    # I
    .param p7, "ptime"    # I
    .param p8, "maxptime"    # I
    .param p9, "octectAligned"    # Z
    .param p10, "mode_set"    # I
    .param p11, "nchannel"    # I
    .param p12, "dtxEnable"    # I
    .param p13, "red_level"    # I
    .param p14, "red_pt"    # I
    .param p15, "dtx"    # C
    .param p16, "dtxRecv"    # C
    .param p17, "hfOnly"    # C
    .param p18, "evsModeSwitch"    # C
    .param p19, "chSend"    # C
    .param p20, "chRecv"    # C
    .param p21, "chAwareRecv"    # I
    .param p22, "cmr"    # I
    .param p23, "brSendMin"    # Ljava/lang/String;
    .param p24, "brSendMax"    # Ljava/lang/String;
    .param p25, "brRecvMin"    # Ljava/lang/String;
    .param p26, "brRecvMax"    # Ljava/lang/String;
    .param p27, "sendBwRange"    # Ljava/lang/String;
    .param p28, "recvBwRange"    # Ljava/lang/String;
    .param p29, "defaultBr"    # Ljava/lang/String;
    .param p30, "defaultBw"    # Ljava/lang/String;

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    .line 1204
    move-object/from16 v0, p0

    move/from16 v31, v1

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object v0, v1

    move/from16 v1, p21

    move-object/from16 v32, v0

    int-to-short v0, v1

    move/from16 v21, v0

    move/from16 v0, p22

    int-to-short v1, v0

    move/from16 v22, v1

    move/from16 v1, v31

    move-object/from16 v0, v32

    invoke-virtual/range {v0 .. v30}, Lcom/sec/sve/SecVideoEngineManager;->steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public steSetNetId(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "netId"    # I

    .line 1248
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->steSetNetId(II)I

    move-result v0

    return v0
.end method

.method public steSetRtcpOnCall(III)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "rr"    # I
    .param p3, "rs"    # I

    .line 1278
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->steSetRtcpOnCall(III)I

    move-result v0

    return v0
.end method

.method public steSetRtcpTimeout(IJ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "sec"    # J

    .line 1268
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->steSetRtcpTimeout(IJ)I

    move-result v0

    return v0
.end method

.method public steSetSessionId(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "sessionId"    # I

    .line 1253
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->steSetSessionId(II)I

    move-result v0

    return v0
.end method

.method public steStartChannel(IIZ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "enableIpv6"    # Z

    .line 1222
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->steStartChannel(IIZ)I

    move-result v0

    return v0
.end method

.method public steStopChannel(I)I
    .locals 1
    .param p1, "channel"    # I

    .line 1227
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->steStopChannel(I)I

    move-result v0

    return v0
.end method

.method public steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 10
    .param p1, "channel"    # I
    .param p2, "dir"    # I
    .param p3, "localIp"    # Ljava/lang/String;
    .param p4, "localPort"    # I
    .param p5, "remoteIp"    # Ljava/lang/String;
    .param p6, "remotePort"    # I
    .param p7, "localRTCPPort"    # I
    .param p8, "remoteRTCPPort"    # I

    .line 1238
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/sec/sve/SecVideoEngineManager;->steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v1

    return v1
.end method

.method public stopCamera(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 405
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 406
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 407
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopCamera: can\'t find UserAgent for mmtel-video."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void

    .line 410
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->stopCamera()V

    .line 411
    return-void
.end method

.method public stopEmoji(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I

    .line 470
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p2}, Lcom/sec/sve/SecVideoEngineManager;->stopEmoji(I)V

    .line 471
    return-void
.end method

.method public stopLocalRingBackTone()I
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->sendEmptyMessage(I)Z

    .line 1156
    const/4 v0, 0x0

    return v0
.end method

.method public stopRecord(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I

    .line 455
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 456
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 457
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopRecord: can\'t find UserAgent for mmtel-video."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void

    .line 460
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->stopRecord(I)V

    .line 461
    return-void
.end method

.method public sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I
    .locals 20
    .param p1, "sessionId"    # I
    .param p2, "audioId"    # I
    .param p3, "audioSampleRate"    # I
    .param p4, "audioCodec"    # Ljava/lang/String;
    .param p5, "audioSource"    # I
    .param p6, "outputFormat"    # I
    .param p7, "maxFileSize"    # J
    .param p9, "maxDuration"    # I
    .param p10, "outputPath"    # Ljava/lang/String;
    .param p11, "audioEncodingBR"    # I
    .param p12, "audioChannels"    # I
    .param p13, "audioSamplingR"    # I
    .param p14, "audioEncoder"    # I
    .param p15, "durationInterval"    # I
    .param p16, "fileSizeInterval"    # J
    .param p18, "author"    # Ljava/lang/String;

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-wide/from16 v16, p16

    move-object/from16 v18, p18

    .line 984
    move-object/from16 v0, p0

    move/from16 v19, v1

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object v0, v1

    move/from16 v1, v19

    invoke-virtual/range {v0 .. v18}, Lcom/sec/sve/SecVideoEngineManager;->sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sveCreateChannel()I
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->sveCreateChannel()I

    move-result v0

    return v0
.end method

.method public sveGetLastPlayedVideoTime(I)Ljava/lang/Object;
    .locals 1
    .param p1, "sessionId"    # I

    .line 931
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object v0

    return-object v0
.end method

.method public sveGetRtcpTimeInfo(I)Ljava/lang/Object;
    .locals 1
    .param p1, "sessionId"    # I

    .line 951
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;

    move-result-object v0

    return-object v0
.end method

.method public sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "audioId"    # I
    .param p4, "audioSampleRate"    # I
    .param p5, "audioCodec"    # Ljava/lang/String;
    .param p6, "videoId"    # I

    .line 977
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/SecVideoEngineManager;->sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public sveRecorderDelete(I)I
    .locals 1
    .param p1, "sessionId"    # I

    .line 992
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveRecorderDelete(I)I

    move-result v0

    return v0
.end method

.method public sveRecorderStart(I)I
    .locals 1
    .param p1, "sessionId"    # I

    .line 997
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveRecorderStart(I)I

    move-result v0

    return v0
.end method

.method public sveRecorderStop(IZ)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "saveFile"    # Z

    .line 1002
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sveRecorderStop(IZ)I

    move-result v0

    return v0
.end method

.method public sveSendGeneralEvent(IIILjava/lang/String;)I
    .locals 1
    .param p1, "event"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/String;

    .line 946
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->sveSendGeneralEvent(IIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I
    .locals 28
    .param p1, "channel"    # I
    .param p2, "as"    # I
    .param p3, "rs"    # I
    .param p4, "rr"    # I
    .param p5, "recvCodecPT"    # I
    .param p6, "sendCodecPT"    # I
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "dir"    # I
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "frameRate"    # I
    .param p12, "maxBitrate"    # I
    .param p13, "enableAVPF"    # Z
    .param p14, "supportAVPFType"    # I
    .param p15, "enableOrientation"    # Z
    .param p16, "CVOGranularity"    # I
    .param p17, "H264Profile"    # I
    .param p18, "H264Level"    # I
    .param p19, "H264ConstraintInfo"    # I
    .param p20, "H264PackMode"    # I
    .param p21, "sps"    # [B
    .param p22, "pps"    # [B
    .param p23, "vps"    # [B
    .param p24, "spsLen"    # I
    .param p25, "ppsLen"    # I
    .param p26, "vpsLen"    # I

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    .line 892
    move-object/from16 v0, p0

    move/from16 v27, v1

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object v0, v1

    move/from16 v1, v27

    invoke-virtual/range {v0 .. v26}, Lcom/sec/sve/SecVideoEngineManager;->sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I

    move-result v0

    return v0
.end method

.method public sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 10
    .param p1, "channel"    # I
    .param p2, "localIp"    # Ljava/lang/String;
    .param p3, "localPort"    # I
    .param p4, "remoteIp"    # Ljava/lang/String;
    .param p5, "remotePort"    # I
    .param p6, "localRTCPPort"    # I
    .param p7, "remoteRTCPPort"    # I
    .param p8, "crbtType"    # I

    .line 882
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/sec/sve/SecVideoEngineManager;->sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v1

    return v1
.end method

.method public sveSetHeldInfo(IZZ)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "isLocal"    # Z
    .param p3, "isHeld"    # Z

    .line 926
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->sveSetHeldInfo(IZZ)I

    move-result v0

    return v0
.end method

.method public sveSetMediaConfig(IZIZIII)I
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "timeOutOnBoth"    # Z
    .param p3, "rtpTimeout"    # I
    .param p4, "rtpKeepAlive"    # Z
    .param p5, "rtcpTimeout"    # I
    .param p6, "mtuSize"    # I
    .param p7, "mno"    # I

    .line 911
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sec/sve/SecVideoEngineManager;->sveSetMediaConfig(IZIZIII)I

    move-result v0

    return v0
.end method

.method public sveSetNetworkQoS(IIII)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "ul_bler"    # I
    .param p3, "dl_bler"    # I
    .param p4, "grant"    # I

    .line 941
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->sveSetNetworkQoS(IIII)I

    move-result v0

    return v0
.end method

.method public sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I
    .locals 15
    .param p1, "sessionId"    # I
    .param p2, "offerSuite"    # Ljava/lang/String;
    .param p3, "aucTagKeyLocal"    # [B
    .param p4, "sendKeySize"    # I
    .param p5, "ucTagKeyLenLocal"    # I
    .param p6, "uiTimetoLiveLocal"    # I
    .param p7, "uiMKILocal"    # I
    .param p8, "answerSuite"    # Ljava/lang/String;
    .param p9, "aucTagKeyRemote"    # [B
    .param p10, "recvKeySize"    # I
    .param p11, "ucTagKeyLenRemote"    # I
    .param p12, "uiTimetoLiveRemote"    # I
    .param p13, "uiMKIRemote"    # I

    .line 904
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v14}, Lcom/sec/sve/SecVideoEngineManager;->sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I

    move-result v1

    return v1
.end method

.method public sveSetVideoPlayDelay(II)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "delayTime"    # I

    .line 936
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sveSetVideoPlayDelay(II)I

    move-result v0

    return v0
.end method

.method public sveStartCamera(II)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "cameraId"    # I

    .line 916
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sveStartCamera(II)I

    move-result v0

    return v0
.end method

.method public sveStartChannel(III)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "oldDirection"    # I
    .param p3, "newDirection"    # I

    .line 871
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->sveStartChannel(III)I

    move-result v0

    return v0
.end method

.method public sveStartRecording(II)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "direction"    # I

    .line 956
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sveStartRecording(II)I

    move-result v0

    return v0
.end method

.method public sveStopCamera()I
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->sveStopCamera()I

    move-result v0

    return v0
.end method

.method public sveStopChannel(I)I
    .locals 1
    .param p1, "channel"    # I

    .line 876
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveStopChannel(I)I

    move-result v0

    return v0
.end method

.method public sveStopRecording(I)I
    .locals 1
    .param p1, "sessionId"    # I

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveStopRecording(I)I

    move-result v0

    return v0
.end method

.method public switchCamera()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->switchCamera()V

    .line 431
    return-void
.end method

.method public triggerTone(ZII)V
    .locals 3
    .param p1, "isStart"    # Z
    .param p2, "tone"    # I
    .param p3, "duration"    # I

    .line 1025
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ToneGenerator was not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tone #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, " start"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "stop"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    if-ltz p2, :cond_2

    const/16 v0, 0xf

    if-le p2, v0, :cond_3

    .line 1033
    :cond_2
    const/4 p2, 0x0

    .line 1036
    :cond_3
    if-eqz p1, :cond_4

    .line 1037
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p2, p3}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_1

    .line 1039
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1041
    :goto_1
    return-void
.end method

.method public unregisterMediaEventListener()V
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventlistener:Lcom/sec/sve/IImsMediaEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/sve/SecVideoEngineManager;->unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V

    .line 1177
    return-void
.end method
