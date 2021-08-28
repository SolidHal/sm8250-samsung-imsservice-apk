.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallState;
.source "ImsHoldingCall.java"


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

.method private error_HoldingCall(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 115
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/util/SipError;

    .line 116
    .local v0, "err":Lcom/sec/ims/util/SipError;
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    const-string v2, "Call hold failed"

    const/16 v3, 0x457

    const/16 v4, 0x1388

    if-lt v1, v4, :cond_0

    .line 117
    const-string v1, "CallStateMachine"

    const-string v4, "[HoldingCall] big data code over 5000 means call ended"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 120
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    .line 121
    return-void

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    const/16 v4, 0x1eb

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    .line 125
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCallCount(I)[I

    move-result-object v1

    .line 126
    .local v1, "callsCount":[I
    aget v4, v1, v5

    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    .line 127
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v4, v3, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 129
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 130
    return-void

    .line 134
    .end local v1    # "callsCount":[I
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0x45f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call transfer failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    goto :goto_0

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 143
    return-void
.end method

.method private modified_HoldingCall(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 170
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 171
    .local v0, "modifiedCallType":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnModified(I)V

    .line 172
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    new-instance v1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 174
    .local v1, "modifiedProfile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 175
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 176
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    const/16 v4, 0xc8

    .line 178
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    goto :goto_0

    .line 179
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 176
    :goto_0
    invoke-interface {v2, v3, v4, v5, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 181
    .end local v1    # "modifiedProfile":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_1
    return-void
.end method

.method private switchRequest_HoldingCall(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 160
    const-string v0, "CallStateMachine"

    const-string v1, "Rejecting switch request - send 603 to remote party"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x25b

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->rejectModifyCallType(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x4

    const/4 v2, -0x1

    new-instance v3, Lcom/sec/ims/util/SipError;

    const/16 v4, 0x3e9

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 164
    return v4

    .line 166
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private update_HoldingCall(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 146
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 147
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/data/CallProfile;

    .line 148
    .local v1, "holdingProfile":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "CallStateMachine"

    const-string v3, "[HoldingCall] Holding request is ongoing return fail to UPDATE from APP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-object v1, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v3, 0x455

    const/16 v4, 0xa

    const-string v5, "Call switch failed"

    invoke-virtual {v2, v3, v5, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 157
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-string v1, ""

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 34
    const-string v0, "CallStateMachine"

    const-string v1, "Enter [HoldingCall]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getUsingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopCamera()V

    .line 39
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPreviousState(Lcom/sec/internal/helper/State;)V

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 111
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HoldingCall] processMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    const/16 v4, 0x29

    if-eq v0, v4, :cond_8

    const/16 v4, 0x37

    if-eq v0, v4, :cond_7

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_6

    const/16 v4, 0x64

    if-eq v0, v4, :cond_9

    const/16 v4, 0x190

    if-eq v0, v4, :cond_9

    const/16 v4, 0x1f6

    if-eq v0, v4, :cond_5

    const/16 v4, 0x1388

    if-eq v0, v4, :cond_9

    const-string v2, "Call hold failed"

    const/16 v4, 0x457

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_3

    const/16 v5, 0x33

    if-eq v0, v5, :cond_2

    const/16 v2, 0x34

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->getName()Ljava/lang/String;

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

    goto :goto_1

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    .line 61
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 57
    goto :goto_1

    .line 79
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->update_HoldingCall(Landroid/os/Message;)V

    .line 80
    goto :goto_1

    .line 46
    :cond_2
    const-string v0, "ignore hold request while processing hold"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 48
    goto :goto_1

    .line 68
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->error_HoldingCall(Landroid/os/Message;)V

    .line 69
    goto :goto_1

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    .line 76
    goto :goto_1

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReinvite:Z

    .line 97
    const-string v0, "[HoldingCall] Re-INVITE defered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 99
    goto :goto_1

    .line 86
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->modified_HoldingCall(Landroid/os/Message;)V

    .line 87
    goto :goto_1

    .line 83
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->switchRequest_HoldingCall(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 64
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    .line 65
    nop

    .line 104
    :goto_1
    return v3

    .line 93
    :cond_9
    return v2

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
