.class public Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
.super Lcom/sec/internal/helper/StateMachine;
.source "ImageShare.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FailedState;,
        Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState;,
        Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FinishedState;,
        Lcom/sec/internal/ims/servicemodules/csh/ImageShare$TransferCompleteState;,
        Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;,
        Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;,
        Lcom/sec/internal/ims/servicemodules/csh/ImageShare$OutgoingPendingState;,
        Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;,
        Lcom/sec/internal/ims/servicemodules/csh/ImageShare$DefaultState;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "placeholder"

.field private static final EVENT_ACCEPT_INCOMING_SESSION:I = 0x5

.field private static final EVENT_ACCEPT_SESSION_DONE:I = 0x6

.field private static final EVENT_CANCEL_BY_LOCAL_SESSION:I = 0x7

.field private static final EVENT_INCOMING_SESSION_DONE:I = 0x4

.field private static final EVENT_INCOMING_SESSION_PRE_REJECT:I = 0x3

.field private static final EVENT_SESSION_ESTABLISHED:I = 0x8

.field private static final EVENT_SESSION_FAILED:I = 0x9

.field private static final EVENT_START_OUTGOING_SESSION:I = 0x1

.field private static final EVENT_START_SESSION_DONE:I = 0x2

.field private static final EVENT_TRANSFER_COMPLETED:I = 0xa

.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected final mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

.field private mDefaultState:Lcom/sec/internal/helper/State;

.field private mFailedState:Lcom/sec/internal/helper/State;

.field private mFinishedState:Lcom/sec/internal/helper/State;

.field private mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

.field private mInProgressState:Lcom/sec/internal/helper/State;

.field private mIncomingPendingState:Lcom/sec/internal/helper/State;

.field private mInitialState:Lcom/sec/internal/helper/State;

.field private final mIshModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

.field private mOutgoingPendingState:Lcom/sec/internal/helper/State;

.field private mPreRejectedState:Lcom/sec/internal/helper/State;

.field protected mSessionId:I

.field private mTransferCompleteState:Lcom/sec/internal/helper/State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;)V
    .locals 2
    .param p1, "imsService"    # Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;
    .param p2, "ishService"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;
    .param p3, "info"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ish Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 137
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$DefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$DefaultState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 219
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mInitialState:Lcom/sec/internal/helper/State;

    .line 276
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$OutgoingPendingState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$OutgoingPendingState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mOutgoingPendingState:Lcom/sec/internal/helper/State;

    .line 378
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mIncomingPendingState:Lcom/sec/internal/helper/State;

    .line 433
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mInProgressState:Lcom/sec/internal/helper/State;

    .line 459
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$TransferCompleteState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$TransferCompleteState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mTransferCompleteState:Lcom/sec/internal/helper/State;

    .line 482
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FinishedState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FinishedState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mFinishedState:Lcom/sec/internal/helper/State;

    .line 511
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mPreRejectedState:Lcom/sec/internal/helper/State;

    .line 534
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FailedState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FailedState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mFailedState:Lcom/sec/internal/helper/State;

    .line 61
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mIshModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    .line 62
    invoke-static {}, Lcom/sec/internal/helper/AtomicGenerator;->generateUniqueLong()J

    move-result-wide v0

    iput-wide v0, p3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 63
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    .line 64
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    .line 65
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->init()V

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mIshModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 38
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->doRejectIncomingSession()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mTransferCompleteState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mFinishedState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mFailedState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mOutgoingPendingState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mIncomingPendingState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mPreRejectedState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mInProgressState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method private doRejectIncomingSession()V
    .locals 3

    .line 537
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 552
    .local v0, "Rejectparams":Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->rejectIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V

    .line 553
    return-void
.end method

.method private init()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->addState(Lcom/sec/internal/helper/State;)V

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mInitialState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mOutgoingPendingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mIncomingPendingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mInProgressState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mTransferCompleteState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mFinishedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mPreRejectedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mFailedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 130
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->start()V

    .line 131
    return-void
.end method


# virtual methods
.method public acceptIncomingSession()V
    .locals 2

    .line 107
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sendMessage(Landroid/os/Message;)V

    .line 108
    return-void
.end method

.method public cancelByLocalSession()V
    .locals 2

    .line 111
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sendMessage(Landroid/os/Message;)V

    .line 112
    return-void
.end method

.method public getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    return-wide v0
.end method

.method public getSessionId()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    return v0
.end method

.method public incomingSessionDone()V
    .locals 2

    .line 91
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sendMessage(Landroid/os/Message;)V

    .line 92
    return-void
.end method

.method public incomingSessionPreReject()V
    .locals 2

    .line 115
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sendMessage(Landroid/os/Message;)V

    .line 116
    return-void
.end method

.method public sessioinEstablished()V
    .locals 2

    .line 95
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sendMessage(Landroid/os/Message;)V

    .line 96
    return-void
.end method

.method public sessionFailed()V
    .locals 2

    .line 99
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sendMessage(Landroid/os/Message;)V

    .line 100
    return-void
.end method

.method public setSessionId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 74
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    .line 75
    return-void
.end method

.method public startQutgoingSession()V
    .locals 2

    .line 87
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sendMessage(Landroid/os/Message;)V

    .line 88
    return-void
.end method

.method public transferCompleted()V
    .locals 2

    .line 103
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sendMessage(Landroid/os/Message;)V

    .line 104
    return-void
.end method
