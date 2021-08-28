.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallState;
.source "ImsIncomingCall.java"


# instance fields
.field private mDummyDnsTimeoutMessage:Landroid/os/Message;

.field private mReinviteTimeoutMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 1
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

    .line 50
    .local p7, "listener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/volte2/IImsCallSessionEventListener;>;"
    invoke-direct/range {p0 .. p11}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mDummyDnsTimeoutMessage:Landroid/os/Message;

    .line 54
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mReinviteTimeoutMessage:Landroid/os/Message;

    .line 51
    return-void
.end method

.method private accept_IncomingCall(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const-string v2, "CallStateMachine"

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isCmcPrimaryType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    const-string v1, "bindToNetwork for MT"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    .line 257
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v1, :cond_1

    .line 258
    const-string v1, "[IncomingCall] start reinvite timer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-wide/16 v3, 0x7d0

    invoke-direct {v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->startReinviteTimer(J)V

    .line 267
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->stop()V

    .line 271
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-object/from16 v3, p1

    iget-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    iput v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 272
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->handleCallTypeAtIncomingCall()V

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "answerCall with callType: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v4, 0x18

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 276
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->determineCamera(IZ)I

    move-result v1

    .line 277
    .local v1, "cameraId":I
    const/4 v4, -0x1

    if-ltz v1, :cond_3

    .line 282
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    goto :goto_0

    .line 284
    :cond_3
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopCamera()V

    .line 285
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iput v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    .line 288
    :goto_0
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsEstablished:Z

    .line 290
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isCmcPrimaryType(I)Z

    move-result v6

    const-string v8, "call session already released"

    const/16 v9, 0x3e9

    const/4 v10, 0x4

    if-eqz v6, :cond_9

    .line 291
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mSession.getCallProfile().getReplaceSipCallId(): "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionBySipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    .line 293
    .local v6, "boundSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    const-string v11, ""

    .line 294
    .local v11, "cmcCallTime":Ljava/lang/String;
    const/4 v12, 0x0

    .line 295
    .local v12, "boundSessionForCurrentSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v13

    .line 296
    .local v13, "boundSessionIdForCurrentSession":I
    if-lez v13, :cond_4

    .line 297
    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v14, v13}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v12

    .line 300
    :cond_4
    if-eqz v6, :cond_5

    .line 301
    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v14

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    .line 302
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v14

    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v15, v15, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {v14, v15}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    .line 303
    const-string v14, "PS PD to SD pull"

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v6, v14}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->calculateCmcCallTime(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 305
    :cond_5
    if-eqz v12, :cond_6

    .line 306
    const-string v14, "do nothing when SD call answer for PS"

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 308
    :cond_6
    const-string v14, "bounded session is not found"

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_7

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 311
    .local v14, "CallEstablishTimeExtra":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save SD call answer time for CS : "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    invoke-interface {v2, v14, v15}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->setCallEstablishTimeExtra(J)V

    .line 313
    .end local v14    # "CallEstablishTimeExtra":J
    goto :goto_1

    .line 314
    :cond_7
    const-string v4, "CS PD to SD pull"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v4, 0x0

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->calculateCmcCallTime(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 319
    :goto_1
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-interface {v2, v4, v7, v11}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->answerCallWithCallType(IILjava/lang/String;)I

    move-result v2

    if-gez v2, :cond_8

    .line 320
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v4, Lcom/sec/ims/util/SipError;

    invoke-direct {v4, v9, v8}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const/4 v7, -0x1

    invoke-virtual {v2, v10, v5, v7, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 322
    return-void

    .line 324
    .end local v6    # "boundSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v11    # "cmcCallTime":Ljava/lang/String;
    .end local v12    # "boundSessionForCurrentSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v13    # "boundSessionIdForCurrentSession":I
    :cond_8
    goto :goto_2

    .line 325
    :cond_9
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-interface {v2, v4, v6}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->answerCallWithCallType(II)I

    move-result v2

    if-gez v2, :cond_a

    .line 326
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v4, Lcom/sec/ims/util/SipError;

    invoke-direct {v4, v9, v8}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const/4 v6, -0x1

    invoke-virtual {v2, v10, v5, v6, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 328
    return-void

    .line 332
    :cond_a
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->handleFastAccept()V

    .line 333
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mUserAnswered:Z

    .line 334
    return-void
.end method

.method private dbrLost_IncomingCall(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 477
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 478
    .local v0, "qci":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->PRECONDITION_FAILURE:Lcom/sec/ims/util/SipError;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    .line 480
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    move-result v1

    const/16 v2, 0x4b1

    if-gez v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, -0x1

    new-instance v6, Lcom/sec/ims/util/SipError;

    const-string v7, ""

    invoke-direct {v6, v2, v7}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 483
    return-void

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEnded(I)V

    .line 487
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 489
    :cond_1
    return-void
.end method

.method private delayedCamStart_IncomingCall(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 226
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "service.camera.running"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 227
    .local v2, "spCameraRun":I
    const-string/jumbo v4, "service.camera.rec.running"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 228
    .local v4, "spCameraRecRun":I
    iget v5, v1, Landroid/os/Message;->arg1:I

    const/16 v6, 0x32

    if-ge v5, v6, :cond_2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    if-ne v4, v5, :cond_2

    .line 230
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trying "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " delayType = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "CallStateMachine"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v5, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCameraUsedAtOtherApp:Z

    .line 232
    if-nez v2, :cond_1

    if-ne v4, v5, :cond_1

    .line 233
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v7, 0x18

    iget v3, v1, Landroid/os/Message;->arg1:I

    add-int/lit8 v8, v3, 0x1

    const/4 v9, 0x2

    const-wide/16 v10, 0x64

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IIIJ)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v13, 0x18

    iget v3, v1, Landroid/os/Message;->arg1:I

    add-int/lit8 v14, v3, 0x1

    const/4 v15, -0x1

    const-wide/16 v16, 0x64

    invoke-virtual/range {v12 .. v17}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IIIJ)V

    goto :goto_0

    .line 237
    :cond_2
    iget v5, v1, Landroid/os/Message;->arg2:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 238
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v8, 0x18

    iget v3, v1, Landroid/os/Message;->arg1:I

    add-int/lit8 v9, v3, 0xc

    const/4 v10, -0x1

    const-wide/16 v11, 0x4b0

    invoke-virtual/range {v7 .. v12}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IIIJ)V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_4

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isTPhoneRelaxMode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 241
    :cond_4
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/helper/BlockedNumberUtil;->isBlockedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 242
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->determineCamera(IZ)I

    move-result v3

    .line 243
    .local v3, "cameraId":I
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    .line 247
    .end local v3    # "cameraId":I
    :cond_5
    :goto_0
    return-void
.end method

.method private earlymedia_IncomingCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSession.getCallProfile().isVideoCRBT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isCmcPrimaryType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    const-string v0, "bindToNetwork for MT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->startVideoEarlyMedia(I)I

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEarlyMediaStarted(I)V

    .line 578
    return-void
.end method

.method private established_IncomingCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 520
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    .line 519
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    .line 521
    .local v0, "regGov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v0, :cond_1

    .line 522
    sget-object v1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const/4 v2, 0x0

    .line 524
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    const/4 v3, 0x2

    goto :goto_0

    .line 526
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    .line 522
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 529
    .end local v0    # "regGov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    :cond_1
    return-void
.end method

.method private handleCallTypeAtIncomingCall()V
    .locals 5

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    const-string v1, "CallStateMachine"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 355
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    const-string v4, "mmtel-video"

    invoke-interface {v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    .line 357
    const-string v0, "Call Type change Video to Voice for no video feature tag"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 362
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 363
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 364
    :cond_1
    const-string v0, "CS TTY Enable so do not answer IMS TTY call"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    if-ne v0, v2, :cond_3

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xe

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_4

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xf

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 376
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    goto :goto_1

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 380
    :goto_1
    return-void
.end method

.method private handleFastAccept()V
    .locals 8

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    .line 384
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_8

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 386
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setDowngradedVideoCall(Z)V

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setDowngradedAtEstablish(Z)V

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUserCameraOff(Z)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 401
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 400
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 405
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 406
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCallCount(I)[I

    move-result-object v0

    .line 409
    .local v0, "callsCount":[I
    const/4 v3, 0x0

    .line 410
    .local v3, "pdCallCount":I
    const/4 v4, 0x5

    .line 411
    .local v4, "cmcType":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 412
    const/4 v4, 0x7

    .line 414
    :cond_4
    const/4 v5, 0x1

    .local v5, "type":I
    :goto_0
    if-gt v5, v4, :cond_5

    .line 415
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v7

    invoke-interface {v6, v7, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionCountByCmcType(II)I

    move-result v6

    add-int/2addr v3, v6

    .line 414
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 418
    .end local v5    # "type":I
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notify fake ESTABLISH event. callsCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pdCallCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CallStateMachine"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    aget v5, v0, v1

    sub-int/2addr v5, v3

    if-le v5, v2, :cond_7

    .line 422
    const-string v2, "force to set modifiable to false for fake ESTABLISH"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 425
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEstablished()V

    .line 427
    .end local v0    # "callsCount":[I
    .end local v3    # "pdCallCount":I
    .end local v4    # "cmcType":I
    :cond_8
    return-void
.end method

.method private hold_IncomingCall(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 552
    const-string v0, "CallStateMachine"

    const-string/jumbo v1, "received hold request maybe because of FAST_ACCEPT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SAMSUNG:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 556
    :cond_1
    return-void
.end method

.method private isTPhoneMode()Z
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 217
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "defaultDialerPackage":Ljava/lang/String;
    const-string v2, "com.skt.prod.dialer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const/4 v2, 0x1

    return v2

    .line 221
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private reject_IncomingCall(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsEstablished:Z

    if-eqz v0, :cond_0

    .line 442
    const-string v0, "CallStateMachine"

    const-string v1, "ignore reject msg after call accepted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->getSipErrorFromUserReason(I)Lcom/sec/ims/util/SipError;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCameraUsingCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopCamera()V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    move-result v0

    if-gez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    new-instance v4, Lcom/sec/ims/util/SipError;

    const/16 v5, 0x3e9

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 457
    return-void

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 461
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->sendDummyPublishDialog(II)V

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCameraUsedAtOtherApp:Z

    if-nez v0, :cond_4

    .line 467
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sec/internal/helper/ImsCallUtil;->convertCallEndReasonToFramework(II)I

    move-result v0

    .line 469
    .local v0, "code":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEnded(I)V

    .line 472
    .end local v0    # "code":I
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 473
    return-void
.end method

.method private ringTimeout_IncomingCall(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 492
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd

    if-ne v0, v1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->getSipErrorFromUserReason(I)Lcom/sec/ims/util/SipError;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->getSipErrorFromUserReason(I)Lcom/sec/ims/util/SipError;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    move-result v0

    if-gez v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    new-instance v4, Lcom/sec/ims/util/SipError;

    const/16 v5, 0x3e9

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 500
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEndType(I)V

    .line 504
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEndReason(I)V

    .line 506
    invoke-static {v1, v2}, Lcom/sec/internal/helper/ImsCallUtil;->convertCallEndReasonToFramework(II)I

    move-result v0

    .line 508
    .local v0, "code":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEnded(I)V

    .line 510
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 512
    return-void
.end method

.method private sendText_IncomingCall(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mUserAnswered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 560
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 561
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "text":Ljava/lang/String;
    const-string v2, "len"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 563
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CallStateMachine"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    invoke-interface {v3, v4, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendText(ILjava/lang/String;I)I

    .line 566
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "len":I
    :cond_0
    return-void
.end method

.method private startReinviteTimer(J)V
    .locals 3
    .param p1, "millis"    # J

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startReinviteTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->stopReinviteTimer()V

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mReinviteTimeoutMessage:Landroid/os/Message;

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mReinviteTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 341
    return-void
.end method

.method private stopReinviteTimer()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mReinviteTimeoutMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 347
    :cond_0
    const-string v0, "CallStateMachine"

    const-string/jumbo v1, "stopReinviteTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mReinviteTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mReinviteTimeoutMessage:Landroid/os/Message;

    .line 351
    return-void
.end method

.method private terminate_IncomingCall(Landroid/os/Message;)I
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mUserAnswered:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mUserAnswered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 435
    const/4 v0, 0x1

    return v0

    .line 437
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 432
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private update_IncomingCall(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 532
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 533
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/data/CallProfile;

    .line 534
    .local v1, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSrvccVersion(I)I

    move-result v2

    .line 535
    .local v2, "srvccVersion":I
    const-string v3, "CallStateMachine"

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 536
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 537
    :cond_0
    const-string v4, "MT aSRVCC supported"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v3, Lcom/sec/internal/constants/ims/SipReason;

    const-string v4, "cause"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 539
    const-string/jumbo v5, "reasonText"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "SIP"

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 540
    .local v3, "reason":Lcom/sec/internal/constants/ims/SipReason;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendReInvite(ILcom/sec/internal/constants/ims/SipReason;)I

    .line 541
    .end local v3    # "reason":Lcom/sec/internal/constants/ims/SipReason;
    goto :goto_0

    .line 542
    :cond_1
    const-string v4, "Postpone update request till established state"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iput-object v1, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 544
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 545
    :cond_2
    const-string v4, "deferMessage only for non TTY UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 549
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 10

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v2, -0x1

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-string v2, ""

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 61
    const-string v0, "CallStateMachine"

    const-string v2, "Enter [IncomingCall]"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->needToLogForATTGate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "GATE"

    const-string v3, "<GATE-M>INCOMING_VIDEO_CALL</GATE-M>"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    sget-object v2, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;->CALL:Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - START INCOMING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/log/IMSLog$LAZER_TYPE;Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getRingingTimer()I

    move-result v2

    .line 73
    .local v2, "ringTimer":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->startRingTimer(J)V

    .line 76
    .end local v2    # "ringTimer":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    if-eqz v2, :cond_2

    .line 77
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->start()V

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->determineCamera(IZ)I

    move-result v1

    .line 81
    .local v1, "cameraId":I
    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCameraStartByApp()Z

    move-result v2

    if-nez v2, :cond_5

    .line 82
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCallCount()[I

    move-result-object v2

    .line 83
    .local v2, "callsCount":[I
    const/4 v3, 0x1

    aget v4, v2, v3

    if-le v4, v3, :cond_3

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    goto :goto_0

    .line 86
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 87
    const-string v3, "delay camera start due to check isTPhoneRelaxMode"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v5, 0x18

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-wide/16 v8, 0x5dc

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IIIJ)V

    goto :goto_0

    .line 90
    :cond_4
    const-string v3, "camera in use by other app"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v5, 0x18

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-wide/16 v8, 0x64

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IIIJ)V

    .line 94
    .end local v2    # "callsCount":[I
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnCallForwarded()V

    .line 97
    :cond_6
    return-void
.end method

.method public exit()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->removeMessages(I)V

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPreviousState(Lcom/sec/internal/helper/State;)V

    .line 212
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopRingTimer()V

    .line 213
    return-void
.end method

.method protected getSipErrorFromUserReason(I)Lcom/sec/ims/util/SipError;
    .locals 2
    .param p1, "reason"    # I

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSipErrorFromUserReason: reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 586
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorVzw;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorVzw;-><init>()V

    .local v0, "response":Lcom/sec/ims/util/SipError;
    goto/16 :goto_1

    .line 587
    .end local v0    # "response":Lcom/sec/ims/util/SipError;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorKor;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorKor;-><init>()V

    .restart local v0    # "response":Lcom/sec/ims/util/SipError;
    goto/16 :goto_1

    .line 589
    .end local v0    # "response":Lcom/sec/ims/util/SipError;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 590
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorCmcc;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorCmcc;-><init>()V

    .restart local v0    # "response":Lcom/sec/ims/util/SipError;
    goto/16 :goto_1

    .line 591
    .end local v0    # "response":Lcom/sec/ims/util/SipError;
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    goto/16 :goto_0

    .line 593
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 594
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorKdi;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorKdi;-><init>()V

    .restart local v0    # "response":Lcom/sec/ims/util/SipError;
    goto :goto_1

    .line 595
    .end local v0    # "response":Lcom/sec/ims/util/SipError;
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    .line 596
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorDcm;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorDcm;-><init>()V

    .restart local v0    # "response":Lcom/sec/ims/util/SipError;
    goto :goto_1

    .line 597
    .end local v0    # "response":Lcom/sec/ims/util/SipError;
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    .line 598
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorSbm;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorSbm;-><init>()V

    .restart local v0    # "response":Lcom/sec/ims/util/SipError;
    goto :goto_1

    .line 599
    .end local v0    # "response":Lcom/sec/ims/util/SipError;
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_7

    .line 600
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorUscc;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorUscc;-><init>()V

    .restart local v0    # "response":Lcom/sec/ims/util/SipError;
    goto :goto_1

    .line 601
    .end local v0    # "response":Lcom/sec/ims/util/SipError;
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->GLOBE_PH:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_8

    .line 602
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorGlobe;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorGlobe;-><init>()V

    .restart local v0    # "response":Lcom/sec/ims/util/SipError;
    goto :goto_1

    .line 603
    .end local v0    # "response":Lcom/sec/ims/util/SipError;
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_9

    .line 604
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorMdmn;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorMdmn;-><init>()V

    .restart local v0    # "response":Lcom/sec/ims/util/SipError;
    goto :goto_1

    .line 605
    .end local v0    # "response":Lcom/sec/ims/util/SipError;
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->NOVA_IS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_a

    .line 606
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorNovaIs;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorNovaIs;-><init>()V

    .restart local v0    # "response":Lcom/sec/ims/util/SipError;
    goto :goto_1

    .line 607
    .end local v0    # "response":Lcom/sec/ims/util/SipError;
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_b

    .line 608
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorSprint;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorSprint;-><init>()V

    .restart local v0    # "response":Lcom/sec/ims/util/SipError;
    goto :goto_1

    .line 610
    .end local v0    # "response":Lcom/sec/ims/util/SipError;
    :cond_b
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorBase;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    .restart local v0    # "response":Lcom/sec/ims/util/SipError;
    goto :goto_1

    .line 592
    .end local v0    # "response":Lcom/sec/ims/util/SipError;
    :cond_c
    :goto_0
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorCTC;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorCTC;-><init>()V

    .line 613
    .restart local v0    # "response":Lcom/sec/ims/util/SipError;
    :goto_1
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object v1

    return-object v1
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IncomingCall] processMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] msg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ignored !!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 122
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->dbrLost_IncomingCall(Landroid/os/Message;)V

    .line 123
    goto/16 :goto_0

    .line 160
    :sswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReinvite:Z

    .line 161
    const-string v0, "[IncomingCall] Re-INVITE defered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 163
    goto/16 :goto_0

    .line 166
    :sswitch_2
    const-string v0, "[IncomingCall] Sending Dummy Dns"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDummyDnsQuery()V

    .line 168
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->startDummyDnsTimer()V

    .line 169
    goto :goto_0

    .line 172
    :sswitch_3
    const-string v0, "[IncomingCall] Re-INVITE Timer expired defered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 174
    goto :goto_0

    .line 126
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->ringTimeout_IncomingCall(Landroid/os/Message;)V

    .line 127
    goto :goto_0

    .line 147
    :sswitch_5
    const-string v0, "[IncomingCall] Resume video defered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isDeferedVideoResume:Z

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 150
    goto :goto_0

    .line 142
    :sswitch_6
    const-string v0, "[IncomingCall] Hold video defered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 144
    goto :goto_0

    .line 177
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->sendText_IncomingCall(Landroid/os/Message;)V

    .line 178
    goto :goto_0

    .line 134
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->update_IncomingCall(Landroid/os/Message;)V

    .line 135
    goto :goto_0

    .line 138
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->hold_IncomingCall(Landroid/os/Message;)V

    .line 139
    goto :goto_0

    .line 130
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->established_IncomingCall(Landroid/os/Message;)V

    .line 131
    goto :goto_0

    .line 181
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->earlymedia_IncomingCall(Landroid/os/Message;)V

    .line 182
    goto :goto_0

    .line 104
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->delayedCamStart_IncomingCall(Landroid/os/Message;)V

    .line 105
    goto :goto_0

    .line 108
    :sswitch_d
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->accept_IncomingCall(Landroid/os/Message;)V

    .line 109
    goto :goto_0

    .line 157
    :sswitch_e
    return v2

    .line 112
    :sswitch_f
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->terminate_IncomingCall(Landroid/os/Message;)I

    move-result v0

    .line 113
    .local v0, "isTerminated":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 114
    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 118
    .end local v0    # "isTerminated":I
    :cond_1
    :sswitch_10
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->reject_IncomingCall(Landroid/os/Message;)V

    .line 119
    nop

    .line 187
    :goto_0
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_f
        0x3 -> :sswitch_e
        0x4 -> :sswitch_e
        0x16 -> :sswitch_d
        0x17 -> :sswitch_10
        0x18 -> :sswitch_c
        0x20 -> :sswitch_b
        0x29 -> :sswitch_a
        0x33 -> :sswitch_9
        0x34 -> :sswitch_8
        0x40 -> :sswitch_7
        0x50 -> :sswitch_6
        0x51 -> :sswitch_5
        0x5e -> :sswitch_e
        0x64 -> :sswitch_e
        0xcc -> :sswitch_4
        0x12e -> :sswitch_3
        0x131 -> :sswitch_2
        0x190 -> :sswitch_e
        0x1f6 -> :sswitch_1
        0x1388 -> :sswitch_0
    .end sparse-switch
.end method

.method protected startDummyDnsTimer()V
    .locals 5

    .line 191
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->stopDummyDnsTimer()V

    .line 192
    const-string v0, "CallStateMachine"

    const-string/jumbo v1, "startDummyDnsTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 194
    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mDummyDnsTimeoutMessage:Landroid/os/Message;

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mDummyDnsTimeoutMessage:Landroid/os/Message;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 196
    return-void
.end method

.method protected stopDummyDnsTimer()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mDummyDnsTimeoutMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    const-string v0, "CallStateMachine"

    const-string/jumbo v1, "stopDummyDnsTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mDummyDnsTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->mDummyDnsTimeoutMessage:Landroid/os/Message;

    .line 206
    return-void
.end method
