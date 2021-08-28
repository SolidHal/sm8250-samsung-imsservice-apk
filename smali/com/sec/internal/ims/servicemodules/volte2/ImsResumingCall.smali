.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallState;
.source "ImsResumingCall.java"


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

    .line 26
    .local p7, "listener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/volte2/IImsCallSessionEventListener;>;"
    invoke-direct/range {p0 .. p11}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    .line 27
    return-void
.end method

.method private error_ResumingCall(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 148
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/util/SipError;

    .line 149
    .local v0, "err":Lcom/sec/ims/util/SipError;
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    const-string v2, "Call resume failed"

    const/16 v3, 0x458

    const/16 v4, 0x1388

    if-lt v1, v4, :cond_0

    .line 150
    const-string v1, "CallStateMachine"

    const-string v4, "[ResumingCall] big data code over 5000 means call ended"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 153
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    .line 154
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCallCount(I)[I

    move-result-object v1

    .line 160
    .local v1, "callsCount":[I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mResumeCallRetriggerTimer:I

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 161
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mResumeCallRetriggerTimer:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->startRetriggerTimer(J)V

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 164
    return-void
.end method

.method private established_ResumingCall()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendCmcPublishDialog()V

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnResumed(Z)V

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 137
    return-void
.end method

.method private heldRemote_ResumingCall()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteHeld:Z

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnResumed(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 131
    return-void
.end method

.method private modified_ResumingCall(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 110
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 111
    .local v0, "modifiedCallType":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnModified(I)V

    .line 112
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    new-instance v1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 114
    .local v1, "modifiedProfile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 115
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 116
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    const/16 v4, 0xc8

    .line 118
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    goto :goto_0

    .line 119
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 116
    :goto_0
    invoke-interface {v2, v3, v4, v5, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 121
    .end local v1    # "modifiedProfile":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_1
    return-void
.end method

.method private switchRequest_ResumingCall()V
    .locals 7

    .line 140
    const-string v0, "CallStateMachine"

    const-string v1, "Rejecting switch request - send 603 to remote party"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x25b

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->rejectModifyCallType(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    new-instance v4, Lcom/sec/ims/util/SipError;

    const/16 v5, 0x3e9

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-string v1, ""

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 34
    const-string v0, "CallStateMachine"

    const-string v1, "Enter [ResumingCall]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public exit()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPreviousState(Lcom/sec/internal/helper/State;)V

    .line 169
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ResumingCall] processMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    const/16 v4, 0x29

    if-eq v0, v4, :cond_8

    const/16 v4, 0x37

    if-eq v0, v4, :cond_7

    const/16 v4, 0x47

    const-string v5, "Call resume failed"

    const/16 v6, 0x458

    if-eq v0, v4, :cond_6

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_5

    const/16 v4, 0x64

    if-eq v0, v4, :cond_9

    const/16 v4, 0x190

    if-eq v0, v4, :cond_9

    const/16 v4, 0x1f6

    if-eq v0, v4, :cond_4

    const/16 v4, 0x1388

    if-eq v0, v4, :cond_9

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/16 v4, 0x33

    if-eq v0, v4, :cond_1

    const/16 v4, 0x34

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->getName()Ljava/lang/String;

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

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    .line 52
    goto :goto_0

    .line 59
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->heldRemote_ResumingCall()V

    .line 60
    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    .line 56
    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x455

    const/16 v2, 0xa

    const-string v4, "Call switch failed"

    invoke-virtual {v0, v1, v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 80
    goto :goto_0

    .line 98
    :cond_1
    const-string v0, "[ResumingCall] Rejecting hold request while processing modify"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x457

    const-string v2, "Call hold failed"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 101
    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->error_ResumingCall(Landroid/os/Message;)V

    .line 84
    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    .line 75
    goto :goto_0

    .line 93
    :cond_4
    const-string v0, "[ResumingCall] Re-INVITE defered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 95
    goto :goto_0

    .line 42
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->modified_ResumingCall(Landroid/os/Message;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_6
    const-string v0, "[ResumingCall] ignore resume request while processing resume"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v6, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 48
    goto :goto_0

    .line 67
    :cond_7
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->switchRequest_ResumingCall()V

    .line 68
    goto :goto_0

    .line 63
    :cond_8
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->established_ResumingCall()V

    .line 64
    nop

    .line 106
    :goto_0
    return v3

    .line 90
    :cond_9
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
