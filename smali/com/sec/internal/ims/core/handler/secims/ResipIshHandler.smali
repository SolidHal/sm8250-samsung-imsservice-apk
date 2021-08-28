.class public Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;
.super Lcom/sec/internal/ims/core/handler/IshHandler;
.source "ResipIshHandler.java"


# static fields
.field private static final EVENT_ACCEPT_ISH_SESSION:I = 0x1

.field private static final EVENT_ACCEPT_SESSION_DONE:I = 0x66

.field private static final EVENT_CANCEL_ISH_SESSION:I = 0x3

.field private static final EVENT_CANCEL_SESSION_DONE:I = 0x68

.field private static final EVENT_REJECT_ISH_SESSION:I = 0x2

.field private static final EVENT_REJECT_SESSION_DONE:I = 0x67

.field private static final EVENT_STACK_NOTIFY:I = 0x3e8

.field private static final EVENT_START_ISH_SESSION:I = 0x0

.field private static final EVENT_START_SESSION_DONE:I = 0x65

.field private static final EVENT_STOP_ISH_SESSION:I = 0x4

.field private static final EVENT_STOP_SESSION_DONE:I = 0x69

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mTransferCompleteRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mTransferFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 90
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/IshHandler;-><init>(Landroid/os/Looper;)V

    .line 81
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 82
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 83
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferCompleteRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 84
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 85
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 92
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 93
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerIshEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method private getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 502
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const-string v1, "is"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method private handleIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 7
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 356
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    .line 357
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleIncomingSessionNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 360
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;

    .line 362
    .local v0, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;->fileName()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;->size()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;->contentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    .local v1, "ishFileTransfer":Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;
    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;->sessionId()J

    move-result-wide v3

    long-to-int v3, v3

    .line 366
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;->remoteUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;-><init>(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;)V

    .line 368
    .local v2, "event":Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleIncomingSessionNotify: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v4, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v4, v5, v2, v5}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 371
    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 2
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 180
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotify(): unexpected id"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->handleTransferProgressNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 192
    goto :goto_0

    .line 188
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->handleSessionTerminatedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 189
    goto :goto_0

    .line 185
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->handleSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 186
    goto :goto_0

    .line 182
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->handleIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 183
    nop

    .line 196
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e81
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 6
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 374
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    .line 375
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSessionEstablishedNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 380
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;

    .line 381
    .local v0, "sessionEstablished":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSessionEstablishedNotify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;->error()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;->error()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne v1, v2, :cond_1

    .line 384
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v2, Lcom/sec/internal/helper/AsyncResult;

    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;

    .line 385
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;->sessionId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;-><init>(I)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 384
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 387
    :cond_1
    return-void
.end method

.method private handleSessionTerminatedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 8
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 391
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 392
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSessionTerminatedNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void

    .line 397
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;

    .line 398
    .local v0, "sessionTerminated":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSessionTerminatedNotify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;->reason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;->reason()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object v1

    .line 400
    .local v1, "reason":Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferCompleteRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v4, Lcom/sec/internal/helper/AsyncResult;

    new-instance v5, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;

    .line 402
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;->sessionId()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v5, v6}, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;-><init>(I)V

    invoke-direct {v4, v3, v5, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 401
    invoke-virtual {v2, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v4, Lcom/sec/internal/helper/AsyncResult;

    new-instance v5, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;

    .line 405
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;->sessionId()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v5, v6, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    invoke-direct {v4, v3, v5, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 404
    invoke-virtual {v2, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 409
    :goto_0
    return-void
.end method

.method private handleTransferProgressNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 7
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 412
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    .line 413
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleTransferProgressNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void

    .line 416
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;

    .line 418
    .local v0, "transferProgress":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTransferProgressNotify: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;->sessionId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;->transferred()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;->total()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v2, Lcom/sec/internal/helper/AsyncResult;

    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;

    .line 422
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;->sessionId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;->transferred()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;-><init>(IJ)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 421
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 423
    return-void
.end method

.method private onAcceptIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;)V
    .locals 12
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;

    .line 257
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAcceptIshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;->mSessionId:I

    .line 260
    .local v0, "sessionHandle":I
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    .line 261
    .local v7, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const/4 v1, -0x1

    if-nez v7, :cond_0

    .line 262
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onStartIshSession: ISH UA not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;->mCallback:Landroid/os/Message;

    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 265
    return-void

    .line 267
    :cond_0
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v8, v2

    .line 269
    .local v8, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v2, -0x1

    .line 270
    .local v2, "PathOffset":I
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 271
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    move v9, v2

    goto :goto_0

    .line 270
    :cond_1
    move v9, v2

    .line 274
    .end local v2    # "PathOffset":I
    .local v9, "PathOffset":I
    :goto_0
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshAcceptSession;->startRequestIshAcceptSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 275
    int-to-long v2, v0

    invoke-static {v8, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshAcceptSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 276
    if-eq v9, v1, :cond_2

    .line 277
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshAcceptSession;->addFilePath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 279
    :cond_2
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshAcceptSession;->endRequestIshAcceptSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v10

    .line 281
    .local v10, "requestIshAcceptSession":I
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 282
    const/16 v1, 0x3ea

    invoke-static {v8, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 283
    const/16 v1, 0x5c

    invoke-static {v8, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 284
    invoke-static {v8, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 285
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v11

    .line 286
    .local v11, "requestOffSet":I
    const/16 v2, 0x3ea

    const/16 v1, 0x65

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;->mCallback:Landroid/os/Message;

    .line 287
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 286
    move-object v1, p0

    move-object v3, v8

    move v4, v11

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 288
    return-void
.end method

.method private onCancelIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 10
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    .line 313
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelIshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 316
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 317
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStartIshSession: ISH UA not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 320
    :cond_0
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 321
    .local v1, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->startRequestIshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 322
    iget v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mSessionId:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 323
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->endRequestIshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    .line 325
    .local v8, "requestIshStopSession":I
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 326
    const/16 v2, 0x3eb

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 327
    const/16 v2, 0x5d

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 328
    invoke-static {v1, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 329
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    .line 330
    .local v9, "requestOffSet":I
    const/16 v3, 0x3eb

    const/16 v2, 0x69

    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 331
    invoke-virtual {p0, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 330
    move-object v2, p0

    move-object v4, v1

    move v5, v9

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 332
    return-void
.end method

.method private onRejectIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V
    .locals 10
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;

    .line 291
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRejectIshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 293
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 294
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStartIshSession: ISH UA not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 297
    :cond_0
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 298
    .local v1, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->startRequestIshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 299
    iget v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;->mSessionId:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 301
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->endRequestIshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    .line 303
    .local v8, "requestIshStopSession":I
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 304
    const/16 v2, 0x3eb

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 305
    const/16 v2, 0x5d

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 306
    invoke-static {v1, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 307
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    .line 308
    .local v9, "requestOffSet":I
    const/16 v3, 0x3eb

    const/16 v2, 0x69

    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 309
    invoke-virtual {p0, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 308
    move-object v2, p0

    move-object v4, v1

    move v5, v9

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 310
    return-void
.end method

.method private onStartIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;)V
    .locals 18
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;

    .line 199
    move-object/from16 v0, p1

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartIshSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 202
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 203
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onStartIshSession: ISH UA not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;->mCallback:Landroid/os/Message;

    new-instance v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-direct {v4, v2, v5}, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    const/4 v2, 0x0

    invoke-static {v3, v4, v2}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 206
    return-void

    .line 208
    :cond_0
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;->mfile:Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, "path":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 210
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onStartIshSession: path is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 213
    :cond_1
    const-string v3, "."

    invoke-virtual {v9, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 214
    .local v10, "extOffset":I
    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 215
    .local v11, "ext":Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 217
    .local v12, "contentType":Ljava/lang/String;
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v13, v3

    .line 219
    .local v13, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v3, -0x1

    .line 220
    .local v3, "ReceiverOffset":I
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;->mReceiver:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 221
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;->mReceiver:Ljava/lang/String;

    invoke-virtual {v13, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    move v14, v3

    goto :goto_0

    .line 220
    :cond_2
    move v14, v3

    .line 224
    .end local v3    # "ReceiverOffset":I
    .local v14, "ReceiverOffset":I
    :goto_0
    const/4 v3, -0x1

    .line 225
    .local v3, "contentTypeOffset":I
    if-eqz v12, :cond_3

    .line 226
    invoke-virtual {v13, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    move v15, v3

    goto :goto_1

    .line 225
    :cond_3
    move v15, v3

    .line 229
    .end local v3    # "contentTypeOffset":I
    .local v15, "contentTypeOffset":I
    :goto_1
    const/4 v3, -0x1

    .line 230
    .local v3, "pathOffset":I
    invoke-virtual {v13, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 232
    .end local v3    # "pathOffset":I
    .local v8, "pathOffset":I
    invoke-static {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->startRequestIshStartSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 233
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v13, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 234
    if-eq v14, v2, :cond_4

    .line 235
    invoke-static {v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->addRemoteUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 237
    :cond_4
    if-eq v15, v2, :cond_5

    .line 238
    invoke-static {v13, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 240
    :cond_5
    if-eq v8, v2, :cond_6

    .line 241
    invoke-static {v13, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->addFilePath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 243
    :cond_6
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;->mfile:Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->getSize()J

    move-result-wide v2

    invoke-static {v13, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 244
    invoke-static {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->endRequestIshStartSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 246
    .local v2, "requestIshStartSession":I
    invoke-static {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 247
    const/16 v3, 0x3e9

    invoke-static {v13, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 248
    const/16 v3, 0x5b

    invoke-static {v13, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 249
    invoke-static {v13, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 250
    invoke-static {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v16

    .line 251
    .local v16, "requestOffSet":I
    const/16 v4, 0x3e9

    const/16 v3, 0x65

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;->mCallback:Landroid/os/Message;

    .line 252
    move-object/from16 v7, p0

    invoke-virtual {v7, v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 251
    move-object/from16 v3, p0

    move-object v5, v13

    move/from16 v6, v16

    move-object/from16 v7, v17

    move/from16 v17, v8

    .end local v8    # "pathOffset":I
    .local v17, "pathOffset":I
    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 254
    return-void
.end method

.method private onStopIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 10
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    .line 335
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopIshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 337
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 338
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStartIshSession: ISH UA not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 341
    :cond_0
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 342
    .local v1, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->startRequestIshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 343
    iget v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mSessionId:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 344
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->endRequestIshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    .line 346
    .local v8, "requestIshStopSession":I
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 347
    const/16 v2, 0x3eb

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 348
    const/16 v2, 0x5d

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 349
    invoke-static {v1, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 350
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    .line 351
    .local v9, "requestOffSet":I
    const/16 v3, 0x3eb

    const/16 v2, 0x69

    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 352
    invoke-virtual {p0, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 351
    move-object v2, p0

    move-object v4, v1

    move v5, v9

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 353
    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "request"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p3, "offset"    # I
    .param p4, "callback"    # Landroid/os/Message;
    .param p5, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 507
    if-nez p5, :cond_0

    .line 508
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRequestToStack(): UserAgent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void

    .line 511
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    .line 512
    return-void
.end method

.method private translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    .locals 1
    .param p1, "error"    # I

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 175
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0

    .line 173
    :pswitch_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->MSRP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0

    .line 171
    :pswitch_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORBIDDEN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0

    .line 169
    :pswitch_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REJECTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0

    .line 167
    :pswitch_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CANCELED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0

    .line 165
    :pswitch_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->TEMPORAIRLY_NOT_AVAILABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0

    .line 163
    :pswitch_5
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->USER_BUSY:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0

    .line 161
    :pswitch_6
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
.method public acceptIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;

    .line 432
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 433
    return-void
.end method

.method public cancelIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    .line 442
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 443
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 153
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: Undefined message."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 138
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 139
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;

    .line 140
    .local v1, "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 141
    .local v2, "mCallback":Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;->error()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne v3, v4, :cond_0

    .line 142
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;->onSuccess()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;->onFailure()V

    .line 146
    goto :goto_0

    .line 125
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;
    .end local v2    # "mCallback":Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 126
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;

    .line 127
    .restart local v1    # "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 128
    .local v2, "callback":Landroid/os/Message;
    if-eqz v2, :cond_7

    .line 129
    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;->sessionId()J

    move-result-wide v4

    long-to-int v4, v4

    .line 130
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;->error()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    const/4 v4, 0x0

    .line 129
    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 131
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 149
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;
    .end local v2    # "callback":Landroid/os/Message;
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 150
    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->onStopIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    .line 121
    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->onCancelIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    .line 117
    goto :goto_0

    .line 112
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->onRejectIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V

    .line 113
    goto :goto_0

    .line 108
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->onAcceptIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;)V

    .line 109
    goto :goto_0

    .line 104
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->onStartIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;)V

    .line 105
    nop

    .line 155
    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerForIshIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 492
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 493
    return-void
.end method

.method public registerForIshSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 453
    return-void
.end method

.method public registerForIshTransferComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferCompleteRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 473
    return-void
.end method

.method public registerForIshTransferFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 463
    return-void
.end method

.method public registerForIshTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 483
    return-void
.end method

.method public rejectIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;

    .line 437
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 438
    return-void
.end method

.method public startIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    return-void
.end method

.method public stopIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    .line 447
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 448
    return-void
.end method

.method public unregisterForIshIncomingSession(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 497
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 498
    return-void
.end method

.method public unregisterForIshSessionEstablished(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 458
    return-void
.end method

.method public unregisterForIshTransferComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferCompleteRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 478
    return-void
.end method

.method public unregisterForIshTransferFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 468
    return-void
.end method

.method public unregisterForIshTransferProgress(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 488
    return-void
.end method
