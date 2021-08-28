.class public abstract Lcom/sec/internal/ims/core/handler/MediaHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "MediaHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;


# instance fields
.field protected final mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 18
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 15
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 19
    return-void
.end method


# virtual methods
.method public bindToNetwork(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 186
    return-void
.end method

.method public deinitSurface(Z)V
    .locals 0
    .param p1, "isNearEnd"    # Z

    .line 123
    return-void
.end method

.method public getCameraInfo(I)V
    .locals 0
    .param p1, "id"    # I

    .line 88
    return-void
.end method

.method public getHwSupportedVideoCodecs(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "profileCodecs"    # Ljava/lang/String;

    .line 209
    return-object p1
.end method

.method public getMaxZoom()V
    .locals 0

    .line 158
    return-void
.end method

.method public getZoom()V
    .locals 0

    .line 166
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public holdVideo(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I

    .line 45
    return-void
.end method

.method public isSupportingCameraMotor()Z
    .locals 1

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public registerForMediaEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 24
    return-void
.end method

.method public requestCallDataUsage()V
    .locals 0

    .line 182
    return-void
.end method

.method public resetCameraId()V
    .locals 0

    .line 84
    return-void
.end method

.method public restartEmoji(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I

    .line 151
    return-void
.end method

.method public resumeVideo(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I

    .line 53
    return-void
.end method

.method public sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .locals 0
    .param p1, "rtpStats"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    .line 200
    return-void
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "enable"    # Z
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "frameSize"    # Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setCamera(I)V
    .locals 0
    .param p1, "id"    # I

    .line 60
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 0
    .param p1, "value"    # I

    .line 174
    return-void
.end method

.method public setDisplaySurface(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "windowHandle"    # Ljava/lang/Object;
    .param p2, "color"    # I

    .line 115
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 80
    return-void
.end method

.method public setPreviewResolution(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 178
    return-void
.end method

.method public setPreviewSurface(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "windowHandle"    # Ljava/lang/Object;
    .param p2, "color"    # I

    .line 111
    return-void
.end method

.method public setZoom(F)V
    .locals 0
    .param p1, "value"    # F

    .line 162
    return-void
.end method

.method public startCamera(III)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "cameraId"    # I

    .line 68
    return-void
.end method

.method public startCamera(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 64
    return-void
.end method

.method public startEmoji(IILjava/lang/String;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "emojiInfo"    # Ljava/lang/String;

    .line 143
    return-void
.end method

.method public startLocalRingBackTone(III)I
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I

    .line 190
    const/4 v0, -0x1

    return v0
.end method

.method public startRecord(IILjava/lang/String;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .line 131
    return-void
.end method

.method public startRender(Z)V
    .locals 0
    .param p1, "isNearEnd"    # Z

    .line 95
    return-void
.end method

.method public startVideoRenderer(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 99
    return-void
.end method

.method public stopCamera(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 72
    return-void
.end method

.method public stopEmoji(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I

    .line 147
    return-void
.end method

.method public stopLocalRingBackTone()I
    .locals 1

    .line 195
    const/4 v0, -0x1

    return v0
.end method

.method public stopRecord(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I

    .line 135
    return-void
.end method

.method public stopVideoRenderer()V
    .locals 0

    .line 103
    return-void
.end method

.method public swipeVideoSurface()V
    .locals 0

    .line 119
    return-void
.end method

.method public switchCamera()V
    .locals 0

    .line 76
    return-void
.end method

.method public unregisterForMediaEvent(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 29
    return-void
.end method
