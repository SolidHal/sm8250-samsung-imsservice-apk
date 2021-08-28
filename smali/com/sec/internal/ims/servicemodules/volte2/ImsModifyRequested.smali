.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallState;
.source "ImsModifyRequested.java"


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

    .line 27
    .local p7, "listener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/volte2/IImsCallSessionEventListener;>;"
    invoke-direct/range {p0 .. p11}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    .line 28
    return-void
.end method

.method private accept_ModifyRequested(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 116
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/volte2/data/CallProfile;

    .line 117
    .local v0, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isChangedCallType(Lcom/sec/ims/volte2/data/CallProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->modifyCallType(Lcom/sec/ims/volte2/data/CallProfile;Z)Z

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 126
    return-void
.end method

.method private moidfied_ModifyRequested(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 144
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 145
    .local v0, "modifiedCallType":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 147
    .local v1, "orgCallType":I
    new-instance v2, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v2}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 148
    .local v2, "modifiedProfile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v2, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 150
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    if-ne v1, v0, :cond_1

    .line 151
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    const/16 v5, 0x1e7

    .line 154
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    goto :goto_0

    .line 155
    :cond_0
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 152
    :goto_0
    invoke-interface {v3, v4, v5, v6, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    goto :goto_1

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->onCallModified(Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 160
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 161
    return-void
.end method

.method private reject_ModifyRequested(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getUsingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPrevUsedCamera:I

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    .line 133
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 134
    .local v0, "reason":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->rejectModifyCallType(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, -0x1

    new-instance v5, Lcom/sec/ims/util/SipError;

    const/16 v6, 0x3e9

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 137
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 141
    return-void
.end method

.method private switchRequest_ModifyRequested(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 179
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 180
    .local v0, "modifyCallType":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 181
    .local v1, "curCallType":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 184
    const-string v2, "CallStateMachine"

    const-string v3, "[ModifyRequested] CTC Bidirectional call switch defered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 187
    :cond_1
    return-void
.end method

.method private update_ModifyRequested(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 165
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/data/CallProfile;

    .line 166
    .local v1, "modifyingProfile":Lcom/sec/ims/volte2/data/CallProfile;
    const-string v2, "CallStateMachine"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    const-string v3, "[ModifyRequested] defer setTty request."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 169
    return-void

    .line 171
    :cond_0
    const-string v3, "[ModifyRequested] Modify request from remote is ongoing return fail to UPDATE from APP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-object v1, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 174
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v3, 0x455

    const/16 v4, 0xa

    const-string v5, "Call switch failed"

    invoke-virtual {v2, v3, v5, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 176
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getModifyRequestedProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 33
    .local v0, "requestedProfile":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/helper/ImsCallUtil;->isUpgradeCall(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendCmcPublishDialog()V

    .line 36
    :cond_0
    const-string v1, "CallStateMachine"

    const-string v2, "Enter [ModifyRequested]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public exit()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPreviousState(Lcom/sec/internal/helper/State;)V

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 194
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ModifyRequested] processMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    const/16 v3, 0x37

    if-eq v0, v3, :cond_b

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_a

    const/16 v3, 0x40

    if-eq v0, v3, :cond_9

    const/16 v3, 0x47

    if-eq v0, v3, :cond_8

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_7

    const/16 v3, 0x64

    if-eq v0, v3, :cond_c

    const/16 v3, 0x190

    if-eq v0, v3, :cond_c

    const/16 v3, 0x1f6

    if-eq v0, v3, :cond_6

    const/16 v3, 0x1388

    if-eq v0, v3, :cond_c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_c

    const/4 v3, 0x4

    if-eq v0, v3, :cond_c

    const/16 v3, 0x16

    if-eq v0, v3, :cond_5

    const/16 v3, 0x17

    if-eq v0, v3, :cond_4

    const/16 v3, 0x33

    if-eq v0, v3, :cond_3

    const/16 v3, 0x34

    if-eq v0, v3, :cond_2

    const/16 v3, 0x50

    if-eq v0, v3, :cond_1

    const/16 v3, 0x51

    if-eq v0, v3, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->getName()Ljava/lang/String;

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

    .line 82
    :cond_0
    const-string v0, "[ModifyRequested] Resume video defered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isDeferedVideoResume:Z

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 85
    goto :goto_0

    .line 77
    :cond_1
    const-string v0, "[ModifyRequested] Hold video defered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 79
    goto :goto_0

    .line 57
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->update_ModifyRequested(Landroid/os/Message;)V

    .line 58
    goto :goto_0

    .line 61
    :cond_3
    const-string v0, "[ModifyRequested] Rejecting hold request while processing modify"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x457

    const-string v3, "Call hold failed"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 64
    goto :goto_0

    .line 49
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->reject_ModifyRequested(Landroid/os/Message;)V

    .line 50
    goto :goto_0

    .line 45
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->accept_ModifyRequested(Landroid/os/Message;)V

    .line 46
    goto :goto_0

    .line 96
    :cond_6
    const-string v0, "[ModifyRequested] Re-INVITE defered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 98
    goto :goto_0

    .line 53
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->moidfied_ModifyRequested(Landroid/os/Message;)V

    .line 54
    goto :goto_0

    .line 67
    :cond_8
    const-string v0, "[ModifyRequested] Rejecting resume request while processing modify"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x458

    const-string v3, "Call resume failed"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 70
    goto :goto_0

    .line 101
    :cond_9
    const-string v0, "[ModifyRequested] SEND_TEXT defered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 103
    goto :goto_0

    .line 73
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    .line 74
    goto :goto_0

    .line 106
    :cond_b
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;->switchRequest_ModifyRequested(Landroid/os/Message;)V

    .line 107
    nop

    .line 112
    :goto_0
    return v2

    .line 93
    :cond_c
    const/4 v0, 0x0

    return v0
.end method
