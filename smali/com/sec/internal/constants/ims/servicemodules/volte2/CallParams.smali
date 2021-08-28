.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
.super Ljava/lang/Object;
.source "CallParams.java"


# instance fields
.field private composerData:Landroid/os/Bundle;

.field private mAlertInfo:Ljava/lang/String;

.field private mAudioBitRate:Ljava/lang/String;

.field private mAudioCodec:Ljava/lang/String;

.field private mAudioEarlyMediaDir:I

.field private mAudioRxTrackId:I

.field private mCmcDeviceId:Ljava/lang/String;

.field private mConferenceSupported:Ljava/lang/String;

.field private mDtmfEvent:Ljava/lang/String;

.field private mFeatureCaps:Ljava/lang/String;

.field private mHasDiversion:Z

.field private mHistoryInfo:Ljava/lang/String;

.field private mIncomingCall:Z

.field private mIndicationFlag:I

.field private mIsFocus:Ljava/lang/String;

.field private mLocalHoldTone:Z

.field private mLocalVideoRTCPPort:I

.field private mLocalVideoRTPPort:I

.field private mModifySupported:Ljava/lang/String;

.field private mNumberPlus:Ljava/lang/String;

.field private mPLettering:Ljava/lang/String;

.field private mPhotoRing:Ljava/lang/String;

.field private mReferredBy:Ljava/lang/String;

.field private mRemoteVideoRTCPPort:I

.field private mRemoteVideoRTPPort:I

.field private mReplaces:Ljava/lang/String;

.field private mRetryAfter:I

.field private mSipCallId:Ljava/lang/String;

.field private mSipInviteMsg:Ljava/lang/String;

.field private mTerminatingId:Lcom/sec/ims/util/ImsUri;

.field private mVerstat:Ljava/lang/String;

.field private mVideoCrbtType:I

.field private mVideoHeight:I

.field private mVideoOrientation:I

.field private mVideoWidth:I

.field private misHDIcon:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoWidth:I

    .line 37
    const/16 v0, 0x280

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoHeight:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIncomingCall:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getAlertInfo()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAlertInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioBitRate()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioBitRate:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioCodec()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioCodec:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioEarlyMediaDir()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioEarlyMediaDir:I

    return v0
.end method

.method public getAudioRxTrackId()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioRxTrackId:I

    return v0
.end method

.method public getCmcDeviceId()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getComposerData()Landroid/os/Bundle;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->composerData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getConferenceSupported()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConferenceSupported:Ljava/lang/String;

    return-object v0
.end method

.method public getDtmfEvent()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDtmfEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureCaps()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mFeatureCaps:Ljava/lang/String;

    return-object v0
.end method

.method public getHasDiversion()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHasDiversion:Z

    return v0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicationFlag()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIndicationFlag:I

    return v0
.end method

.method public getIsFocus()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIsFocus:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalHoldTone()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalHoldTone:Z

    return v0
.end method

.method public getLocalVideoRTCPPort()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTCPPort:I

    return v0
.end method

.method public getLocalVideoRTPPort()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTPPort:I

    return v0
.end method

.method public getModifyHeader()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mModifySupported:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPlus()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mNumberPlus:Ljava/lang/String;

    return-object v0
.end method

.method public getPLettering()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPLettering:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoRing()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPhotoRing:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteVideoRTCPPort()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTCPPort:I

    return v0
.end method

.method public getRemoteVideoRTPPort()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTPPort:I

    return v0
.end method

.method public getReplaces()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mReplaces:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryAfter()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRetryAfter:I

    return v0
.end method

.method public getSipCallId()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getSipInviteMsg()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipInviteMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminatingId()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mTerminatingId:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public getVerstat()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVerstat:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCrbtType()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoCrbtType:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoHeight:I

    return v0
.end method

.method public getVideoOrientation()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoOrientation:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoWidth:I

    return v0
.end method

.method public getisHDIcon()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->misHDIcon:I

    return v0
.end method

.method public isIncomingCall()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIncomingCall:Z

    return v0
.end method

.method public setAlertInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "alertInfo"    # Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAlertInfo:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setAsIncomingCall()V
    .locals 1

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIncomingCall:Z

    .line 317
    return-void
.end method

.method public setAudioBitRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 299
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioBitRate:Ljava/lang/String;

    return-void
.end method

.method public setAudioCodec(Ljava/lang/String;)V
    .locals 0
    .param p1, "codec"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioCodec:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setAudioEarlyMediaDir(I)V
    .locals 0
    .param p1, "audioEarlyMediaDir"    # I

    .line 320
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioEarlyMediaDir:I

    .line 321
    return-void
.end method

.method public setAudioRxTrackId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 292
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioRxTrackId:I

    .line 293
    return-void
.end method

.method public setCmcDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmcDeviceId"    # Ljava/lang/String;

    .line 288
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcDeviceId:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setComposerData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "composerData"    # Landroid/os/Bundle;

    .line 57
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->composerData:Landroid/os/Bundle;

    .line 58
    return-void
.end method

.method public setConferenceSupported(Ljava/lang/String;)V
    .locals 0
    .param p1, "confSupported"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConferenceSupported:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setDtmfEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "dtmfEvent"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDtmfEvent:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setFeatureCaps(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureCaps"    # Ljava/lang/String;

    .line 304
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mFeatureCaps:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setHasDiversion(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 328
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHasDiversion:Z

    .line 329
    return-void
.end method

.method public setHistoryInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setIndicationFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 161
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIndicationFlag:I

    .line 162
    return-void
.end method

.method public setIsFocus(Ljava/lang/String;)V
    .locals 0
    .param p1, "isFocus"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIsFocus:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setLocalHoldTone(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 256
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalHoldTone:Z

    .line 257
    return-void
.end method

.method public setLocalVideoRTCPPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 137
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTCPPort:I

    .line 138
    return-void
.end method

.method public setLocalVideoRTPPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 129
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTPPort:I

    .line 130
    return-void
.end method

.method public setModifyHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mModifySupported:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setNumberPlus(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mNumberPlus:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPhotoRing(Ljava/lang/String;)V
    .locals 0
    .param p1, "photoRing"    # Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPhotoRing:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setReferredBy(Ljava/lang/String;)V
    .locals 0
    .param p1, "referredBy"    # Ljava/lang/String;

    .line 217
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mReferredBy:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setRemoteVideoRTCPPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 153
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTCPPort:I

    .line 154
    return-void
.end method

.method public setRemoteVideoRTPPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 145
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTPPort:I

    .line 146
    return-void
.end method

.method public setReplaces(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 248
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mReplaces:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setSipCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sipCallId"    # Ljava/lang/String;

    .line 225
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipCallId:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setSipInviteMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "invite"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipInviteMsg:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setTerminatingId(Lcom/sec/ims/util/ImsUri;)V
    .locals 0
    .param p1, "terminatingId"    # Lcom/sec/ims/util/ImsUri;

    .line 244
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mTerminatingId:Lcom/sec/ims/util/ImsUri;

    .line 245
    return-void
.end method

.method public setVerstat(Ljava/lang/String;)V
    .locals 0
    .param p1, "verstat"    # Ljava/lang/String;

    .line 263
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVerstat:Ljava/lang/String;

    return-void
.end method

.method public setVideoCrbtType(I)V
    .locals 0
    .param p1, "videoCrbtType"    # I

    .line 201
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoCrbtType:I

    .line 202
    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .line 276
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoHeight:I

    .line 277
    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 0
    .param p1, "videoOrientation"    # I

    .line 209
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoOrientation:I

    .line 210
    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0
    .param p1, "value"    # I

    .line 268
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoWidth:I

    .line 269
    return-void
.end method

.method public setisHDIcon(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 169
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->misHDIcon:I

    .line 170
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "historyInfo":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallParams [mPLettering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPLettering:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mHistoryInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDtmfEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDtmfEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mModifySupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mModifySupported:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mAudioCodec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioCodec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mNumberPlus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mNumberPlus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mConferenceSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConferenceSupported:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIsFocus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIndicationFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIndicationFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", misHDIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->misHDIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPhotoRing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPhotoRing:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mLocalVideoRTPPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTPPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLocalVideoRTCPPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTCPPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRemoteVideoRTPPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTPPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRemoteVideoRTCPPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTCPPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRetryAfter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRetryAfter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAlertInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAlertInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mReferredBy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mReferredBy:Ljava/lang/String;

    .line 346
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mSipCallId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mLocalHoldTone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalHoldTone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoCrbtType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoCrbtType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFeatureCaps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mFeatureCaps:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mAudioEarlyMediaDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioEarlyMediaDir:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVerstat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVerstat:Ljava/lang/String;

    .line 350
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mHasDiversion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHasDiversion:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    return-object v1
.end method
