.class public Lcom/sec/internal/google/ImsVideoCallProviderImpl;
.super Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;
    }
.end annotation


# static fields
.field private static final EMOJI_START_FAILURE:I = 0x4b1

.field private static final EMOJI_START_SUCCESS:I = 0x4b0

.field private static final EMOJI_STOP_FAILURE:I = 0x4b3

.field private static final EMOJI_STOP_SUCCESS:I = 0x4b2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsVTProviderImpl"

.field private static final NOTIFY_DOWNGRADED:I = 0x3e9

.field private static final NOTIFY_VIDEO_RESUMED:I = 0x3e8

.field private static final RECORD_START_FAILURE:I = 0x44d

.field private static final RECORD_START_FAILURE_NO_SPACE:I = 0x456

.field private static final RECORD_START_SUCCESS:I = 0x44c

.field private static final RECORD_STOP_FAILURE:I = 0x44f

.field private static final RECORD_STOP_NO_SPACE:I = 0x457

.field private static final RECORD_STOP_SUCCESS:I = 0x44e


# instance fields
.field private mIsDummyCamera:Z

.field private mIsVideoPause:Z

.field private mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

.field private mRelay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/volte2/IVideoServiceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSession:Lcom/sec/ims/volte2/IImsCallSession;


# direct methods
.method public constructor <init>(Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sec/ims/volte2/IImsCallSession;

    .line 44
    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    .line 42
    iput-boolean v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    .line 46
    iput-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getMediaCallProvider()Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 53
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsMediaCallProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/internal/google/ImsVideoCallProviderImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    return p1
.end method

.method private convertQualityFromVideoProfile(I)I
    .locals 2
    .param p1, "quality"    # I

    .line 391
    const/16 v0, 0xd

    .line 392
    .local v0, "ret":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 401
    :cond_0
    const/16 v0, 0xc

    .line 402
    goto :goto_0

    .line 398
    :cond_1
    const/16 v0, 0xd

    .line 399
    goto :goto_0

    .line 394
    :cond_2
    const/16 v0, 0xf

    .line 395
    nop

    .line 406
    :goto_0
    return v0
.end method


# virtual methods
.method public requestCallDataUsage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 357
    return-void

    .line 360
    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->requestCallDataUsage()V

    .line 361
    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    .line 336
    .local v0, "sessionId":I
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getWidth()I

    move-result v1

    .line 337
    .local v1, "width":I
    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getHeight()I

    move-result v2

    .line 338
    .local v2, "height":I
    iget-object v3, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "videoSize":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 341
    .local v5, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    const-string v6, "LAND"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "QCIF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 342
    invoke-interface {v5, v0, v2, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_1

    .line 344
    :cond_0
    invoke-interface {v5, v0, v1, v2}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    .line 346
    .end local v5    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :goto_1
    goto :goto_0

    .line 347
    :cond_1
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 241
    monitor-enter p0

    .line 242
    if-eqz p2, :cond_9

    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 246
    :cond_0
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 247
    .local v0, "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 248
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 249
    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    .line 254
    :cond_3
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 255
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 258
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    if-nez v2, :cond_5

    .line 259
    monitor-exit p0

    return-void

    .line 262
    :cond_5
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    .line 263
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->convertQualityFromVideoProfile(I)I

    move-result v4

    .line 262
    invoke-virtual {v2, v4}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 265
    iput-boolean v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsDummyCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    if-eq v2, v4, :cond_6

    .line 269
    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const-string v3, ""

    invoke-interface {v2, v0, v1, v3}, Lcom/sec/ims/volte2/IImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V

    goto :goto_1

    .line 271
    :cond_6
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 272
    iput-boolean v3, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    .line 273
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->holdVideo()V

    goto :goto_1

    .line 274
    :cond_7
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    if-eqz v2, :cond_8

    .line 275
    iput-boolean v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    .line 276
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->resumeVideo()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :cond_8
    :goto_1
    goto :goto_2

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "ImsVTProviderImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t notify due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    .line 283
    return-void

    .line 243
    :cond_9
    :goto_3
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 292
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 296
    :cond_0
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 297
    .local v0, "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 298
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 300
    iget-boolean v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    if-eqz v2, :cond_4

    .line 301
    iput-boolean v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    .line 305
    :cond_2
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 308
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 311
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    if-nez v2, :cond_5

    .line 312
    return-void

    .line 315
    :cond_5
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    .line 316
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->convertQualityFromVideoProfile(I)I

    move-result v3

    .line 315
    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 320
    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2, v1}, Lcom/sec/ims/volte2/IImsCallSession;->reject(I)V

    goto :goto_1

    .line 322
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1, v0}, Lcom/sec/ims/volte2/IImsCallSession;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_1
    goto :goto_2

    .line 324
    :catch_0
    move-exception v1

    .line 326
    :goto_2
    return-void

    .line 293
    .end local v0    # "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_7
    :goto_3
    return-void
.end method

.method public setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/ims/internal/IImsVideoCallCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-nez v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    if-nez p1, :cond_2

    .line 69
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 70
    .local v1, "listner":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v2, v1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->unregisterForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V

    .line 71
    .end local v1    # "listner":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    monitor-enter p0

    .line 74
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 78
    :cond_2
    new-instance v0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;-><init>(Lcom/sec/internal/google/ImsVideoCallProviderImpl;Lcom/android/ims/internal/IImsVideoCallCallback;)V

    .line 79
    .local v0, "listner":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v1, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->registerForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V

    .line 81
    return-void

    .line 65
    .end local v0    # "listner":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :cond_3
    :goto_1
    return-void
.end method

.method public setCamera(Ljava/lang/String;I)V
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 97
    :cond_0
    const v0, 0x30000025

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 98
    if-nez p1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    iget-boolean v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    invoke-interface {v0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->stopCameraForProvider(Z)V

    .line 101
    iget-boolean v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    .line 104
    :cond_1
    monitor-exit p0

    return-void

    .line 107
    :cond_2
    const-string v0, "effect,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "cameraEffect":I
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v1, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setCameraEffect(I)V

    .line 110
    monitor-exit p0

    return-void

    .line 111
    .end local v0    # "cameraEffect":I
    :cond_3
    const-string/jumbo v0, "startRecord,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "filePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v1, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startRecord(Ljava/lang/String;)V

    .line 114
    monitor-exit p0

    return-void

    .line 115
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "stopRecord"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->stopRecord()V

    .line 117
    monitor-exit p0

    return-void

    .line 118
    :cond_5
    const-string v0, "filter,0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->stopEmoji(I)V

    .line 120
    monitor-exit p0

    return-void

    .line 121
    :cond_6
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startEmoji(Ljava/lang/String;)V

    .line 123
    monitor-exit p0

    return-void

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->getDefaultCameraId()I

    move-result v0

    .line 127
    .local v0, "currentCameraId":I
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 128
    .local v1, "setCameraId":I
    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    .line 129
    .local v2, "sessionId":I
    iget-object v3, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/MediaProfile;->getWidth()I

    move-result v3

    .line 130
    .local v3, "width":I
    iget-object v4, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/MediaProfile;->getHeight()I

    move-result v4

    .line 131
    .local v4, "height":I
    iget-object v5, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "videoSize":Ljava/lang/String;
    const/4 v6, 0x1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_8

    .line 134
    iput-boolean v6, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    .line 135
    iget-object v6, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6, v1}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    goto :goto_1

    .line 136
    :cond_8
    if-eq v0, v1, :cond_9

    if-eq v0, v7, :cond_9

    iget-object v7, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 137
    iget-object v6, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->switchCamera()V

    goto :goto_1

    .line 139
    :cond_9
    iget-object v7, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 140
    iget-object v7, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 141
    .local v8, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    invoke-interface {v8, v2, v6}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onCameraState(II)V

    .line 142
    .end local v8    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    goto :goto_0

    .line 144
    :cond_a
    iget-object v6, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6, v1}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    .line 148
    :goto_1
    iget-object v6, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_b

    if-nez v3, :cond_b

    if-nez v4, :cond_b

    .line 150
    const/16 v3, 0x1e0

    .line 151
    const/16 v4, 0x280

    .line 154
    :cond_b
    iget-object v6, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 155
    .local v7, "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    iget-object v8, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v8}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v8

    if-nez v8, :cond_d

    .line 156
    const-string v8, "LAND"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "QCIF"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 157
    invoke-interface {v7, v2, v4, v3}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_3

    .line 159
    :cond_c
    invoke-interface {v7, v2, v3, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    .line 162
    .end local v7    # "listener":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :cond_d
    :goto_3
    goto :goto_2

    .line 163
    .end local v0    # "currentCameraId":I
    .end local v1    # "setCameraId":I
    .end local v2    # "sessionId":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "videoSize":Ljava/lang/String;
    :cond_e
    monitor-exit p0

    .line 164
    return-void

    .line 94
    :cond_f
    :goto_4
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_0

    .line 210
    const v0, 0x3000002a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 211
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setDeviceOrientation(I)V

    .line 214
    :cond_0
    monitor-exit p0

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_1

    .line 193
    const v0, 0x30000029

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 194
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, "1"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setDisplaySurfaceForPhoneId(ILandroid/view/Surface;)V

    .line 197
    :cond_1
    monitor-exit p0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-nez v0, :cond_0

    goto :goto_1

    .line 375
    :cond_0
    const v0, 0x3000002b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 376
    if-eqz p1, :cond_1

    .line 377
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v3

    const/16 v5, 0x100

    const/4 v7, 0x0

    const-string v6, "VGA"

    move-object v4, v0

    invoke-interface/range {v2 .. v7}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendStillImage(ILjava/lang/String;ILjava/lang/String;I)V

    .line 379
    .end local v0    # "filePath":Ljava/lang/String;
    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendLiveVideo(I)V

    .line 385
    :goto_0
    return-void

    .line 372
    :cond_3
    :goto_1
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_2

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_1

    .line 176
    const v0, 0x30000028

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 177
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, "1"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setPreviewSurfaceForPhoneId(ILandroid/view/Surface;)V

    .line 180
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_2
    :goto_1
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setZoom(F)V

    .line 229
    :cond_0
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
