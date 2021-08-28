.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallState;
.source "ImsReadyToCall.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p3, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p4, "volteModule"    # Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
    .param p5, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p6, "stackIf"    # Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
    .param p8, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p9, "mediactnr"    # Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;
    .param p10, "looper"    # Landroid/os/Looper;
    .param p11, "csm"    # Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            "Lcom/sec/ims/ImsRegistration;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;",
            "Lcom/sec/internal/constants/Mno;",
            "Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/volte2/IImsCallSessionEventListener;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;",
            "Landroid/os/Looper;",
            "Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;",
            ")V"
        }
    .end annotation

    .line 52
    .local p7, "listener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/volte2/IImsCallSessionEventListener;>;"
    invoke-direct/range {p0 .. p11}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    .line 53
    return-void
.end method

.method private dbrLost_ReadyToCall(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 339
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 340
    .local v0, "qci":I
    if-ne v0, v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->PRECONDITION_FAILURE:Lcom/sec/ims/util/SipError;

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    move-result v1

    const/16 v2, 0x4b1

    if-gez v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, -0x1

    new-instance v6, Lcom/sec/ims/util/SipError;

    const-string v7, ""

    invoke-direct {v6, v2, v7}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 345
    return-void

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEnded(I)V

    .line 348
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 351
    .end local v0    # "qci":I
    :cond_1
    return-void
.end method

.method private established_ReadyToCall()V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 320
    const-string v0, "CallStateMachine"

    const-string v1, "Pulling Call Establish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 324
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    .line 325
    .local v0, "regGov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v0, :cond_1

    .line 326
    sget-object v1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const/4 v2, 0x0

    .line 327
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    const/4 v3, 0x2

    goto :goto_0

    .line 329
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    .line 326
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 332
    .end local v0    # "regGov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 334
    :cond_2
    return-void
.end method

.method private getTimsTimerVzw()I
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mContext:Landroid/content/Context;

    .line 683
    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 682
    const-string v2, "omadm/./3GPP_IMS/VZW_TIMS_TIMER"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private handleAutomaticMode()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getAutomaticMode(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xe

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_5

    .line 434
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xf

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x12

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x13

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x10

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x11

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 445
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 447
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRttDbrTimer(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startRttDedicatedBearerTimer(J)V

    .line 451
    :cond_6
    return-void
.end method

.method private handleBreakBeforeToMakeCall(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isCmcSecondaryType(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x4

    const-string v3, "CallStateMachine"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 456
    const-string/jumbo v0, "start: SD is not supported VT."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setDirection(I)V

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v3, Lcom/sec/ims/util/SipError;

    const/16 v5, 0x19f

    const-string v6, "SD_NOT_SUPPORTED_VT"

    invoke-direct {v3, v5, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 461
    return v4

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-interface {v0, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallBarredBySSAC(II)Z

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 465
    const-string/jumbo v0, "start: call barred by ssac."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const-string v5, "Call Barred due to SSAC"

    if-ne v0, v3, :cond_1

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v3, Lcom/sec/ims/util/SipError;

    const/16 v6, 0xa8b

    invoke-direct {v3, v6, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v3, Lcom/sec/ims/util/SipError;

    const/16 v6, 0x45c

    invoke-direct {v3, v6, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 475
    :goto_0
    return v4

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/16 v6, 0xc

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 479
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    const/16 v6, 0xd

    if-ne v0, v6, :cond_3

    .line 480
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 481
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v0

    sget-object v6, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v6, :cond_3

    .line 482
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v3, Lcom/sec/ims/util/SipError;

    const/16 v5, 0x193

    const-string v6, "VoPS is not supported"

    invoke-direct {v3, v5, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 485
    return v4

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v0

    const-string v6, "Suspended."

    const/16 v7, 0x9cf

    const-string v8, "cannot make new call session. currently in suspend"

    if-eqz v0, :cond_4

    .line 489
    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v3, Lcom/sec/ims/util/SipError;

    invoke-direct {v3, v7, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 492
    return v4

    .line 495
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v9}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v9

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 496
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mHandOffTimedOut:Z

    if-nez v0, :cond_5

    .line 497
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iput-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mHandOffTimedOut:Z

    .line 498
    const-string v0, "Wait 1.5 sec for the SUSPEND state to change"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 502
    :cond_5
    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v3, Lcom/sec/ims/util/SipError;

    invoke-direct {v3, v7, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 506
    :goto_1
    return v4

    .line 509
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 510
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    if-eq v0, v5, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 511
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 512
    :cond_7
    const-string v0, "CS TTY Enable so do not allow outgoing IMS TTY call"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 516
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 517
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    const-string v2, "mmtel-video"

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    .line 519
    const-string v0, "Call Type change Video to Voice for no video feature tag"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 523
    :cond_9
    return v5
.end method

.method private handleCMCTransferCall(Lcom/sec/ims/Dialog;Ljava/lang/String;)V
    .locals 2
    .param p1, "targetDialog"    # Lcom/sec/ims/Dialog;
    .param p2, "remoteNumber"    # Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    if-lez v0, :cond_0

    .line 419
    const-string v0, "CallStateMachine"

    const-string v1, "Update DialingNumber from sessionDescription for CMC call pull"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/ims/Dialog;->getSessionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 424
    :goto_0
    return-void
.end method

.method private handleCallBarring()Z
    .locals 9

    .line 688
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallBarringByNetwork(I)Z

    move-result v0

    .line 690
    .local v0, "callBarringByNetwork":Z
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 691
    const-string v2, "CallStateMachine"

    const-string v3, "checkRejectOutgoingCall: Call barring"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v3, 0x0

    .line 693
    .local v3, "setValue":I
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 695
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    const-string/jumbo v7, "ss_video_cb_pref"

    invoke-static {v4, v5, v7, v6}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 699
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    const-string/jumbo v7, "ss_volte_cb_pref"

    invoke-static {v4, v5, v7, v6}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v3

    .line 703
    :goto_0
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v1, :cond_1

    .line 705
    const-string v1, "checkRejectOutgoingCall: Outgoing call is barried"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v2, 0x4

    const/4 v4, -0x1

    new-instance v5, Lcom/sec/ims/util/SipError;

    const/16 v7, 0x195

    const-string v8, "Call is Barred by terminal"

    invoke-direct {v5, v7, v8}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v6, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 709
    return v6

    .line 713
    .end local v3    # "setValue":I
    :cond_1
    return v1
.end method

.method private handleNotREGStatus()Z
    .locals 11

    .line 591
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/16 v1, 0xd3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isProhibited(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 639
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 592
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsPendingCall:Z

    const/4 v2, 0x0

    const-string v3, "CallStateMachine"

    if-eqz v0, :cond_6

    .line 593
    const/16 v0, 0x2710

    .line 594
    .local v0, "timeout":I
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_4

    .line 596
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isCsfbRequired(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 597
    const/4 v0, 0x0

    goto :goto_1

    .line 599
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->getTimsTimerVzw()I

    move-result v0

    .line 603
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v4

    .line 604
    .local v4, "isEmergency":Z
    if-eqz v4, :cond_5

    .line 605
    const-wide/16 v5, 0x0

    .line 606
    .local v5, "delay":J
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    const/16 v7, 0xa

    const-string/jumbo v8, "t_lte_911_fail"

    invoke-static {v1, v8, v7}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v1

    int-to-long v7, v1

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    .line 607
    .end local v5    # "delay":J
    .local v7, "delay":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ReadyToCall] start Tlte or TWlan-911fail"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " millis."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const v1, 0x3000001e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 609
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v3, 0x12f

    invoke-virtual {v1, v3, v7, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    .line 610
    .end local v7    # "delay":J
    goto :goto_2

    .line 611
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS is not registered. Wait to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "msec"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    int-to-long v5, v0

    invoke-virtual {v3, v1, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    .line 614
    .end local v0    # "timeout":I
    .end local v4    # "isEmergency":Z
    :goto_2
    goto :goto_3

    .line 615
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v4, 0x4

    if-eqz v0, :cond_7

    .line 616
    const-string/jumbo v0, "start: Volte not registered. ForceCSFB"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v3, Lcom/sec/ims/util/SipError;

    const/16 v5, 0x177a

    const-string v6, "VOLTE_NOT_REGISTERED"

    invoke-direct {v3, v5, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_3

    .line 620
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isCmcSecondaryType(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 621
    const-string/jumbo v0, "start: SD registration is not available."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v3, Lcom/sec/ims/util/SipError;

    const/16 v5, 0x194

    const-string v6, "SD_NOT_REGISTERED"

    invoke-direct {v3, v5, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_3

    .line 626
    :cond_8
    const-string/jumbo v0, "start: registration is not available."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v3, Lcom/sec/ims/util/SipError;

    const/16 v5, 0x3e9

    const-string v6, "No registration."

    invoke-direct {v3, v5, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 632
    :goto_3
    return v2
.end method

.method private handleSessionId(Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;)Z
    .locals 8
    .param p1, "data"    # Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;

    .line 536
    const/4 v0, -0x1

    .line 537
    .local v0, "sessionId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/4 v2, 0x1

    const-string v3, "CallStateMachine"

    if-eqz v1, :cond_3

    .line 538
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isCmcPrimaryType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    const-string v1, "bindToNetwork for MO"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isCmcPrimaryType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 543
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v1, v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 544
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v1

    const/4 v4, 0x3

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 545
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v1

    const/4 v4, 0x7

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 546
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v1

    const/4 v4, 0x5

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 547
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 548
    .local v1, "additionalSipHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Pull-State"

    const-string v5, "disabled"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 550
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v6

    .line 549
    invoke-interface {v4, v5, p1, v1, v6}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->makeCall(ILcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;Ljava/util/HashMap;I)I

    move-result v0

    .line 551
    .end local v1    # "additionalSipHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 552
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 553
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getAdditionalSipHeaders()Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v6

    .line 552
    invoke-interface {v1, v4, p1, v5, v6}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->makeCall(ILcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;Ljava/util/HashMap;I)I

    move-result v0

    .line 556
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ReadyToCall] makeCall() returned session id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", p2p = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 557
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getP2p()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v1, 0x0

    if-gez v0, :cond_4

    .line 559
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v3, 0x4

    const/4 v4, -0x1

    new-instance v5, Lcom/sec/ims/util/SipError;

    const/16 v6, 0x3e9

    const-string/jumbo v7, "stack return -1"

    invoke-direct {v5, v6, v7}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 562
    return v1

    .line 565
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v4

    .line 566
    .local v4, "boundSessionId":I
    if-lez v4, :cond_5

    .line 567
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v5, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 568
    .local v5, "boundSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v5, :cond_5

    .line 569
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ReadyToCall] updated boundSessionId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 570
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .end local v5    # "boundSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSessionId(I)V

    .line 576
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setDirection(I)V

    .line 578
    return v2
.end method

.method private isATTSoftPhoneCall()Z
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 583
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    const/4 v0, 0x1

    return v0

    .line 587
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCsfbRequired(I)Z
    .locals 11
    .param p1, "phoneId"    # I

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "gov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->VOLTE:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 645
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    const/4 v2, 0x1

    const-string v3, "CallStateMachine"

    if-nez v1, :cond_0

    .line 646
    const-string v4, "isCsfbRequired : profile null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return v2

    .line 649
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    invoke-interface {v4, v5, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernorByProfileId(II)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    .line 650
    if-nez v0, :cond_1

    .line 651
    const-string v4, "isCsfbRequired : RegiGov null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return v2

    .line 656
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v4

    .line 657
    .local v4, "pc":Lcom/sec/internal/interfaces/ims/core/IPdnController;
    if-nez v4, :cond_2

    .line 658
    const-string v5, "isCsfbRequired : PdnController null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return v2

    .line 661
    :cond_2
    invoke-interface {v4, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v5

    .line 662
    .local v5, "vops":Lcom/sec/internal/constants/ims/os/VoPsIndication;
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    move-result-object v6

    .line 663
    .local v6, "throttleState":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v7, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSelfActivationRequired(I)Z

    move-result v7

    .line 664
    .local v7, "isSelfActivationReq":Z
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v8, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLastRegiErrorCode(I)I

    move-result v8

    .line 665
    .local v8, "lastErrCode":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCsfbRequired : VoPS["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "], ThrottleState["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "], PCO 5 ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "], Last error ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    sget-object v9, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v5, v9, :cond_4

    sget-object v9, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    if-eq v6, v9, :cond_4

    if-nez v7, :cond_3

    sget-object v9, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    .line 670
    invoke-virtual {v9}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v9

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_FOUND:Lcom/sec/ims/util/SipError;

    .line 671
    invoke-virtual {v9}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 672
    :cond_3
    const-string v2, "isCsfbRequired : Wait for registration"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v2, 0x0

    return v2

    .line 677
    .end local v5    # "vops":Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .end local v6    # "throttleState":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;
    .end local v7    # "isSelfActivationReq":Z
    .end local v8    # "lastErrCode":I
    :cond_4
    const-string v5, "isCsfbRequired : CSFB"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return v2
.end method

.method private isLGUspecificNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dialingNumber"    # Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 528
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    return v1

    .line 532
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private locAcqSuccess_ReadyToCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 379
    const-string v0, "CallStateMachine"

    const-string v1, "[ReadyToCall] Location Acquiring Success -> Start Call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    .line 381
    .local v0, "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    if-eqz v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 383
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    .line 386
    :cond_0
    const v1, 0x30000031

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 388
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    .line 394
    .end local v0    # "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    :cond_2
    :goto_0
    return-void
.end method

.method private locAcqTimeout_ReadyToCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 398
    const-string v0, "CallStateMachine"

    const-string v1, "[ReadyToCall] Location Acquiring Timeout & Get Last known Location -> Start Call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    .line 401
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    .line 402
    .local v0, "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    if-eqz v0, :cond_0

    .line 403
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->updateGeolocationFromLastKnown(I)Z

    .line 406
    :cond_0
    const v1, 0x30000032

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 408
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    .line 414
    .end local v0    # "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    :cond_2
    :goto_0
    return-void
.end method

.method private locAcq_ReadyToCall(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 354
    const-string v0, "CallStateMachine"

    const-string v1, "[ReadyToCall] Enable Location Provider & Request Location Acquiring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    .line 356
    .local v0, "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    if-eqz v0, :cond_2

    .line 357
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRequestLocation:Z

    .line 358
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 359
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v4, "t_location_acquire_fail"

    invoke-static {v1, v4, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v1

    .line 360
    .local v1, "locationAcquireTime":I
    const v2, 0x30000030

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRequestLocation:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRequestLocation:Z

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v4, 0x1f4

    int-to-long v5, v1

    invoke-virtual {v2, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    .line 365
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    goto :goto_0

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 368
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    .line 375
    .end local v1    # "locationAcquireTime":I
    :cond_2
    :goto_0
    return-void
.end method

.method private pulling_ReadyToCall(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 228
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "msisdn"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "msisdn":Ljava/lang/String;
    const-string/jumbo v4, "targetDialog"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/sec/ims/Dialog;

    .line 231
    .local v10, "targetDialog":Lcom/sec/ims/Dialog;
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 232
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->encode()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "targetUri":Ljava/lang/String;
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/16 v11, 0x3e9

    const/4 v12, -0x1

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v15, "CallStateMachine"

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isProhibited(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_5

    .line 242
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isATTSoftPhoneCall()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 243
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPullingServerUri()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->getLocalUri()Ljava/lang/String;

    move-result-object v5

    const-string v7, "gr="

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v7, "[CALLTYPE]"

    if-nez v5, :cond_2

    .line 246
    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->getLocalDispName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    const-string v5, "VoLTE"

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 247
    :cond_2
    :goto_0
    const-string v5, "SP"

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 252
    :goto_1
    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->isHeld()Z

    move-result v5

    const-string v7, "[CALLSTATE]"

    if-eqz v5, :cond_3

    .line 253
    const-string v5, "hold"

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_2

    .line 255
    :cond_3
    const-string v5, "active"

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_2

    .line 257
    :cond_4
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v7, :cond_5

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 258
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/NameAddr;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_2

    .line 261
    :cond_5
    move-object/from16 v16, v4

    .end local v4    # "targetUri":Ljava/lang/String;
    .local v16, "targetUri":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ReadyToCall] pullingCall targetUri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v17

    .line 264
    .local v17, "origUri":Lcom/sec/ims/util/ImsUri;
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    if-lez v4, :cond_6

    .line 265
    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->getSessionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/sec/ims/Dialog;->setMdmnExtNumber(Ljava/lang/String;)V

    .line 268
    :cond_6
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isCmcPrimaryType(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 269
    const-string v4, "bindToNetwork for Pulling"

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    .line 272
    :cond_7
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v5

    .line 273
    if-nez v17, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object v8, v6

    .line 272
    move-object/from16 v6, v16

    move-object v7, v3

    move-object v9, v10

    invoke-interface/range {v4 .. v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;)I

    move-result v4

    .line 275
    .local v4, "sessionId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ReadyToCall] pullingCall() returned session id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-gez v4, :cond_9

    .line 279
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v6, Lcom/sec/ims/util/SipError;

    const-string/jumbo v7, "stack return -1"

    invoke-direct {v6, v11, v7}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v13, v14, v12, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 281
    return-void

    .line 284
    :cond_9
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSessionId(I)V

    .line 286
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v6

    invoke-virtual {v5, v6, v14}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->determineCamera(IZ)I

    move-result v5

    .line 287
    .local v5, "cameraId":I
    if-ltz v5, :cond_a

    .line 288
    const-string v6, "[ReadyToCall] pullingCall is VT call"

    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    .line 292
    :cond_a
    const/4 v6, 0x2

    .line 293
    .local v6, "callDirection":I
    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->getRemoteNumber()Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, "remoteNumber":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->getDirection()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 296
    const/4 v6, 0x3

    .line 297
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v8, v9, :cond_c

    .line 298
    new-instance v8, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->getRemoteUri()Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    invoke-direct {v8, v11, v9}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .local v8, "addr":Lcom/sec/ims/util/NameAddr;
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v11

    invoke-static {v8, v9, v11}, Lcom/sec/internal/helper/ImsCallUtil;->getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;

    move-result-object v7

    .line 300
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v9

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v11

    invoke-interface {v9, v11}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isVoiceRoaming(I)Z

    move-result v9

    if-nez v9, :cond_b

    .line 301
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v9

    invoke-static {v7, v9}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 303
    .end local v8    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_b
    goto :goto_4

    .line 304
    :cond_c
    new-instance v8, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->getRemoteUri()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v11}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .restart local v8    # "addr":Lcom/sec/ims/util/NameAddr;
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v11

    invoke-static {v8, v9, v11}, Lcom/sec/internal/helper/ImsCallUtil;->getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;

    move-result-object v7

    .line 309
    .end local v8    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_d
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remoteNumber : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v8

    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/ims/volte2/data/CallProfile;->setDowngradedVideoCall(Z)V

    .line 311
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setDirection(I)V

    .line 312
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v8

    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/ims/volte2/data/CallProfile;->setDialogId(Ljava/lang/String;)V

    .line 314
    invoke-direct {v0, v10, v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleCMCTransferCall(Lcom/sec/ims/Dialog;Ljava/lang/String;)V

    .line 315
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DialingNumber : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 235
    .end local v5    # "cameraId":I
    .end local v6    # "callDirection":I
    .end local v7    # "remoteNumber":Ljava/lang/String;
    .end local v16    # "targetUri":Ljava/lang/String;
    .end local v17    # "origUri":Lcom/sec/ims/util/ImsUri;
    .local v4, "targetUri":Ljava/lang/String;
    :cond_e
    :goto_5
    const-string/jumbo v5, "pulling: registration is not available."

    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v6, Lcom/sec/ims/util/SipError;

    const-string v7, "No registration."

    invoke-direct {v6, v11, v7}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v13, v14, v12, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 239
    return-void
.end method

.method private start_ReadyToCall(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 136
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleNotREGStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 142
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleBreakBeforeToMakeCall(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    return-void

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleAutomaticMode()V

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "dialingNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "CallStateMachine"

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .local v1, "destUri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 154
    .end local v1    # "destUri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    const/4 v1, 0x0

    .line 155
    .local v1, "deviceId":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->isSamsungMdmnCall()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "put deviceID as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isLGUspecificNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 160
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 160
    invoke-virtual {v5, v6, v1, v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    move-object v1, v5

    .local v5, "destUri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 164
    .end local v5    # "destUri":Lcom/sec/ims/util/ImsUri;
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-virtual {v5, v0, v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    move-object v1, v5

    .line 168
    .local v1, "destUri":Lcom/sec/ims/util/ImsUri;
    :goto_0
    if-nez v1, :cond_5

    .line 169
    const-string v2, "dest Uri couldn\'t be null!!!!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v4, 0x4

    const/4 v5, -0x1

    new-instance v6, Lcom/sec/ims/util/SipError;

    const/16 v7, 0x3e9

    const-string v8, "invalid remote uri"

    invoke-direct {v6, v7, v8}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 173
    return-void

    .line 176
    :cond_5
    new-instance v3, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 177
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCLI()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v0, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    .local v3, "data":Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCLI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " LetteringText : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 180
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isCmcPrimaryType(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 183
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCLI()Ljava/lang/String;

    move-result-object v5

    const-string v6, "#31#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 184
    const-string v5, "change cli to unknown"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string/jumbo v5, "unknown"

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setCli(Ljava/lang/String;)V

    .line 189
    :cond_6
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isLGUspecificNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 190
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSecondImpu(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_1

    .line 193
    :cond_7
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 196
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setLetteringText(Ljava/lang/String;)V

    .line 197
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setAlertInfo(Ljava/lang/String;)V

    .line 198
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setLteEpsOnlyAttached(Z)V

    .line 199
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getP2p()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setP2p(Ljava/util/List;)V

    .line 200
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setCmcBoundSessionId(I)V

    .line 201
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getComposerData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setComposerData(Landroid/os/Bundle;)V

    .line 204
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isATTSoftPhoneCall()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/16 v6, 0xd

    if-ne v5, v6, :cond_8

    .line 206
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "impi":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPEmergencyInfoOfAtt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setPEmergencyInfoOfAtt(Ljava/lang/String;)V

    .line 210
    .end local v5    # "impi":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set replace call id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setReplaceCallId(Ljava/lang/String;)V

    .line 213
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v2, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsCmcHandover:Z

    .line 216
    :cond_9
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleCallBarring()Z

    move-result v2

    if-nez v2, :cond_a

    .line 217
    return-void

    .line 220
    :cond_a
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleSessionId(Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 221
    return-void

    .line 223
    :cond_b
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 224
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v2, -0x1

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-string v2, ""

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRequestLocation:Z

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsStartCameraSuccess:Z

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsEstablished:Z

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitTime:J

    .line 65
    const-string v0, "CallStateMachine"

    const-string v1, "Enter [ReadyToCall]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public exit()V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPreviousState(Lcom/sec/internal/helper/State;)V

    .line 719
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    .line 720
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPreAlerting:Z

    .line 721
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ReadyToCall] processMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    const/16 v4, 0x15

    if-eq v0, v4, :cond_8

    const/16 v4, 0x29

    if-eq v0, v4, :cond_7

    const/16 v4, 0x34

    if-eq v0, v4, :cond_6

    const/16 v4, 0x64

    if-eq v0, v4, :cond_5

    const/16 v4, 0xd3

    const/4 v5, 0x3

    if-eq v0, v4, :cond_3

    const/16 v4, 0x1388

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_9

    const/4 v4, 0x4

    if-eq v0, v4, :cond_9

    const/16 v3, 0x1f4

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1f5

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] msg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ignored !!!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->locAcq_ReadyToCall(Landroid/os/Message;)V

    .line 99
    goto :goto_1

    .line 77
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->pulling_ReadyToCall(Landroid/os/Message;)V

    .line 78
    goto :goto_1

    .line 73
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->start_ReadyToCall(Landroid/os/Message;)V

    .line 74
    goto :goto_1

    .line 102
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->locAcqSuccess_ReadyToCall(Landroid/os/Message;)V

    .line 103
    goto :goto_1

    .line 106
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->locAcqTimeout_ReadyToCall(Landroid/os/Message;)V

    .line 107
    goto :goto_1

    .line 94
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->dbrLost_ReadyToCall(Landroid/os/Message;)V

    .line 95
    goto :goto_1

    .line 119
    :cond_3
    const-string v0, "[ReadyToCall] registration is not available."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x7d5

    goto :goto_0

    .line 121
    :cond_4
    const/16 v0, 0x641

    :goto_0
    nop

    .line 123
    .local v0, "code":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-string v4, "No registration."

    invoke-virtual {v1, v0, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 124
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 125
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    .line 126
    goto :goto_1

    .line 116
    .end local v0    # "code":I
    :cond_5
    return v3

    .line 89
    :cond_6
    const-string v0, "[ReadyToCall] Postpone update request till established state"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 91
    goto :goto_1

    .line 85
    :cond_7
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->established_ReadyToCall()V

    .line 86
    goto :goto_1

    .line 81
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 82
    nop

    .line 131
    :goto_1
    return v2

    .line 112
    :cond_9
    const-string v0, "[ReadyToCall] Call session got dropped early!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
