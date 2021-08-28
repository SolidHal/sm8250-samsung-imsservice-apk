.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;
.super Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.source "ImsConfSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mGroupInvitingParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvitingParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mIsExtendToConference:Z

.field private final mParticipantStatus:Landroid/util/SparseIntArray;

.field private final mParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAddParticipantId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p3, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "module"    # Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1262
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    .line 52
    const-string v0, "ImsConfSession"

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mInvitingParticipants:Ljava/util/List;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipants:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mGroupInvitingParticipants:Ljava/util/List;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mGroupParticipants:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipantStatus:Landroid/util/SparseIntArray;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mPendingAddParticipantId:I

    .line 62
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mIsExtendToConference:Z

    .line 1263
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    .line 51
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mIsExtendToConference:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mIsExtendToConference:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mGroupInvitingParticipants:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;
    .param p1, "x1"    # I

    .line 51
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->getParticipantId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;
    .param p1, "x1"    # I

    .line 51
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->getSessionFromInvitingParticipants(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipantStatus:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->notifyOnConferenceEstablished()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mGroupParticipants:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mInvitingParticipants:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    .line 51
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mPendingAddParticipantId:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;
    .param p1, "x1"    # I

    .line 51
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mPendingAddParticipantId:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipants:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getParticipantId(I)I
    .locals 2
    .param p1, "callId"    # I

    .line 1537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipants:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1538
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipants:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1539
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipants:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1

    .line 1537
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1542
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getSessionFromInvitingParticipants(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .param p1, "sessionId"    # I

    .line 1546
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mInvitingParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1547
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1548
    return-object v1

    .line 1550
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 1551
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyOnConferenceEstablished()V
    .locals 4

    .line 1521
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1523
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1524
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1527
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConferenceEstablished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1530
    goto :goto_1

    .line 1528
    :catch_0
    move-exception v3

    .line 1529
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1523
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1533
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1534
    return-void
.end method


# virtual methods
.method public extendToConference([Ljava/lang/String;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1382
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mIsExtendToConference:Z

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x35

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1385
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->extendToConference([Ljava/lang/String;)V

    .line 1387
    :goto_0
    return-void
.end method

.method public handleRegistrationDone(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "regInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 1508
    const-string v0, "ImsConfSession"

    const-string v1, "handleRegistrationDone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 1510
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    .line 1511
    return-void
.end method

.method public handleRegistrationFailed()V
    .locals 2

    .line 1515
    const-string v0, "ImsConfSession"

    const-string v1, "handleRegistrationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 1517
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    .line 1518
    return-void
.end method

.method public holdVideo()V
    .locals 2

    .line 1391
    const-string v0, "ImsConfSession"

    const-string v1, "Unsupported API - holdVideo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    return-void
.end method

.method public init(Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 16
    .param p1, "stackIf"    # Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
    .param p2, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 1267
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 1268
    move-object/from16 v14, p2

    iput-object v14, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 1270
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-nez v0, :cond_0

    .line 1271
    iget v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMno:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    .line 1273
    :cond_0
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 1276
    :goto_0
    new-instance v15, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mContext:Landroid/content/Context;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v10, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v11, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mLooper:Landroid/os/Looper;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;)V

    iput-object v15, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 1278
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->init()V

    .line 1279
    new-instance v8, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    .line 1281
    new-instance v11, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v10, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;)V

    iput-object v11, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    .line 1283
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1284
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, v12}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForReferStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1285
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v0, v12}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->registerForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1286
    const-string v0, "ImsConfSession"

    const-string/jumbo v1, "start ConfCallStateMachine state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->start()V

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->setIsNrSaMode()V

    .line 1289
    return-void
.end method

.method public inviteGroupParticipant(Ljava/lang/String;)V
    .locals 2
    .param p1, "participant"    # Ljava/lang/String;

    .line 1372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x35

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1373
    return-void
.end method

.method public inviteParticipants(I)V
    .locals 6
    .param p1, "participantId"    # I

    .line 1341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1342
    .local v0, "participant":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1344
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getSupportUpgradeVideoConference()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1347
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1348
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1350
    const-string v2, "ImsConfSession"

    const-string v3, "Need to Upgrade to Conference Call for add Video Participants"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->startCamera(I)V

    .line 1353
    new-instance v3, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v3}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 1354
    .local v3, "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1355
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->modifyCallType(Lcom/sec/ims/volte2/data/CallProfile;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1356
    const-string v4, "Modify Request success pending add Participant"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mPendingAddParticipantId:I

    .line 1358
    return-void

    .line 1362
    .end local v3    # "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v3, 0x35

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1363
    return-void
.end method

.method public merge(II)V
    .locals 3
    .param p1, "heldsessionId"    # I
    .param p2, "activesessionId"    # I

    .line 1314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x48

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1316
    return-void
.end method

.method protected onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallProfile.isConferenceCall() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfSession"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_3

    .line 1428
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 1436
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    .line 1437
    return-void

    .line 1429
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->isConference()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1430
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    .line 1431
    return-void

    .line 1433
    :cond_2
    const-string v0, "Change to callprofile type"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    .line 1441
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->getSessionId()I

    move-result v3

    if-eq v0, v3, :cond_4

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not interest other sessionId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    return-void

    .line 1446
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event state : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_c

    const/4 v3, 0x3

    if-eq v0, v2, :cond_a

    if-eq v0, v3, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    .line 1501
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    goto/16 :goto_2

    .line 1488
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1489
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x67

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    goto :goto_1

    .line 1494
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 1495
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getUpdatedParticipantsList()Ljava/util/List;

    move-result-object v1

    .line 1494
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1497
    goto/16 :goto_2

    .line 1490
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 1492
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getUpdatedParticipantsList()Ljava/util/List;

    move-result-object v1

    const-wide/16 v3, 0x64

    .line 1490
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto/16 :goto_2

    .line 1481
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1482
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x66

    .line 1483
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getUpdatedParticipantsList()Ljava/util/List;

    move-result-object v2

    .line 1482
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1484
    goto/16 :goto_2

    .line 1475
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1476
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x65

    .line 1477
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getUpdatedParticipantsList()Ljava/util/List;

    move-result-object v2

    .line 1476
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1478
    goto/16 :goto_2

    .line 1464
    :cond_a
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 1465
    .local v0, "error":Lcom/sec/ims/util/SipError;
    const-string/jumbo v2, "sendMessage CallStateMachine.ON_ENDED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    if-nez v0, :cond_b

    .line 1467
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    goto :goto_2

    .line 1469
    :cond_b
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 1470
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    const/4 v4, -0x1

    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v5

    .line 1469
    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1472
    goto :goto_2

    .line 1449
    .end local v0    # "error":Lcom/sec/ims/util/SipError;
    :cond_c
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 1450
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1451
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/ImsCallUtil;->getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 1452
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getRemoteVideoCapa()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 1454
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    .line 1456
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_d

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event callType : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x5b

    .line 1459
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v2

    .line 1458
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(II)V

    .line 1504
    :cond_d
    :goto_2
    return-void
.end method

.method public removeGroupParticipant(Ljava/lang/String;)V
    .locals 2
    .param p1, "participant"    # Ljava/lang/String;

    .line 1377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x36

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1378
    return-void
.end method

.method public removeParticipants(I)V
    .locals 4
    .param p1, "participantId"    # I

    .line 1367
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x36

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1368
    return-void
.end method

.method public resumeVideo()V
    .locals 2

    .line 1396
    const-string v0, "ImsConfSession"

    const-string v1, "Unsupported API - resumeVideo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    return-void
.end method

.method public sendDtmf(IILandroid/os/Message;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "duration"    # I
    .param p3, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1406
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->sendDtmf(IILandroid/os/Message;)V

    .line 1407
    return-void
.end method

.method public sendText(Ljava/lang/String;I)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "len"    # I

    .line 1401
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->sendText(Ljava/lang/String;I)V

    .line 1402
    return-void
.end method

.method public setTtyMode(I)V
    .locals 2
    .param p1, "ttyMode"    # I

    .line 1421
    const-string v0, "ImsConfSession"

    const-string v1, "Not supported operation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    return-void
.end method

.method public start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1293
    if-nez p2, :cond_0

    .line 1295
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1298
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1299
    const-string v0, "\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1300
    .local v0, "participantsList":[Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 1301
    .end local v0    # "participantsList":[Ljava/lang/String;
    goto :goto_0

    .line 1302
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    .line 1304
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 6
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1320
    const-string v0, "ImsConfSession"

    if-eqz p2, :cond_2

    .line 1325
    if-eqz p1, :cond_1

    .line 1330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v0, "participantsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 1332
    .local v3, "p":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 1333
    .local v4, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    .end local v3    # "p":Ljava/lang/String;
    .end local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1336
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1337
    return-void

    .line 1326
    .end local v0    # "participantsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v1, "start(): there is no participants"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Cannot conference : participants is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_2
    const-string/jumbo v1, "startConference(): profile is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Cannot make conference call: profile is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startDtmf(I)V
    .locals 0
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1411
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startDtmf(I)V

    .line 1412
    return-void
.end method

.method public startIncoming()V
    .locals 0

    .line 1309
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startIncoming()V

    .line 1310
    return-void
.end method

.method public stopDtmf()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1416
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopDtmf()V

    .line 1417
    return-void
.end method
