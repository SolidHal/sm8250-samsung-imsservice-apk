.class public Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;
.super Lcom/sec/internal/ims/core/handler/VshHandler;
.source "ResipVshHandler.java"


# static fields
.field private static final EVENT_ACCEPT_SESSION_DONE:I = 0x65

.field private static final EVENT_ACCEPT_VSH_SESSION:I = 0x1

.field private static final EVENT_CANCEL_SESSION_DONE:I = 0x68

.field private static final EVENT_CANCEL_VSH_SESSION:I = 0x3

.field private static final EVENT_REJECT_SESSION_DONE:I = 0x66

.field private static final EVENT_REJECT_VSH_SESSION:I = 0x2

.field private static final EVENT_RESET_VIDEO_DISPLAY:I = 0x7

.field private static final EVENT_SET_VIDEO_DISPLAY:I = 0x6

.field private static final EVENT_SET_VSH_PHONE_ORIENTATION:I = 0x5

.field private static final EVENT_STACK_NOTIFY:I = 0x3e8

.field private static final EVENT_START_SESSION_DONE:I = 0x64

.field private static final EVENT_START_VSH_SESSION:I = 0x0

.field private static final EVENT_STOP_SESSION_DONE:I = 0x67

.field private static final EVENT_STOP_VSH_SESSION:I = 0x4

.field private static final EVENT_SWITCH_CAMERA:I = 0x8

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSessionTerminatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field private mSveManager:Lcom/sec/sve/SecVideoEngineManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 96
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/VshHandler;-><init>(Landroid/os/Looper;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    .line 91
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 92
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 93
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionTerminatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 98
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 99
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 100
    const/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerVshEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    new-instance v0, Lcom/sec/sve/SecVideoEngineManager;

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$1;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;)V

    invoke-direct {v0, p2, v1}, Lcom/sec/sve/SecVideoEngineManager;-><init>(Landroid/content/Context;Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    .line 114
    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->connectService()V

    .line 115
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 4

    .line 551
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 552
    .local v0, "dds":I
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAgent() of SIM slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 555
    .local v1, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const-string/jumbo v2, "vs"

    invoke-interface {v1, v2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v2
.end method

.method private handleIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 9
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 208
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    .line 209
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 213
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshIncomingSession;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshIncomingSession;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshIncomingSession;

    .line 216
    .local v0, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshIncomingSession;
    const/4 v7, 0x1

    .line 218
    .local v7, "source":I
    new-instance v8, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshIncomingSession;->sessionId()J

    move-result-wide v1

    long-to-int v2, v1

    .line 219
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshIncomingSession;->remoteUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;-><init>(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    .local v1, "event":Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIncomingSessionNotify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v3, Lcom/sec/internal/helper/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 224
    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 2
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 192
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotify(): unexpected id"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->handleSessionTerminatedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 201
    goto :goto_0

    .line 197
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->handleSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 198
    goto :goto_0

    .line 194
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->handleIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 195
    nop

    .line 205
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4269
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 5
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 227
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    .line 228
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 232
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionEstablished;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionEstablished;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionEstablished;

    .line 234
    .local v0, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionEstablished;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionEstablished;->sessionId()J

    move-result-wide v2

    long-to-int v2, v2

    .line 235
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionEstablished;->resolution()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->translateToVshResolution(I)Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/VshResolution;)V

    .line 237
    .local v1, "event":Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIncomingSessionNotify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v3, Lcom/sec/internal/helper/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 240
    return-void
.end method

.method private handleSessionTerminatedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 5
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 243
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_0

    .line 244
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void

    .line 248
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionTerminated;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionTerminated;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionTerminated;

    .line 250
    .local v0, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionTerminated;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionTerminated;->sessionId()J

    move-result-wide v2

    long-to-int v2, v2

    .line 251
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionTerminated;->reason()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    .line 253
    .local v1, "event":Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSessionTerminatedNotify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionTerminatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v3, Lcom/sec/internal/helper/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 256
    return-void
.end method

.method private onAcceptVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;)V
    .locals 7
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;

    .line 338
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAcceptVshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mSessionId:I

    .line 342
    .local v0, "sessionHandle":I
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 343
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v1, :cond_1

    .line 344
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "UA not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mCallback:Landroid/os/Message;

    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-direct {v3, v0, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 348
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 350
    :cond_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 354
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind network for VSH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/sve/SecVideoEngineManager;->bindToNetwork(Landroid/net/Network;)V

    .line 358
    :cond_2
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 360
    .local v2, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshAcceptSession;->startRequestVshAcceptSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 361
    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshAcceptSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 362
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshAcceptSession;->endRequestVshAcceptSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 364
    .local v3, "offset":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 365
    const/16 v4, 0x44e

    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 366
    const/16 v5, 0x61

    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 367
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 368
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 370
    const/16 v5, 0x65

    iget-object v6, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mCallback:Landroid/os/Message;

    .line 371
    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 370
    invoke-direct {p0, v4, v2, v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 372
    return-void
.end method

.method private onCancelVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 6
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    .line 395
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelVshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mSessionId:I

    .line 398
    .local v0, "sessionHandle":I
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 399
    .local v1, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->startRequestVshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 400
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 401
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->endRequestVshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 402
    .local v2, "offset":I
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 403
    const/16 v3, 0x44f

    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 404
    const/16 v4, 0x62

    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 405
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 406
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 408
    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 409
    const/16 v5, 0x68

    invoke-virtual {p0, v5, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 408
    invoke-direct {p0, v3, v1, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 410
    return-void
.end method

.method private onRejectVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V
    .locals 6
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;

    .line 375
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRejectVshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;->mSessionId:I

    .line 378
    .local v0, "sessionHandle":I
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 380
    .local v1, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->startRequestVshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 381
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 382
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->endRequestVshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 384
    .local v2, "offset":I
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 385
    const/16 v3, 0x44f

    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 386
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 387
    const/16 v4, 0x62

    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 388
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 390
    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 391
    const/16 v5, 0x66

    invoke-virtual {p0, v5, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 390
    invoke-direct {p0, v3, v1, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 392
    return-void
.end method

.method private onResetVshVideoDisplay()V
    .locals 0

    .line 464
    return-void
.end method

.method private onSetOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V
    .locals 3
    .param p1, "orientation"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "value":I
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$2;->$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    const/4 v0, 0x2

    .line 444
    goto :goto_0

    .line 440
    :cond_1
    const/4 v0, 0x3

    .line 441
    goto :goto_0

    .line 437
    :cond_2
    const/4 v0, 0x0

    .line 438
    goto :goto_0

    .line 434
    :cond_3
    const/4 v0, 0x1

    .line 435
    nop

    .line 448
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v1, v0}, Lcom/sec/sve/SecVideoEngineManager;->setOrientation(I)V

    .line 449
    return-void
.end method

.method private onSetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V
    .locals 3
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;

    .line 452
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mViewType:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->LOCAL:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    if-ne v0, v1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mVideoDisplay:Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->getWindowHandle()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mVideoDisplay:Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    .line 454
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->getColor()I

    move-result v2

    .line 453
    invoke-virtual {v0, v1, v2}, Lcom/sec/sve/SecVideoEngineManager;->setPreviewSurface(Landroid/view/Surface;I)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mVideoDisplay:Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->getWindowHandle()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mVideoDisplay:Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    .line 457
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->getColor()I

    move-result v2

    .line 456
    invoke-virtual {v0, v1, v2}, Lcom/sec/sve/SecVideoEngineManager;->setDisplaySurface(Landroid/view/Surface;I)V

    .line 460
    :goto_0
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;->onSuccess()V

    .line 461
    return-void
.end method

.method private onStartVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;)V
    .locals 7
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;

    .line 301
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartVshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 304
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_1

    .line 305
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "UA not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;->mCallback:Landroid/os/Message;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    const/4 v3, -0x1

    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 309
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 311
    :cond_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 315
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind network for VSH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/sve/SecVideoEngineManager;->bindToNetwork(Landroid/net/Network;)V

    .line 319
    :cond_2
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 320
    .local v1, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;->mReceiver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 322
    .local v2, "remoteUriOffset":I
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStartSession;->startRequestVshStartSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 323
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStartSession;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 324
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStartSession;->addRemoteUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 325
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStartSession;->endRequestVshStartSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 327
    .local v3, "offset":I
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 328
    const/16 v4, 0x44d

    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 329
    const/16 v5, 0x60

    invoke-static {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 330
    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 331
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 333
    const/16 v5, 0x64

    iget-object v6, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;->mCallback:Landroid/os/Message;

    .line 334
    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 333
    invoke-direct {p0, v4, v1, v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 335
    return-void
.end method

.method private onStopVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 6
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    .line 413
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopVshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mSessionId:I

    .line 416
    .local v0, "sessionHandle":I
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 417
    .local v1, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->startRequestVshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 418
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 419
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->endRequestVshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 420
    .local v2, "offset":I
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 421
    const/16 v3, 0x44f

    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 422
    const/16 v4, 0x62

    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 423
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 424
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 426
    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 427
    const/16 v5, 0x67

    invoke-virtual {p0, v5, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 426
    invoke-direct {p0, v3, v1, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 428
    return-void
.end method

.method private onSwitchCamera(Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->switchCamera()V

    .line 470
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;->onSuccess()V

    .line 471
    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "request"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p3, "offset"    # I
    .param p4, "callback"    # Landroid/os/Message;

    .line 559
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 560
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 561
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendRequestToStack(): UserAgent not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void

    .line 564
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    .line 565
    return-void
.end method

.method private translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    .locals 1
    .param p1, "error"    # I

    .line 260
    if-eqz p1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 270
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0

    .line 268
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CSH_CAM_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0

    .line 266
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->RTP_RTCP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0

    .line 264
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CANCELED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0

    .line 262
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0
.end method

.method private translateToVshResolution(I)Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;
    .locals 1
    .param p1, "resolution"    # I

    .line 276
    packed-switch p1, :pswitch_data_0

    .line 296
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object v0

    .line 294
    :pswitch_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->CIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object v0

    .line 292
    :pswitch_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->VGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object v0

    .line 290
    :pswitch_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QVGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object v0

    .line 288
    :pswitch_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object v0

    .line 286
    :pswitch_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->CIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object v0

    .line 284
    :pswitch_5
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->VGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object v0

    .line 282
    :pswitch_6
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QVGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object v0

    .line 280
    :pswitch_7
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object v0

    .line 278
    :pswitch_8
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->NONE:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acceptVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;

    .line 485
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    return-void
.end method

.method public cancelVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    .line 495
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 496
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 187
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: Undefined message."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 175
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;

    .line 176
    .local v1, "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 177
    .local v2, "mCallback":Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;->error()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne v3, v4, :cond_0

    .line 178
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;->onSuccess()V

    goto/16 :goto_0

    .line 180
    :cond_0
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;->onFailure()V

    .line 182
    goto/16 :goto_0

    .line 162
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;
    .end local v2    # "mCallback":Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 163
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;

    .line 164
    .restart local v1    # "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 165
    .local v2, "callback":Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 166
    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;->sessionId()J

    move-result-wide v4

    long-to-int v4, v4

    .line 167
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;->error()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    const/4 v4, 0x0

    .line 166
    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 168
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 157
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;
    .end local v2    # "callback":Landroid/os/Message;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onSwitchCamera(Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;)V

    .line 158
    goto :goto_0

    .line 153
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onResetVshVideoDisplay()V

    .line 154
    goto :goto_0

    .line 149
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onSetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V

    .line 150
    goto :goto_0

    .line 145
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onSetOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V

    .line 146
    goto :goto_0

    .line 141
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onStopVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    .line 142
    goto :goto_0

    .line 137
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onCancelVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    .line 138
    goto :goto_0

    .line 133
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onRejectVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V

    .line 134
    goto :goto_0

    .line 129
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onAcceptVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;)V

    .line 130
    goto :goto_0

    .line 125
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onStartVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;)V

    .line 126
    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 185
    nop

    .line 189
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerForVshIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 522
    return-void
.end method

.method public registerForVshSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 532
    return-void
.end method

.method public registerForVshSessionTerminated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 541
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionTerminatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 542
    return-void
.end method

.method public rejectVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;

    .line 490
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 491
    return-void
.end method

.method public resetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;

    .line 515
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 516
    return-void
.end method

.method public setVshPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V
    .locals 1
    .param p1, "orientation"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 475
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 476
    return-void
.end method

.method public setVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;

    .line 510
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 511
    return-void
.end method

.method public startVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    return-void
.end method

.method public stopVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    .line 500
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    return-void
.end method

.method public switchCamera(Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;

    .line 505
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    return-void
.end method

.method public unregisterForVshIncomingSession(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 527
    return-void
.end method

.method public unregisterForVshSessionEstablished(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 536
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 537
    return-void
.end method

.method public unregisterForVshSessionTerminated(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 546
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionTerminatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 547
    return-void
.end method
