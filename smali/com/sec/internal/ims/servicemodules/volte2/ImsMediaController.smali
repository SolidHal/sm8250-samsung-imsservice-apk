.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
.super Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;
.source "ImsMediaController.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;


# static fields
.field public static final CAMERA_ID_DEFAULT:I = 0x2

.field public static final CAMERA_ID_FRONT:I = 0x1

.field public static final CAMERA_ID_REAR:I = 0x0

.field private static final EVENT_IMS_MEDIA_EVENT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/volte2/IVideoServiceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultCameraId:I

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mIsUsingCamera:Z

.field private mMediaEventHandler:Landroid/os/Handler;

.field private mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

.field private mPendingCameraId:I

.field private mPendingCameraRequestor:I

.field private mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 1
    .param p1, "vsm"    # Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "eventLog"    # Lcom/sec/internal/helper/SimpleEventLog;

    .line 70
    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;-><init>()V

    .line 52
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    .line 54
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    .line 55
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaEventHandler:Landroid/os/Handler;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 60
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 61
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mIsUsingCamera:Z

    .line 71
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 75
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getMediaSvcIntf()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    .line 77
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaEventHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->init()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    .param p1, "x1"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    .line 47
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void
.end method

.method private getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4

    .line 591
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 592
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v3, :cond_0

    .line 593
    return-object v1

    .line 595
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 597
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getActiveExcept(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4
    .param p1, "session"    # I

    .line 565
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 566
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-eq v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_1

    .line 567
    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    .line 571
    .local v2, "callType":I
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 572
    return-object v1

    .line 574
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "callType":I
    :cond_2
    goto :goto_0

    .line 576
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 577
    .restart local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-eq v2, p1, :cond_4

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_5

    .line 578
    goto :goto_1

    .line 581
    :cond_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    .line 582
    .restart local v2    # "callType":I
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCameraUsingCall(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 583
    return-object v1

    .line 585
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "callType":I
    :cond_6
    goto :goto_1

    .line 587
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 556
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getUsingCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    return-object v1

    .line 559
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 561
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFrameSize()Ljava/lang/String;
    .locals 3

    .line 546
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 547
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    const-string v1, "VGA"

    .line 548
    .local v1, "frameSize":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v1

    .line 551
    :cond_0
    return-object v1
.end method

.method private getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4
    .param p1, "sessionId"    # I

    .line 945
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 946
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 947
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 948
    monitor-exit v0

    return-object v2

    .line 950
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 952
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 953
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSessionByIMSMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 6
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    .line 1034
    const/4 v0, 0x0

    .line 1035
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1036
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-nez v2, :cond_0

    .line 1037
    goto :goto_0

    .line 1040
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 1041
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    .line 1042
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Find conference call session : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    move-object v0, v2

    .line 1044
    goto :goto_1

    .line 1046
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1047
    move-object v0, v2

    .line 1048
    goto :goto_1

    .line 1051
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v3    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_2
    goto :goto_0

    .line 1052
    :cond_3
    :goto_1
    return-object v0
.end method

.method private declared-synchronized logCamera(ZIIZ)V
    .locals 4
    .param p1, "isStart"    # Z
    .param p2, "sessionId"    # I
    .param p3, "camera"    # I
    .param p4, "isNotification"    # Z

    monitor-enter p0

    .line 216
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mIsUsingCamera:Z

    if-eq v0, p1, :cond_2

    .line 217
    const-string v0, "null"

    .line 218
    .local v0, "state":Ljava/lang/String;
    if-ltz p2, :cond_0

    .line 219
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 220
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->name()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 225
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string/jumbo v3, "start"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "stop"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Camera: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), camera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " noti="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 227
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mIsUsingCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v0    # "state":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-void

    .line 215
    .end local p1    # "isStart":Z
    .end local p2    # "sessionId":I
    .end local p3    # "camera":I
    .end local p4    # "isNotification":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    monitor-enter p0

    .line 605
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v0, -0x1

    .line 608
    .local v0, "state":I
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_0

    .line 609
    const/4 v0, 0x1

    .line 610
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_1

    .line 611
    const/4 v0, 0x3

    .line 612
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_2

    .line 613
    const/4 v0, 0x2

    .line 614
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_3

    .line 615
    const/4 v0, 0x5

    .line 616
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_4

    .line 617
    const/4 v0, 0x6

    .line 618
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_DISABLED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_5

    .line 619
    const/4 v0, 0x7

    .line 621
    :cond_5
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 622
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "camera state not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    monitor-exit p0

    return-void

    .line 626
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 627
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_7

    .line 628
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    .local v3, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onCameraState(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    goto :goto_1

    .line 631
    :catch_0
    move-exception v4

    .line 632
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 627
    .end local v3    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 636
    monitor-exit p0

    return-void

    .line 604
    .end local v0    # "state":I
    .end local v1    # "length":I
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onCameraFirstFrameReady(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    monitor-enter p0

    .line 819
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCameraFirstFrameReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 821
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 822
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    .local v2, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onCameraState(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    goto :goto_1

    .line 825
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :catch_0
    move-exception v3

    .line 826
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 821
    .end local v2    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 830
    monitor-exit p0

    return-void

    .line 818
    .end local v0    # "length":I
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onCameraStopSuccess()V
    .locals 6

    .line 845
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    if-lez v0, :cond_1

    .line 846
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CAMERA_STOP_SUCCESS: start camera for pending session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 849
    .local v0, "pendingSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_0

    .line 850
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 851
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    invoke-interface {v1, v2, v3, v5}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startCamera(III)V

    .line 852
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 854
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 855
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    .line 857
    .end local v0    # "pendingSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_1
    return-void
.end method

.method private onCaptureEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;Z)V
    .locals 3
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    .param p2, "success"    # Z

    .line 601
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureEvent: success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method private declared-synchronized onChangePeerDimension(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    monitor-enter p0

    .line 860
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangePeerDimension"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 862
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 863
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    .local v2, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getHeight()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onChangePeerDimension(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    goto :goto_1

    .line 866
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :catch_0
    move-exception v3

    .line 867
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 862
    .end local v2    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 871
    monitor-exit p0

    return-void

    .line 859
    .end local v0    # "length":I
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onClearUsingCamera()V
    .locals 4

    .line 833
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 836
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 837
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v2, :cond_0

    .line 838
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 840
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 841
    :cond_1
    monitor-exit v0

    .line 842
    return-void

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized onEmojiEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    monitor-enter p0

    .line 707
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEmojiEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v0, -0x1

    .line 710
    .local v0, "state":I
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_0

    .line 711
    const/4 v0, 0x0

    .line 712
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_1

    .line 713
    const/4 v0, 0x1

    .line 714
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_2

    .line 715
    const/4 v0, 0x2

    .line 716
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_3

    .line 717
    const/4 v0, 0x3

    .line 718
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_INFO_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_4

    .line 719
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->restartEmoji(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    monitor-exit p0

    return-void

    .line 722
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :cond_4
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 723
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unknown emoji event"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    monitor-exit p0

    return-void

    .line 727
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 728
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 729
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 731
    .local v3, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onEmojiState(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 734
    goto :goto_1

    .line 732
    :catch_0
    move-exception v4

    .line 733
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 728
    .end local v3    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 736
    .end local v2    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 737
    monitor-exit p0

    return-void

    .line 706
    .end local v0    # "state":I
    .end local v1    # "length":I
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onHandleAudioEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    .line 957
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling Audio Event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getAudioEvent()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getAudioRtpStats()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V

    .line 971
    goto :goto_0

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz v0, :cond_3

    .line 975
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRtpLossRate()Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    goto :goto_0

    .line 964
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getChannelId()I

    move-result v2

    .line 965
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getAudioEvent()I

    move-result v3

    const/4 v4, 0x0

    .line 964
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendMediaEvent(IIII)V

    .line 966
    nop

    .line 979
    :cond_3
    :goto_0
    return-void
.end method

.method private onHandleDtmfEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    .line 1022
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling DTMF Event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getDtmfEvent()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz v0, :cond_1

    .line 1026
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getDtmfKey()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;-><init>(IIII)V

    .line 1027
    .local v0, "dtmfInfo":Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->onCmcDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V

    .line 1031
    .end local v0    # "dtmfInfo":Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;
    :cond_1
    :goto_0
    return-void
.end method

.method private onHandleTextEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    .line 982
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling Text Event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getTextEvent()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getChannelId()I

    move-result v3

    .line 992
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getTextEvent()I

    move-result v4

    .line 991
    invoke-interface {v0, v2, v3, v4, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendMediaEvent(IIII)V

    goto :goto_0

    .line 985
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz v0, :cond_2

    .line 986
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRttText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRttTextLen()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;-><init>(ILjava/lang/String;I)V

    .line 987
    .local v0, "textInfo":Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onTextReceived(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V

    .line 995
    .end local v0    # "textInfo":Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;
    :cond_2
    :goto_0
    return-void
.end method

.method private onHandleVideoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Z
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    .line 998
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling Video Event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x75

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1001
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1002
    goto :goto_0

    .line 1009
    :cond_1
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    .line 1010
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result v4

    .line 1009
    invoke-interface {v0, v1, v3, v4, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendMediaEvent(IIII)V

    .line 1011
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    .line 1012
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    .line 1014
    const/4 v0, 0x0

    return v0

    .line 1018
    :cond_2
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    .line 1171
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isAudioEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onHandleAudioEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1174
    return-void

    .line 1175
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isTextEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1176
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onHandleTextEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1178
    return-void

    .line 1179
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isVideoEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1180
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onHandleVideoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1181
    return-void

    .line 1183
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isDtmfEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1184
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onHandleDtmfEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1185
    return-void

    .line 1188
    :cond_3
    const/4 v0, 0x0

    .line 1189
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v1

    .line 1190
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSessionByIMSMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    move-object v0, v2

    .line 1191
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    if-nez v0, :cond_5

    .line 1194
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImsMediaEvent: session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 1197
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_4

    .line 1198
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->stopCamera(I)V

    .line 1201
    :cond_4
    return-void

    .line 1204
    :cond_5
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 1205
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 1207
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onNotifyIMSMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1208
    return-void

    .line 1191
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private onNotifyIMSMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p2, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    .line 1056
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsMediaEvent: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1160
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onEmojiEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1161
    goto/16 :goto_0

    .line 1152
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onRecordEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1153
    goto/16 :goto_0

    .line 1143
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoQuality(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1144
    goto/16 :goto_0

    .line 1135
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onChangePeerDimension(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1136
    goto/16 :goto_0

    .line 1131
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1132
    goto :goto_0

    .line 1124
    :pswitch_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onSwitchCamera()V

    .line 1125
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1126
    goto :goto_0

    .line 1118
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onClearUsingCamera()V

    .line 1119
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setStartCameraState(Z)V

    .line 1120
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1121
    goto :goto_0

    .line 1102
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onClearUsingCamera()V

    .line 1103
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraStopSuccess()V

    .line 1104
    invoke-direct {p0, v2, v1, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 1105
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    .line 1106
    .local v0, "sessionId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz v1, :cond_0

    .line 1107
    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;I)V

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->post(Ljava/lang/Runnable;)Z

    .line 1114
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1115
    goto :goto_0

    .line 1094
    .end local v0    # "sessionId":I
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onClearUsingCamera()V

    .line 1095
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 1096
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setStartCameraState(Z)V

    .line 1097
    invoke-direct {p0, v3, v1, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 1098
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1099
    goto :goto_0

    .line 1090
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraFirstFrameReady(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1091
    goto :goto_0

    .line 1086
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoHold(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1087
    goto :goto_0

    .line 1082
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoOrientationChanged(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1083
    goto :goto_0

    .line 1078
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoAvailable(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1079
    goto :goto_0

    .line 1074
    :pswitch_d
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoResumed(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1075
    goto :goto_0

    .line 1070
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoHold(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1071
    goto :goto_0

    .line 1066
    :pswitch_f
    invoke-direct {p0, p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCaptureEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;Z)V

    .line 1067
    goto :goto_0

    .line 1060
    :pswitch_10
    invoke-virtual {p2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setIsNearEnd(Z)V

    .line 1061
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setFileName(Ljava/lang/String;)V

    .line 1062
    invoke-direct {p0, p2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCaptureEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;Z)V

    .line 1063
    nop

    .line 1167
    :goto_0
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1168
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized onRecordEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    monitor-enter p0

    .line 672
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, -0x1

    .line 675
    .local v0, "state":I
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_0

    .line 676
    const/4 v0, 0x0

    .line 677
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_1

    .line 678
    const/4 v0, 0x1

    .line 679
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_2

    .line 680
    const/4 v0, 0x2

    .line 681
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_3

    .line 682
    const/4 v0, 0x3

    .line 683
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_4

    .line 684
    const/4 v0, 0x4

    .line 685
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_5

    .line 686
    const/4 v0, 0x5

    .line 689
    :cond_5
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 690
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unknwon record event"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit p0

    return-void

    .line 694
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 695
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_7

    .line 696
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    .local v3, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onRecordState(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 701
    goto :goto_1

    .line 699
    :catch_0
    move-exception v4

    .line 700
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 695
    .end local v3    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 704
    monitor-exit p0

    return-void

    .line 671
    .end local v0    # "state":I
    .end local v1    # "length":I
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoAvailable(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    monitor-enter p0

    .line 777
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 779
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 780
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    .local v2, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoState(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 785
    goto :goto_1

    .line 783
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :catch_0
    move-exception v3

    .line 784
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 779
    .end local v2    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 788
    monitor-exit p0

    return-void

    .line 776
    .end local v0    # "length":I
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoHold(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    monitor-enter p0

    .line 740
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoHold or no far frame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isHeldCall()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 742
    monitor-exit p0

    return-void

    .line 745
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 746
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_1

    .line 747
    monitor-exit p0

    return-void

    .line 750
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 751
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 752
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 754
    .local v4, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v5

    invoke-interface {v4, v5, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoState(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 757
    goto :goto_1

    .line 755
    :catch_0
    move-exception v5

    .line 756
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 751
    .end local v4    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 759
    .end local v3    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 760
    monitor-exit p0

    return-void

    .line 739
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "length":I
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoOrientationChanged(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    monitor-enter p0

    .line 805
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoOrientationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 807
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 808
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    .local v2, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoOrientChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 813
    goto :goto_1

    .line 811
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :catch_0
    move-exception v3

    .line 812
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 807
    .end local v2    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 815
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 816
    monitor-exit p0

    return-void

    .line 804
    .end local v0    # "length":I
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoQuality(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    monitor-enter p0

    .line 639
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoQuality "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, -0x1

    .line 642
    .local v0, "quality":I
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_VERYPOOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_0

    .line 643
    const/4 v0, 0x0

    .line 644
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_POOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_1

    .line 645
    const/4 v0, 0x0

    .line 646
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_FAIR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_2

    .line 647
    const/4 v0, 0x1

    .line 648
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_GOOD_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_3

    .line 649
    const/4 v0, 0x2

    .line 650
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_MAX_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v1, v2, :cond_4

    .line 651
    const/4 v0, 0x2

    .line 653
    :cond_4
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 654
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "video quality not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    monitor-exit p0

    return-void

    .line 658
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 659
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 660
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    .local v3, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoQualityChanged(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 665
    goto :goto_1

    .line 663
    :catch_0
    move-exception v4

    .line 664
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 659
    .end local v3    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    .end local v2    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 668
    monitor-exit p0

    return-void

    .line 638
    .end local v0    # "quality":I
    .end local v1    # "length":I
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoResumed(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    monitor-enter p0

    .line 763
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoResumed or far frame ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 765
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 766
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    .local v2, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoState(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    goto :goto_1

    .line 769
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :catch_0
    move-exception v3

    .line 770
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 765
    .end local v2    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 774
    monitor-exit p0

    return-void

    .line 762
    .end local v0    # "length":I
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bindToNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 540
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToNetwork() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->bindToNetwork(Landroid/net/Network;)V

    .line 542
    return-void
.end method

.method public declared-synchronized changeCameraCapabilities(III)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    monitor-enter p0

    .line 874
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "changeCameraCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 876
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 877
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    .local v2, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    goto :goto_1

    .line 880
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :catch_0
    move-exception v3

    .line 881
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 876
    .end local v2    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 885
    monitor-exit p0

    return-void

    .line 873
    .end local v0    # "length":I
    .end local p1    # "sessionId":I
    .end local p2    # "width":I
    .end local p3    # "height":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deinitSurface(Z)V
    .locals 1
    .param p1, "isNearEnd"    # Z

    .line 434
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->deinitSurface(Z)V

    .line 435
    return-void
.end method

.method public getCameraInfo(I)V
    .locals 1
    .param p1, "id"    # I

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->getCameraInfo(I)V

    .line 404
    return-void
.end method

.method public getDefaultCameraId()I
    .locals 1

    .line 451
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    return v0
.end method

.method public getMaxZoom()V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->getMaxZoom()V

    .line 443
    return-void
.end method

.method public getZoom()V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->getZoom()V

    .line 448
    return-void
.end method

.method public holdVideo(I)V
    .locals 5
    .param p1, "sessionId"    # I

    .line 184
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdVideo: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "phoneId":I
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 187
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 190
    :cond_0
    const v2, 0x3000002e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v2, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->holdVideo(II)V

    .line 192
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->setVideoPause(IZ)V

    .line 193
    return-void
.end method

.method public init()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->registerForMediaEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method public isSupportingCameraMotor()Z
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->isSupportingCameraMotor()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onCallDowngraded(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    monitor-enter p0

    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 793
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 794
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    .local v2, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoState(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    goto :goto_1

    .line 797
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :catch_0
    move-exception v3

    .line 798
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 793
    .end local v2    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    monitor-exit p0

    return-void

    .line 791
    .end local v0    # "length":I
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onChangeCallDataUsage(IJ)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "dataUsage"    # J

    monitor-enter p0

    .line 931
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeCallDataUsage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 933
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 934
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    .local v2, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onChangeCallDataUsage(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    goto :goto_1

    .line 937
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :catch_0
    move-exception v3

    .line 938
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 933
    .end local v2    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 941
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 942
    monitor-exit p0

    return-void

    .line 930
    .end local v0    # "length":I
    .end local p1    # "sessionId":I
    .end local p2    # "dataUsage":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;

    monitor-enter p0

    .line 888
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "receiveSessionModifyRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 890
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 891
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    .local v2, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_1
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 896
    goto :goto_1

    .line 894
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :catch_0
    move-exception v3

    .line 895
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 890
    .end local v2    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 899
    monitor-exit p0

    return-void

    .line 887
    .end local v0    # "length":I
    .end local p1    # "sessionId":I
    .end local p2    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "status"    # I
    .param p3, "requestedProfile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p4, "responseProfile"    # Lcom/sec/ims/volte2/data/CallProfile;

    monitor-enter p0

    .line 903
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "receiveSessionModifyResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 905
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 906
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    .local v2, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_1
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    goto :goto_1

    .line 909
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :catch_0
    move-exception v3

    .line 910
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 905
    .end local v2    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 913
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 914
    monitor-exit p0

    return-void

    .line 902
    .end local v0    # "length":I
    .end local p1    # "sessionId":I
    .end local p2    # "status":I
    .end local p3    # "requestedProfile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local p4    # "responseProfile":Lcom/sec/ims/volte2/data/CallProfile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 3
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 105
    if-eqz p1, :cond_0

    .line 106
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForMediaEvent: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 111
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForMediaEvent: session null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void
.end method

.method public declared-synchronized registerForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/volte2/IVideoServiceEventListener;

    monitor-enter p0

    .line 128
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForVideoServiceEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 127
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    .end local p1    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestCallDataUsage()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->requestCallDataUsage()V

    .line 181
    return-void
.end method

.method public resetCameraId()V
    .locals 2

    .line 396
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetCameraId:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->resetCameraId()V

    .line 399
    return-void
.end method

.method public resumeVideo(I)V
    .locals 5
    .param p1, "sessionId"    # I

    .line 196
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeVideo: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "phoneId":I
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 199
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 202
    :cond_0
    const v2, 0x3000002f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v2, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->resumeVideo(II)V

    .line 204
    return-void
.end method

.method public sendLiveVideo(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 521
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendStillImage() disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public sendStillImage(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "imageFormat"    # I
    .param p4, "frameSize"    # Ljava/lang/String;
    .param p5, "toFlip"    # I

    .line 527
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendStillImage() enable filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " frameSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 141
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 142
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setCamera(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid for ImsVideoCall : setCamera- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 3
    .param p1, "value"    # I

    .line 534
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraEffect() value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setCameraEffect(I)V

    .line 536
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setOrientation(I)V

    .line 171
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setDisplaySurface(Ljava/lang/Object;I)V

    .line 161
    return-void
.end method

.method public setDisplaySurfaceForPhoneId(ILandroid/view/Surface;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setDisplaySurface(Ljava/lang/Object;I)V

    .line 166
    return-void
.end method

.method public setPreviewResolution(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 207
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewResolution width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setPreviewResolution(II)V

    .line 209
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setPreviewSurface(Ljava/lang/Object;I)V

    .line 151
    return-void
.end method

.method public setPreviewSurfaceForPhoneId(ILandroid/view/Surface;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setPreviewSurface(Ljava/lang/Object;I)V

    .line 156
    return-void
.end method

.method public declared-synchronized setVideoPause(IZ)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "isVideoPause"    # Z

    monitor-enter p0

    .line 917
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoPause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 919
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 920
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    .local v2, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_start_1
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->setVideoPause(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 925
    goto :goto_1

    .line 923
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :catch_0
    move-exception v3

    .line 924
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 919
    .end local v2    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 928
    monitor-exit p0

    return-void

    .line 916
    .end local v0    # "length":I
    .end local p1    # "sessionId":I
    .end local p2    # "isVideoPause":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "value"    # F

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setZoom(F)V

    .line 176
    return-void
.end method

.method public startCamera(II)V
    .locals 9
    .param p1, "sessionId"    # I
    .param p2, "camera"    # I

    .line 240
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCamera: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " camera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 243
    .local v0, "cameraSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-gez p1, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 245
    .local v1, "activeSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    .line 247
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startCamera: using active sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v1    # "activeSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 256
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_5

    .line 257
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 258
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startCamera: camera already active for session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    if-ne v2, v3, :cond_1

    .line 260
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 262
    :cond_1
    return-void

    .line 265
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v4, v5, :cond_3

    .line 266
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopCamera()V

    goto :goto_0

    .line 268
    :cond_3
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startCamera: camera in use. pending sesssion "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 270
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    .line 271
    if-eqz v0, :cond_4

    .line 272
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 274
    :cond_4
    return-void

    .line 279
    :cond_5
    :goto_0
    iput v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 280
    iput v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    .line 282
    const/4 v3, 0x2

    if-eq p2, v3, :cond_6

    if-ltz p2, :cond_6

    .line 283
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 286
    :cond_6
    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 287
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 290
    :cond_7
    const/4 v4, 0x0

    .line 291
    .local v4, "phoneId":I
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 292
    .local v5, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v5, :cond_8

    .line 293
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    .line 296
    :cond_8
    const v6, 0x3000002c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 297
    invoke-direct {p0, v3, p1, p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 298
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    invoke-interface {v2, v4, p1, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startCamera(III)V

    .line 299
    return-void
.end method

.method public startCamera(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 233
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCamera:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startCamera(Landroid/view/Surface;)V

    .line 237
    return-void
.end method

.method public startCameraForActiveExcept(I)V
    .locals 3
    .param p1, "session"    # I

    .line 302
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCameraForActiveExcept: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveExcept(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 305
    .local v0, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    .line 306
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "active VT session found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startLastUsedCamera()V

    .line 309
    :cond_0
    return-void
.end method

.method public declared-synchronized startEmoji(Ljava/lang/String;)V
    .locals 4
    .param p1, "emojiInfo"    # Ljava/lang/String;

    monitor-enter p0

    .line 501
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 502
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    .line 503
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startEmoji(IILjava/lang/String;)V

    goto :goto_0

    .line 505
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :cond_0
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 506
    .local v1, "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 507
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onEmojiEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    .end local v1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :goto_0
    monitor-exit p0

    return-void

    .line 500
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local p1    # "emojiInfo":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startRecord(Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    monitor-enter p0

    .line 460
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 461
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-nez v0, :cond_0

    .line 462
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 463
    .local v1, "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 464
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onRecordEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    .line 469
    .end local v1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VideoCall"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 470
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/VideoCall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 472
    :cond_2
    const-string v1, ".mp4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 473
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 474
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object p1, v2

    .line 477
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 481
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-interface {v3, v4, v5, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startRecord(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    .line 459
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "dir":Ljava/io/File;
    .end local p1    # "filePath":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startRender(Z)V
    .locals 1
    .param p1, "isNearEnd"    # Z

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startRender(Z)V

    .line 412
    return-void
.end method

.method public startVideoRenderer(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 416
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startVideoRenderer(Landroid/view/Surface;)V

    .line 417
    return-void
.end method

.method public stopActiveCamera()V
    .locals 3

    .line 325
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopActiveCamera:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 328
    .local v0, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    .line 329
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "active VT session found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopCamera()V

    .line 332
    :cond_0
    return-void
.end method

.method public stopCamera()V
    .locals 4

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 315
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 316
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 317
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    goto :goto_0

    .line 318
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopCamera:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, -0x1

    invoke-direct {p0, v3, v1, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 320
    const v1, 0x3000002d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopCamera(I)V

    .line 322
    return-void
.end method

.method public stopCamera(I)V
    .locals 9
    .param p1, "sessionId"    # I

    .line 335
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopCamera: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 338
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getUsingCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Do not call stopCamera multiple times"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void

    .line 343
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    const/4 v2, -0x1

    if-ne v1, p1, :cond_1

    .line 344
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 345
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 346
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 347
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopCamera: cancel pending camera."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void

    .line 352
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_1
    const/4 v1, 0x0

    .line 353
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 354
    .local v4, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 355
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 356
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    .line 358
    .end local v4    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_2
    goto :goto_0

    .line 360
    :cond_3
    invoke-direct {p0, v5, p1, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 361
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopCamera(I)V

    .line 363
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    if-lez v3, :cond_5

    .line 364
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopCamera: start camera for pending session "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    .line 367
    .local v3, "pendingSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v6, :cond_4

    .line 368
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    const/4 v7, 0x1

    invoke-direct {p0, v7, v4, v6, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 369
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    iget v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    invoke-interface {v4, v5, v6, v8}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startCamera(III)V

    .line 370
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 372
    :cond_4
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 373
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    .line 375
    .end local v3    # "pendingSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_5
    return-void
.end method

.method public declared-synchronized stopEmoji(I)V
    .locals 3
    .param p1, "sessionId"    # I

    monitor-enter p0

    .line 513
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopEmoji : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopEmoji(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    monitor-exit p0

    return-void

    .line 512
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    .end local p1    # "sessionId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopRecord()V
    .locals 4

    monitor-enter p0

    .line 486
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 487
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    .line 488
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopRecord(II)V

    goto :goto_0

    .line 490
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    :cond_0
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 491
    .local v1, "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 492
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onRecordEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    .end local v1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :goto_0
    monitor-exit p0

    return-void

    .line 485
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopVideoRenderer()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopVideoRenderer()V

    .line 422
    return-void
.end method

.method public swipeVideoSurface()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->swipeVideoSurface()V

    .line 430
    return-void
.end method

.method public switchCamera()V
    .locals 3

    .line 379
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchCamera: current camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 382
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_1

    .line 383
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 384
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    goto :goto_0

    .line 386
    :cond_0
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->switchCamera()V

    goto :goto_1

    .line 390
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "switchCamera: skip because incoming vtcall state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_1
    return-void
.end method

.method public unregisterForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 3
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 116
    if-eqz p1, :cond_0

    .line 117
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterForMediaEvent: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 122
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForMediaEvent: session null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void
.end method

.method public declared-synchronized unregisterForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/volte2/IVideoServiceEventListener;

    monitor-enter p0

    .line 134
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForVideoServiceEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 133
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    .end local p1    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
