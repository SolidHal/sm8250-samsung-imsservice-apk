.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallState;
.source "ImsOutgoingCall.java"


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

    .line 41
    .local p7, "listener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/volte2/IImsCallSessionEventListener;>;"
    invoke-direct/range {p0 .. p11}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    .line 42
    return-void
.end method

.method private dbrLost_OutgoingCall(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->PLAY:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1388

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 339
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 340
    const-string v0, "CallStateMachine"

    const-string v1, "dedicated bearer was re-established, the call is not terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x1

    return v0

    .line 344
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private earlymedia_OutgoingCall(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSession.getCallProfile().isVideoCRBT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->startVideoEarlyMedia(I)I

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEarlyMediaStarted(I)V

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 266
    return-void
.end method

.method private endOrFail_OutgoingCall(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    const-string v3, "CallStateMachine"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 352
    const-string v0, "[OutgoingCall] Skip FORCE_NOTIFY_CURRENT_CODEC"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return v2

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToWaitEndcall:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 355
    const-string v0, "[OutgoingCall] need to Wait Endcall"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToWaitEndcall:Z

    .line 357
    return v2

    .line 359
    :cond_2
    return v1
.end method

.method private error_OutgoingCall(Landroid/os/Message;)Z
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "CallStateMachine"

    const-string v3, "[OutgoingCall] on error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleSPRoutgoingError(Landroid/os/Message;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 366
    return v4

    .line 369
    :cond_0
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x1

    if-eq v3, v5, :cond_1

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v3, v5, :cond_2

    .line 370
    :cond_1
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/ims/util/SipError;

    .line 371
    .local v3, "err":Lcom/sec/ims/util/SipError;
    invoke-virtual {v3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v5

    .line 372
    .local v5, "code":I
    const/16 v7, 0x2c5

    if-ne v5, v7, :cond_2

    .line 373
    const-string v4, "on error 709."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v4, 0x19

    invoke-virtual {v2, v6, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(II)V

    .line 375
    return v6

    .line 380
    .end local v3    # "err":Lcom/sec/ims/util/SipError;
    .end local v5    # "code":I
    :cond_2
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const-string v7, ""

    if-ne v3, v5, :cond_5

    .line 381
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/ims/util/SipError;

    .line 382
    .restart local v3    # "err":Lcom/sec/ims/util/SipError;
    invoke-virtual {v3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v5

    .line 383
    .restart local v5    # "code":I
    invoke-virtual {v3}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    move-object v8, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, "errorMessage":Ljava/lang/String;
    :goto_0
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 385
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v10

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v11

    new-instance v12, Lcom/sec/ims/util/SipError;

    invoke-direct {v12, v5, v8}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 384
    invoke-interface {v9, v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCsfbErrorCode(IILcom/sec/ims/util/SipError;)Z

    move-result v9

    .line 386
    .local v9, "needDelayed":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "On error delayed for 300ms, needDelayed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " ,mOnErrorDelayed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v11, v11, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v10, v10, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    if-nez v10, :cond_4

    if-eqz v9, :cond_4

    .line 388
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v6, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    .line 389
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v10, 0x12c

    invoke-virtual {v2, v4, v10, v11}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 390
    return v6

    .line 393
    :cond_4
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v4, v10, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    .line 397
    .end local v3    # "err":Lcom/sec/ims/util/SipError;
    .end local v5    # "code":I
    .end local v8    # "errorMessage":Ljava/lang/String;
    .end local v9    # "needDelayed":Z
    :cond_5
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsWPSCall:Z

    if-eqz v3, :cond_6

    .line 398
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v3, 0x1a

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    .line 399
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->releaseSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)V

    .line 400
    return v6

    .line 403
    :cond_6
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v3, v5, :cond_c

    .line 404
    const-string v3, "[OutgoingCall] check delay!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/ims/util/SipError;

    .line 406
    .restart local v3    # "err":Lcom/sec/ims/util/SipError;
    invoke-virtual {v3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v5

    .line 407
    .restart local v5    # "code":I
    invoke-virtual {v3}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v7

    .line 408
    .local v7, "errorMessage":Ljava/lang/String;
    :goto_1
    const/16 v8, 0x17c

    if-eq v5, v8, :cond_8

    const/16 v8, 0x17e

    if-ne v5, v8, :cond_9

    :cond_8
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 409
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v9

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v10

    new-instance v11, Lcom/sec/ims/util/SipError;

    invoke-direct {v11, v5, v7}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 408
    invoke-interface {v8, v9, v10, v11}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCsfbErrorCode(IILcom/sec/ims/util/SipError;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v6

    goto :goto_2

    :cond_9
    move v8, v4

    .line 410
    .local v8, "needEndHeldCall":Z
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "needEndHeldCall : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mOnErrorDelayed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v10, v10, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v9

    if-nez v9, :cond_c

    if-eqz v8, :cond_c

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v9, v9, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    if-nez v9, :cond_c

    .line 413
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionList(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 414
    .local v10, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "phoneId["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] session Id : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", state : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v11

    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v12

    if-eq v11, v12, :cond_a

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v11

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v11, v12, :cond_a

    .line 416
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v15, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v14, 0x0

    const/16 v16, 0x1

    new-array v13, v4, [Ljava/lang/String;

    const-string v17, "SIP"

    const-string v18, "User triggered"

    move-object v12, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v17

    move-object v4, v15

    move-object/from16 v15, v18

    move-object/from16 v17, v19

    invoke-direct/range {v12 .. v17}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    iput-object v4, v11, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    .line 417
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v11

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v12

    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v13, v13, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    invoke-interface {v4, v11, v12, v13}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->endCall(IILcom/sec/internal/constants/ims/SipReason;)I

    .line 418
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v6, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    .line 420
    .end local v10    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 422
    :cond_b
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    if-eqz v4, :cond_c

    .line 423
    const-string v4, "error notify delayed!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v9, 0xc8

    invoke-virtual {v2, v4, v9, v10}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 425
    return v6

    .line 430
    .end local v3    # "err":Lcom/sec/ims/util/SipError;
    .end local v5    # "code":I
    .end local v7    # "errorMessage":Ljava/lang/String;
    .end local v8    # "needEndHeldCall":Z
    :cond_c
    const/4 v2, 0x0

    return v2
.end method

.method private getTimerVzw()I
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "timer_vzw"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private handleStartATTTimer(Ljava/lang/String;)V
    .locals 5
    .param p1, "dialingNumber"    # Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->needToLogForATTGate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const-string v0, "GATE"

    const-string v1, "<GATE-M>MO_VIDEO_CALL</GATE-M>"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xcb

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 599
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 600
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 601
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-wide/16 v3, 0x2ee0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 602
    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "*272"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 603
    const-string v0, "#31#*272"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "*31#*272"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    .line 606
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsWPSCall:Z

    .line 608
    :cond_3
    :goto_0
    return-void
.end method

.method private isNeedToStartVZWTimer()Z
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 586
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 587
    return v1

    .line 590
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyOnCalling()V
    .locals 4

    .line 611
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 613
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 614
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 617
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onCalling()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    goto :goto_1

    .line 618
    :catch_0
    move-exception v3

    .line 619
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 613
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 624
    return-void
.end method

.method private notifyOnTrying()V
    .locals 4

    .line 627
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 629
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 630
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 633
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onTrying()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    goto :goto_1

    .line 634
    :catch_0
    move-exception v3

    .line 635
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 629
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 640
    return-void
.end method

.method private ringingBack_OutgoingCall()V
    .locals 6

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnRingingBack()V

    .line 270
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 273
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getRingbackTimer()I

    move-result v0

    .line 275
    .local v0, "ringbacktimer":I
    if-lez v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->startRingTimer(J)V

    .line 279
    .end local v0    # "ringbacktimer":I
    :cond_0
    return-void
.end method

.method private rrcReleased_OutgoingCall()V
    .locals 7

    .line 539
    const-string v0, "CallStateMachine"

    const-string v1, "[OutgoingCall] RRC connection released."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0x6a6

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    :cond_0
    const-string v1, "Socket close with NO_LINGER in case RRC Non-Depriorization Reject in MO case"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x1

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v4, -0x1

    new-instance v5, Lcom/sec/ims/util/SipError;

    const-string v6, "RRC connection released"

    invoke-direct {v5, v3, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 550
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 551
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->DeleteTcpSocket(II)I

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_4

    .line 555
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 556
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    .line 557
    .local v0, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v0, :cond_4

    .line 558
    const-string v1, "mmtel"

    .line 559
    .local v1, "service":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 560
    const-string v1, "mmtel-video"

    .line 562
    :cond_3
    new-instance v2, Lcom/sec/ims/util/SipError;

    invoke-direct {v2, v3}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 566
    .end local v0    # "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .end local v1    # "service":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private sessionProgressTimeout_OutgoingCall()V
    .locals 7

    .line 434
    const-string v0, "CallStateMachine"

    const-string v1, "[OutgoingCall] SessionProgress Timeout - Call Terminate/CSFB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0x11

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const/16 v6, 0x1f7

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionCount(I)I

    move-result v1

    if-le v1, v4, :cond_1

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto/16 :goto_1

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x1e0

    const-string v2, "REJECT_REASON_PD_UNREACHABLE"

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsWPSCall:Z

    if-eqz v1, :cond_3

    .line 446
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToWaitEndcall:Z

    .line 447
    const-string v1, "[OutgoingCall] CANCEL now CSFB after 2s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getSipReasonFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    .line 450
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->endCall(IILcom/sec/internal/constants/ims/SipReason;)I

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x1a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->releaseSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)V

    .line 453
    return-void

    .line 455
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-string v1, "Session Progress Timeout"

    invoke-virtual {v0, v6, v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    .line 459
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_5

    .line 460
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 461
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    .line 462
    .local v0, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v0, :cond_5

    .line 463
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    const-string v2, "mmtel"

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 437
    .end local v0    # "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->REQUEST_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->REQUEST_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 438
    invoke-virtual {v2}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 470
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(II)V

    .line 472
    return-void
.end method

.method private sessionProgress_OutgoingCall()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->stop()V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->determineCamera(IZ)I

    move-result v0

    .line 291
    .local v0, "cameraId":I
    if-ltz v0, :cond_1

    .line 292
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    .line 294
    :cond_1
    return-void
.end method

.method private start100Timer_OutgoingCall()V
    .locals 6

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 220
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->get100tryingTimer()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 222
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->get100tryingTimer()I

    move-result v0

    .line 224
    .local v0, "timer_100trying":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0xd0

    const-string v4, "CallStateMachine"

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 225
    const-string v1, "[OutgoingCall] USCC G30 Timer (12 sec)"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-wide/16 v4, 0x2ee0

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    const-string v1, "[OutgoingCall] Skip 100 Trying Timer ()"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OutgoingCall] Start 100 Trying Timer ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msec)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    int-to-long v4, v0

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    .line 236
    .end local v0    # "timer_100trying":I
    :cond_2
    :goto_0
    return-void
.end method

.method private startTimer_OutgoingCall()V
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "dialingNumber":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->isNeedToStartVZWTimer()Z

    move-result v1

    const-string v2, "CallStateMachine"

    if-eqz v1, :cond_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OutgoingCall] start Timer_VZW "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->getTimerVzw()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msec."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0x12d

    .line 195
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->getTimerVzw()I

    move-result v3

    int-to-long v3, v3

    .line 194
    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const/16 v4, 0xc

    const/16 v5, 0xcb

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    if-eq v1, v4, :cond_1

    .line 197
    const-string v1, "[OutgoingCall] Start Session Progress Timer (10 sec)."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v5, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ELISA_EE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    if-eq v1, v4, :cond_2

    .line 200
    const-string v1, "[OutgoingCall] Start Session Progress Timer (15 sec)."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v5, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_3

    .line 203
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->handleStartATTTimer(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    if-eq v1, v4, :cond_5

    .line 205
    const-string v1, "[OutgoingCall] Start EE-UK Session Progress Timer (20 sec)."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-wide/16 v2, 0x4c2c

    invoke-virtual {v1, v5, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 207
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 208
    const-string v1, "[OutgoingCall] Start Session Progress Timer for SD (12 sec)."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v1, v5, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    .line 211
    :cond_6
    :goto_0
    return-void
.end method

.method private terminate_OutgoingCall(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTryingReceived:Z

    const-string v1, "CallStateMachine"

    if-nez v0, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->srvccStarted:Z

    if-nez v0, :cond_1

    .line 299
    const-string v0, "Network Handover on dialing (before get 100 TRYING)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 301
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 300
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0x453

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEnded(I)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0x45d

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEnded(I)V

    .line 309
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTryingReceived:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2

    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 314
    :cond_2
    const-string v0, "Deregistered. notify error 1701 for CSFB"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x6a5

    const-string v3, "deregistered"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 317
    return v2

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTryingReceived:Z

    if-nez v0, :cond_4

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xd

    if-ne v0, v3, :cond_4

    .line 321
    const-string v0, "PS Barred. notify error call barred by network!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v3, 0xaf1

    const-string/jumbo v4, "ps Barred"

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_6

    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x19

    if-ne v0, v3, :cond_6

    .line 328
    const-string v0, "on terminate out of service."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x45a

    const-string v3, "CALL_INVITE_TIMEOUT"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 331
    return v2

    .line 334
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private timerVZWExpired_OutgoingCall()V
    .locals 10

    .line 512
    const-string v0, "CallStateMachine"

    const-string v1, "[OutgoingCall] TimerVzw expired."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    const-string v4, "Timer_VZW expired"

    const/16 v5, 0x9c5

    if-ne v1, v2, :cond_0

    .line 514
    const-string v1, "[OutgoingCall] But AirplainModeOn, cannot fallback to 1x"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 517
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x4

    const/4 v2, -0x1

    new-instance v6, Lcom/sec/ims/util/SipError;

    invoke-direct {v6, v5, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v3, v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 522
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 524
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    .line 525
    .local v0, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v0, :cond_2

    .line 526
    const-string v1, "mmtel"

    .line 527
    .local v1, "service":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    const-string v1, "mmtel-video"

    .line 530
    :cond_1
    new-instance v2, Lcom/sec/ims/util/SipError;

    invoke-direct {v2, v5}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 534
    .end local v0    # "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .end local v1    # "service":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v1, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v6, 0x0

    const/4 v8, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const-string v5, ""

    const-string v7, "TIMER VZW EXPIRED"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->endCall(IILcom/sec/internal/constants/ims/SipReason;)I

    .line 536
    return-void
.end method

.method private tryingTimeout_OutgoingCall()V
    .locals 5

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const-string v2, "CallStateMachine"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    const-string v0, "[OutgoingCall] TMOUS, 100 Trying Timeout"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x1c

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 478
    return-void

    .line 480
    :cond_0
    const-string v0, "[OutgoingCall] 100 Trying Timeout - Call Terminate/CSFB"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    const/16 v3, 0x1f7

    const-string v4, "100 Trying Timeout"

    invoke-virtual {v0, v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 484
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 485
    const-string v0, "Force to change END_REASON to terminate client socket with RST"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(II)V

    .line 496
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_3

    .line 497
    const-string v0, "[OutgoingCall] USCC 12 sec 100 Trying Timer expired."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 499
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    .line 500
    .local v0, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v0, :cond_3

    .line 501
    const-string v1, "mmtel"

    .line 502
    .local v1, "service":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    const-string v1, "mmtel-video"

    .line 505
    :cond_2
    new-instance v2, Lcom/sec/ims/util/SipError;

    invoke-direct {v2, v3}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 509
    .end local v0    # "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .end local v1    # "service":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private tyring_OutgoingCall()V
    .locals 5

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTryingReceived:Z

    .line 240
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->notifyOnTrying()V

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIVA_BAHRAIN:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->start()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xcb

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getTimerB()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IJ)V

    .line 257
    :cond_4
    return-void
.end method

.method private update_OutgoingCall(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 569
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 570
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/data/CallProfile;

    .line 571
    .local v1, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    const-string v2, "CallStateMachine"

    const-string v3, "Received srvcc H/O event"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSrvccVersion(I)I

    move-result v3

    .line 573
    .local v3, "srvccVersion":I
    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 574
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 575
    :cond_0
    const-string v4, "MO bsrvcc support"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v2, Lcom/sec/internal/constants/ims/SipReason;

    const-string v4, "cause"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 577
    const-string/jumbo v5, "reasonText"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "SIP"

    invoke-direct {v2, v7, v4, v5, v6}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 578
    .local v2, "reason":Lcom/sec/internal/constants/ims/SipReason;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-interface {v4, v5, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendReInvite(ILcom/sec/internal/constants/ims/SipReason;)I

    .line 580
    .end local v2    # "reason":Lcom/sec/internal/constants/ims/SipReason;
    :cond_1
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-string v1, ""

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTryingReceived:Z

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->startTimer_OutgoingCall()V

    .line 52
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->start100Timer_OutgoingCall()V

    .line 54
    const-string v0, "CallStateMachine"

    const-string v2, "Enter [OutgoingCall]"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getUsePrecondition()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 58
    .local v0, "isPrecondition":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->determineCamera(IZ)I

    move-result v1

    .line 60
    .local v1, "cameraId":I
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCameraStartByApp()Z

    move-result v2

    if-nez v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    .line 65
    .end local v0    # "isPrecondition":Z
    .end local v1    # "cameraId":I
    :cond_2
    return-void
.end method

.method public exit()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPreviousState(Lcom/sec/internal/helper/State;)V

    .line 187
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OutgoingCall] processMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/16 v3, 0x1a

    const/4 v4, 0x0

    if-eq v0, v3, :cond_9

    const/16 v3, 0x29

    if-eq v0, v3, :cond_8

    const/16 v3, 0x34

    if-eq v0, v3, :cond_7

    const/16 v3, 0xcb

    if-eq v0, v3, :cond_6

    const/16 v3, 0x12d

    if-eq v0, v3, :cond_5

    const/16 v3, 0x12f

    if-eq v0, v3, :cond_c

    const/16 v3, 0x1f6

    if-eq v0, v3, :cond_4

    const/16 v3, 0x1388

    if-eq v0, v3, :cond_b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_c

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/16 v3, 0x5d

    if-eq v0, v3, :cond_c

    const/16 v3, 0x5e

    if-eq v0, v3, :cond_c

    const/16 v3, 0x64

    if-eq v0, v3, :cond_c

    const/16 v3, 0x65

    if-eq v0, v3, :cond_2

    const/16 v3, 0x132

    if-eq v0, v3, :cond_c

    const/16 v3, 0x133

    if-eq v0, v3, :cond_c

    const/16 v3, 0x190

    if-eq v0, v3, :cond_1

    const/16 v3, 0x191

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->getName()Ljava/lang/String;

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

    goto/16 :goto_0

    .line 171
    :pswitch_0
    const-string v0, "[OutgoingCall] deferMessage Downgrade Rtt to voice call"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 173
    goto/16 :goto_0

    .line 125
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->tryingTimeout_OutgoingCall()V

    .line 126
    goto/16 :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopRingTimer()V

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnCallForwarded()V

    .line 157
    goto/16 :goto_0

    .line 88
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->sessionProgress_OutgoingCall()V

    .line 89
    goto/16 :goto_0

    .line 84
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->ringingBack_OutgoingCall()V

    .line 85
    goto/16 :goto_0

    .line 76
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->notifyOnCalling()V

    .line 77
    goto/16 :goto_0

    .line 80
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->earlymedia_OutgoingCall(Landroid/os/Message;)V

    .line 81
    goto/16 :goto_0

    .line 72
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->tyring_OutgoingCall()V

    .line 73
    goto/16 :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->rrcReleased_OutgoingCall()V

    .line 134
    goto/16 :goto_0

    .line 115
    :cond_1
    return v4

    .line 143
    :cond_2
    const-string v0, "[OutgoingCall] sendInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 146
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "info"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "info":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 148
    .local v4, "ussdType":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info callType= %d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", request=%s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", ussdType=%d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-interface {v1, v5, v6, v3, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendInfo(IILjava/lang/String;I)I

    .line 151
    goto :goto_0

    .line 118
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "info":Ljava/lang/String;
    .end local v4    # "ussdType":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->error_OutgoingCall(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReinvite:Z

    .line 138
    const-string v0, "[OutgoingCall] Re-INVITE defered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 140
    goto :goto_0

    .line 129
    :cond_5
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->timerVZWExpired_OutgoingCall()V

    .line 130
    goto :goto_0

    .line 121
    :cond_6
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->sessionProgressTimeout_OutgoingCall()V

    .line 122
    goto :goto_0

    .line 160
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->update_OutgoingCall(Landroid/os/Message;)V

    .line 161
    goto :goto_0

    .line 92
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 93
    goto :goto_0

    .line 164
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x1f7

    const-string v3, "Session Progress Timeout"

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 167
    goto :goto_0

    .line 96
    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->terminate_OutgoingCall(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 97
    goto :goto_0

    .line 101
    :cond_b
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->dbrLost_OutgoingCall(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 102
    nop

    .line 178
    :goto_0
    return v2

    .line 112
    :cond_c
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;->endOrFail_OutgoingCall(Landroid/os/Message;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
