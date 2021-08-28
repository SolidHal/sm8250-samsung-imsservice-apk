.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
.super Ljava/lang/Object;
.source "CallStateEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;,
        Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;,
        Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;
    }
.end annotation


# instance fields
.field private mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

.field private mAlternativeServiceReason:Ljava/lang/String;

.field private mAlternativeServiceType:Ljava/lang/String;

.field private mAlternativeServiceUrn:Ljava/lang/String;

.field private mCallType:I

.field private mCmcCallTime:Ljava/lang/String;

.field private mCmcDeviceId:Ljava/lang/String;

.field private mIsConference:Z

.field private mIsSdToSdPull:Z

.field private mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

.field private mPeerAddr:Lcom/sec/ims/util/NameAddr;

.field private mRemoteVideoCapa:Z

.field private mRetryAfter:I

.field private mSessionID:I

.field private mSipErrorCode:Lcom/sec/ims/util/SipError;

.field private mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

.field private mUpdatedParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    .line 22
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 23
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCallType:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRemoteVideoCapa:Z

    .line 26
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mUpdatedParticipants:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    .line 29
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->NONE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceReason:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceUrn:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRetryAfter:I

    .line 34
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsConference:Z

    .line 35
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcDeviceId:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcCallTime:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsSdToSdPull:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V
    .locals 3
    .param p1, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    .line 22
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 23
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCallType:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRemoteVideoCapa:Z

    .line 26
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mUpdatedParticipants:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    .line 29
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->NONE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceReason:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceUrn:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRetryAfter:I

    .line 34
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsConference:Z

    .line 35
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcDeviceId:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcCallTime:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsSdToSdPull:Z

    .line 97
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 98
    return-void
.end method


# virtual methods
.method public addUpdatedParticipantsList(Ljava/lang/String;III)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "participantId"    # I
    .param p3, "sessionId"    # I
    .param p4, "status"    # I

    .line 157
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mUpdatedParticipants:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;

    invoke-direct {v1, p2, p3, p4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public getAlternativeService()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    return-object v0
.end method

.method public getAlternativeServiceReason()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceReason:Ljava/lang/String;

    return-object v0
.end method

.method public getAlternativeServiceType()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceType:Ljava/lang/String;

    return-object v0
.end method

.method public getAlternativeServiceUrn()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceUrn:Ljava/lang/String;

    return-object v0
.end method

.method public getCallType()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCallType:I

    return v0
.end method

.method public getCmcCallTime()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcCallTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCmcDeviceId()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Lcom/sec/ims/util/SipError;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    return-object v0
.end method

.method public getIsSdToSdPull()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsSdToSdPull:Z

    return v0
.end method

.method public getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    return-object v0
.end method

.method public getPeerAddr()Lcom/sec/ims/util/NameAddr;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    return-object v0
.end method

.method public getRemoteVideoCapa()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRemoteVideoCapa:Z

    return v0
.end method

.method public getRetryAfter()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRetryAfter:I

    return v0
.end method

.method public getSessionID()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    return v0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0
.end method

.method public getUpdatedParticipantsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mUpdatedParticipants:Ljava/util/List;

    return-object v0
.end method

.method public isConference()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsConference:Z

    return v0
.end method

.method public setAlternativeService(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;)V
    .locals 0
    .param p1, "as"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    .line 173
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    .line 174
    return-void
.end method

.method public setAlternativeServiceReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceReason:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setAlternativeServiceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceType:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setAlternativeServiceUrn(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceUrn"    # Ljava/lang/String;

    .line 197
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceUrn:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setCallType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 124
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCallType:I

    .line 125
    return-void
.end method

.method public setCmcCallTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmcCallTime"    # Ljava/lang/String;

    .line 233
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcCallTime:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setCmcDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmcDeviceId"    # Ljava/lang/String;

    .line 225
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcDeviceId:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setConference(Z)V
    .locals 0
    .param p1, "conf"    # Z

    .line 213
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsConference:Z

    .line 214
    return-void
.end method

.method public setErrorCode(Lcom/sec/ims/util/SipError;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/sec/ims/util/SipError;

    .line 165
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    .line 166
    return-void
.end method

.method public setIsSdToSdPull(Z)V
    .locals 0
    .param p1, "isSdToSdPull"    # Z

    .line 241
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsSdToSdPull:Z

    .line 242
    return-void
.end method

.method public setParams(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 148
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 149
    return-void
.end method

.method public setPeerAddr(Lcom/sec/ims/util/NameAddr;)V
    .locals 0
    .param p1, "peerAddr"    # Lcom/sec/ims/util/NameAddr;

    .line 132
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    .line 133
    return-void
.end method

.method public setRemoteVideoCapa(Z)V
    .locals 0
    .param p1, "capa"    # Z

    .line 140
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRemoteVideoCapa:Z

    .line 141
    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0
    .param p1, "retryAfter"    # I

    .line 205
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRetryAfter:I

    .line 206
    return-void
.end method

.method public setSessionID(I)V
    .locals 0
    .param p1, "sessionID"    # I

    .line 116
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    .line 117
    return-void
.end method

.method public setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V
    .locals 0
    .param p1, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 108
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallStateEvent [sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    .line 246
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSipErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    return-object v0
.end method
