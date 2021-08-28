.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
.super Ljava/lang/Object;
.source "IMSMediaEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;,
        Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;
    }
.end annotation


# static fields
.field public static final AUDIO_FIRST_RTPRX_RECV:I = 0x1d

.field public static final AUDIO_FIRST_RTPTX_SEND:I = 0x12

.field public static final AUDIO_RTCP_TIMEOUT:I = 0x3d

.field public static final AUDIO_RTP_STATS:I = 0x20

.field public static final AUDIO_RTP_TIMEOUT:I = 0x1c

.field public static final AUDIO_RTP_TIMEOUT_CLEAR:I = 0x1f

.field public static final CAM_DISABLED_ERROR:I = 0x10

.field public static final CMC_RECORDER_DURATION_IN_PROGRESS:I = 0x9

.field public static final CMC_RECORDER_FILEOPERATION_ERROR:I = 0x2

.field public static final CMC_RECORDER_FILESIZE_IN_PROGRESS:I = 0x8

.field public static final CMC_RECORDER_INSUFFICIENT_START_MEMORY:I = 0x3

.field public static final CMC_RECORDER_MAX_DURATION_REACHED:I = 0x5

.field public static final CMC_RECORDER_MAX_FILESIZE_APPROACHING:I = 0x6

.field public static final CMC_RECORDER_MAX_FILESIZE_REACHED:I = 0x7

.field public static final CMC_RECORDER_NO_ERROR:I = 0x0

.field public static final CMC_RECORDER_NO_SPACE:I = 0x1

.field public static final CMC_RECORDER_RECORDERERROR:I = 0x4

.field public static final DTMF_RECEIVED:I = 0x0

.field public static final EPDG_DL_INFO:I = 0x4e

.field public static final EVENT_TYPE_AUDIO:I = 0x0

.field public static final EVENT_TYPE_DTMF:I = 0x4

.field public static final EVENT_TYPE_RELAY_STREAM:I = 0x3

.field public static final EVENT_TYPE_TEXT:I = 0x2

.field public static final EVENT_TYPE_VIDEO:I = 0x1

.field public static final RECORD_ERROR_FILEOPEARTION:I = 0x2

.field public static final RECORD_ERROR_NO_SPACE:I = 0x1

.field public static final RELAY_CHANNEL_ESTABLISHED:I = 0x0

.field public static final RELAY_CHANNEL_HOLDED:I = 0x4

.field public static final RELAY_CHANNEL_RESUMED:I = 0x5

.field public static final RELAY_CHANNEL_STARTED:I = 0x2

.field public static final RELAY_CHANNEL_STOPED:I = 0x3

.field public static final RELAY_CHANNEL_TERMINATED:I = 0x1

.field public static final RELAY_ECHOLOCATE_RESULT:I = 0x5

.field public static final RELAY_HOLD_STREAM:I = 0xa

.field public static final RELAY_RECORD_START:I = 0xc

.field public static final RELAY_RESUME_STREAM:I = 0xb

.field public static final RELAY_RTCP_TIMEOUT:I = 0x4

.field public static final RELAY_RTP_TIMEOUT:I = 0x3

.field public static final RELAY_STREAM_CREATED:I = 0x0

.field public static final RELAY_STREAM_DELETED:I = 0x1

.field public static final RELAY_STREAM_UPDATED:I = 0x2

.field public static final TEXT_PACKET_RECEIVED:I = 0x1

.field public static final TEXT_RTP_TIMEOUT:I = 0x2

.field public static final VIDEO_RESP_RTCP_REPORT:I = 0x75

.field public static final VIDEO_RTCP_TIMEOUT:I = 0x15

.field public static final VIDEO_RTCP_TIMEOUT_CLEAR:I = 0x17

.field public static final VIDEO_RTP_TIMEOUT:I = 0x14

.field public static final VIDEO_RTP_TIMEOUT_CLEAR:I = 0x16


# instance fields
.field private mAudioEvent:I

.field private mAudioRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

.field private mCameraId:I

.field private mChannelId:I

.field private mCmcRecordingArg:I

.field private mCmcRecordingEvent:I

.field private mDtmKey:I

.field private mDtmfEvent:I

.field private mFileName:Ljava/lang/String;

.field private mHeight:I

.field private mIsHeldCall:Z

.field private mIsNearEnd:Z

.field private mPhoneId:I

.field private mRelayChannelEvent:I

.field private mRelayChannelId:I

.field private mRelayRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

.field private mRelayStreamEvent:I

.field private mRtpLossRate:Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

.field private mRttText:Ljava/lang/String;

.field private mRttTextLen:I

.field private mSessionID:I

.field private mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

.field private mStreamId:I

.field private mTextEvent:I

.field private mVideoEvent:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mPhoneId:I

    .line 9
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mSessionID:I

    .line 10
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCameraId:I

    .line 11
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mChannelId:I

    .line 12
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mStreamId:I

    .line 13
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelId:I

    .line 14
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioEvent:I

    .line 15
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mVideoEvent:I

    .line 16
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mTextEvent:I

    .line 17
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayStreamEvent:I

    .line 18
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelEvent:I

    .line 19
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingEvent:I

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingArg:I

    .line 21
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmfEvent:I

    .line 22
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmKey:I

    .line 23
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mIsNearEnd:Z

    .line 24
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mFileName:Ljava/lang/String;

    .line 25
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mIsHeldCall:Z

    .line 26
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mWidth:I

    .line 27
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mHeight:I

    .line 28
    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRttText:Ljava/lang/String;

    .line 29
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRttTextLen:I

    .line 203
    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRtpLossRate:Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    .line 204
    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    .line 205
    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    .line 212
    return-void
.end method


# virtual methods
.method public getAudioEvent()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioEvent:I

    return v0
.end method

.method public getAudioRtpStats()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    return-object v0
.end method

.method public getCameraId()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCameraId:I

    return v0
.end method

.method public getChannelId()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mChannelId:I

    return v0
.end method

.method public getCmcRecordingArg()I
    .locals 1

    .line 391
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingArg:I

    return v0
.end method

.method public getCmcRecordingEvent()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingEvent:I

    return v0
.end method

.method public getDtmfEvent()I
    .locals 1

    .line 431
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmfEvent:I

    return v0
.end method

.method public getDtmfKey()I
    .locals 1

    .line 443
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmKey:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mHeight:I

    return v0
.end method

.method public getIsNearEnd()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mIsNearEnd:Z

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mPhoneId:I

    return v0
.end method

.method public getRelayChannelEvent()I
    .locals 1

    .line 367
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelEvent:I

    return v0
.end method

.method public getRelayChannelId()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelId:I

    return v0
.end method

.method public getRelayRtpStats()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    return-object v0
.end method

.method public getRelayStreamEvent()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayStreamEvent:I

    return v0
.end method

.method public getRtpLossRate()Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRtpLossRate:Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    return-object v0
.end method

.method public getRttText()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRttText:Ljava/lang/String;

    return-object v0
.end method

.method public getRttTextLen()I
    .locals 1

    .line 423
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRttTextLen:I

    return v0
.end method

.method public getSessionID()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mSessionID:I

    return v0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    return-object v0
.end method

.method public getStreamId()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mStreamId:I

    return v0
.end method

.method public getTextEvent()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mTextEvent:I

    return v0
.end method

.method public getVideoEvent()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mVideoEvent:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mWidth:I

    return v0
.end method

.method public isAudioEvent()Z
    .locals 2

    .line 299
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCmcRecordingEvent()Z
    .locals 2

    .line 383
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDtmfEvent()Z
    .locals 2

    .line 435
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmfEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeldCall()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mIsHeldCall:Z

    return v0
.end method

.method public isRelayChannelEvent()Z
    .locals 2

    .line 371
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRelayStreamEvent()Z
    .locals 2

    .line 351
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayStreamEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTextEvent()Z
    .locals 2

    .line 331
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mTextEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoEvent()Z
    .locals 2

    .line 339
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mVideoEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAudioEvent(I)V
    .locals 0
    .param p1, "audioEvent"    # I

    .line 291
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioEvent:I

    .line 292
    return-void
.end method

.method public setAudioRtpStats(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .locals 0
    .param p1, "audioRtpStats"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    .line 303
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    .line 304
    return-void
.end method

.method public setChannelId(I)V
    .locals 0
    .param p1, "channelId"    # I

    .line 267
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mChannelId:I

    .line 268
    return-void
.end method

.method public setCmcRecordingArg(I)V
    .locals 0
    .param p1, "cmcRecordingArg"    # I

    .line 387
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingArg:I

    .line 388
    return-void
.end method

.method public setCmcRecordingEvent(I)V
    .locals 0
    .param p1, "cmcRecordingEvent"    # I

    .line 375
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingEvent:I

    .line 376
    return-void
.end method

.method public setDtmfEvent(I)V
    .locals 0
    .param p1, "dtmfEvent"    # I

    .line 427
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmfEvent:I

    .line 428
    return-void
.end method

.method public setDtmfKey(I)V
    .locals 0
    .param p1, "dtmfKey"    # I

    .line 439
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmKey:I

    .line 440
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 251
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mFileName:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 403
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mHeight:I

    .line 404
    return-void
.end method

.method public setIsHeldCall(Z)V
    .locals 0
    .param p1, "isHeldCall"    # Z

    .line 259
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mIsHeldCall:Z

    .line 260
    return-void
.end method

.method public setIsNearEnd(Z)V
    .locals 0
    .param p1, "isNearEnd"    # Z

    .line 243
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mIsNearEnd:Z

    .line 244
    return-void
.end method

.method public setPhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 223
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mPhoneId:I

    .line 224
    return-void
.end method

.method public setRelayChannelEvent(I)V
    .locals 0
    .param p1, "relayChannelEvent"    # I

    .line 363
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelEvent:I

    .line 364
    return-void
.end method

.method public setRelayChannelId(I)V
    .locals 0
    .param p1, "relayChannelId"    # I

    .line 283
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelId:I

    .line 284
    return-void
.end method

.method public setRelayRtpStats(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .locals 0
    .param p1, "relayRtpStats"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    .line 355
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    .line 356
    return-void
.end method

.method public setRelayStreamEvent(I)V
    .locals 0
    .param p1, "relayStreamEvent"    # I

    .line 343
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayStreamEvent:I

    .line 344
    return-void
.end method

.method public setRtpLossRate(Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V
    .locals 0
    .param p1, "rtpLossRate"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    .line 311
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRtpLossRate:Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    .line 312
    return-void
.end method

.method public setRttText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 411
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRttText:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setRttTextLen(I)V
    .locals 0
    .param p1, "len"    # I

    .line 419
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRttTextLen:I

    .line 420
    return-void
.end method

.method public setSessionID(I)V
    .locals 0
    .param p1, "sessionID"    # I

    .line 231
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mSessionID:I

    .line 232
    return-void
.end method

.method public setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V
    .locals 0
    .param p1, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    .line 215
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    .line 216
    return-void
.end method

.method public setStreamId(I)V
    .locals 0
    .param p1, "streamId"    # I

    .line 275
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mStreamId:I

    .line 276
    return-void
.end method

.method public setTextEvent(I)V
    .locals 0
    .param p1, "textEvent"    # I

    .line 323
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mTextEvent:I

    .line 324
    return-void
.end method

.method public setVideoEvent(I)V
    .locals 0
    .param p1, "videoEvent"    # I

    .line 319
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mVideoEvent:I

    .line 320
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 395
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mWidth:I

    .line 396
    return-void
.end method
