.class public Lcom/sec/sve/ISecVideoEngineService$Default;
.super Ljava/lang/Object;
.source "ISecVideoEngineService.java"

# interfaces
.implements Lcom/sec/sve/ISecVideoEngineService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/ISecVideoEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 451
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindToNetwork(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public cpveStartInjection(Ljava/lang/String;I)I
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "samplingRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public cpveStopInjection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportingCameraMotor()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/sve/ICmcMediaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    return-void
.end method

.method public registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/sve/IImsMediaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    return-void
.end method

.method public saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "mno"    # I
    .param p3, "localIp"    # Ljava/lang/String;
    .param p4, "localPort"    # I
    .param p5, "remoteIp"    # Ljava/lang/String;
    .param p6, "remotePort"    # I
    .param p7, "localRTCPPort"    # I
    .param p8, "remoteRTCPPort"    # I
    .param p9, "pdn"    # Ljava/lang/String;
    .param p10, "xqEnabled"    # Z
    .param p11, "ttyChannel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public saeDeleteChannel(I)I
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public saeEnableSRTP(III[BI)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "profile"    # I
    .param p4, "key"    # [B
    .param p5, "keylen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public saeGetAudioRxTrackId(I)I
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public saeGetVersion([BI)I
    .locals 1
    .param p1, "version"    # [B
    .param p2, "bufflen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public saeHandleDtmf(IIII)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "code"    # I
    .param p3, "mode"    # I
    .param p4, "operation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public saeInitialize(III)V
    .locals 0
    .param p1, "convertedMno"    # I
    .param p2, "dtmfMode"    # I
    .param p3, "sas"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public saeModifyChannel(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public saeSetAudioPath(II)I
    .locals 1
    .param p1, "dir_in"    # I
    .param p2, "dir_out"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "rx_type"    # I
    .param p5, "freq"    # I
    .param p6, "bitrate"    # I
    .param p7, "ptime"    # I
    .param p8, "maxptime"    # I
    .param p9, "octectAligned"    # Z
    .param p10, "mode_set"    # I
    .param p11, "nchannel"    # I
    .param p12, "dtxEnable"    # I
    .param p13, "red_level"    # I
    .param p14, "red_pt"    # I
    .param p15, "dtx"    # C
    .param p16, "dtxRecv"    # C
    .param p17, "hfOnly"    # C
    .param p18, "evsModeSwitch"    # C
    .param p19, "chSend"    # C
    .param p20, "chRecv"    # C
    .param p21, "chAwareRecv"    # I
    .param p22, "cmr"    # I
    .param p23, "brSendMin"    # Ljava/lang/String;
    .param p24, "brSendMax"    # Ljava/lang/String;
    .param p25, "brRecvMin"    # Ljava/lang/String;
    .param p26, "brRecvMax"    # Ljava/lang/String;
    .param p27, "sendBwRange"    # Ljava/lang/String;
    .param p28, "recvBwRange"    # Ljava/lang/String;
    .param p29, "defaultBr"    # Ljava/lang/String;
    .param p30, "defaultBw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public saeSetDtmfCodecInfo(IIIII)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "type"    # I
    .param p3, "rxtype"    # I
    .param p4, "bitrate"    # I
    .param p5, "inband"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public saeSetRtcpOnCall(III)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "rr"    # I
    .param p3, "rs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public saeSetRtcpTimeout(IJ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "sec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public saeSetRtcpXr(IIIII[I)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "flag"    # I
    .param p3, "blocks"    # I
    .param p4, "statflags"    # I
    .param p5, "rttmode"    # I
    .param p6, "maxsizesInt"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public saeSetRtpTimeout(IJ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "sec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public saeSetTOS(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "tos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public saeSetVoicePlayDelay(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "delayTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public saeStartChannel(IIZ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "enableIpv6"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public saeStartRecording(IIIZ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "samplingRate"    # I
    .param p4, "bIsApVoice"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public saeStopChannel(I)I
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public saeStopRecording(IZ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "bIsApVoice"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public saeTerminate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "dir"    # I
    .param p3, "localIp"    # Ljava/lang/String;
    .param p4, "localPort"    # I
    .param p5, "remoteIp"    # Ljava/lang/String;
    .param p6, "remotePort"    # I
    .param p7, "localRTCPPort"    # I
    .param p8, "remoteRTCPPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "enable"    # Z
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "frameSize"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;I)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public setPreviewResolution(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;I)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public setZoom(F)V
    .locals 0
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public sreCreateRelayChannel(II)I
    .locals 1
    .param p1, "lhs_stream"    # I
    .param p2, "rhs_stream"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "mno"    # I
    .param p4, "localIp"    # Ljava/lang/String;
    .param p5, "localPort"    # I
    .param p6, "remoteIp"    # Ljava/lang/String;
    .param p7, "remotePort"    # I
    .param p8, "isIpv6"    # Z
    .param p9, "isMdmn"    # Z
    .param p10, "localRTCPPort"    # I
    .param p11, "remoteRTCPPort"    # I
    .param p12, "pdn"    # Ljava/lang/String;
    .param p13, "xqEnabled"    # Z
    .param p14, "ttyChannel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public sreDeleteRelayChannel(I)I
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public sreDeleteStream(I)I
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public sreEnableSRTP(III[BI)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "direction"    # I
    .param p3, "profile"    # I
    .param p4, "key"    # [B
    .param p5, "keylen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public sreGetMdmn(I)Z
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public sreGetVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public sreHoldRelayChannel(I)I
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public sreInitialize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    return-void
.end method

.method public sreResumeRelayChannel(I)I
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "rx_type"    # I
    .param p5, "freq"    # I
    .param p6, "bitrate"    # I
    .param p7, "ptime"    # I
    .param p8, "maxptime"    # I
    .param p9, "octectAligned"    # Z
    .param p10, "mode_set"    # I
    .param p11, "nchannel"    # I
    .param p12, "dtxEnable"    # I
    .param p13, "red_level"    # I
    .param p14, "red_pt"    # I
    .param p15, "dtx"    # C
    .param p16, "dtxRecv"    # C
    .param p17, "hfOnly"    # C
    .param p18, "evsModeSwitch"    # C
    .param p19, "chSend"    # C
    .param p20, "chRecv"    # C
    .param p21, "chAwareRecv"    # I
    .param p22, "cmr"    # I
    .param p23, "brSendMin"    # Ljava/lang/String;
    .param p24, "brSendMax"    # Ljava/lang/String;
    .param p25, "brRecvMin"    # Ljava/lang/String;
    .param p26, "brRecvMax"    # Ljava/lang/String;
    .param p27, "sendBwRange"    # Ljava/lang/String;
    .param p28, "recvBwRange"    # Ljava/lang/String;
    .param p29, "defaultBr"    # Ljava/lang/String;
    .param p30, "defaultBw"    # Ljava/lang/String;
    .param p31, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "localIp"    # Ljava/lang/String;
    .param p3, "localPort"    # I
    .param p4, "remoteIp"    # Ljava/lang/String;
    .param p5, "remotePort"    # I
    .param p6, "localRTCPPort"    # I
    .param p7, "remoteRTCPPort"    # I
    .param p8, "crbtType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public sreSetDtmfCodecInfo(IIIIII)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "type"    # I
    .param p4, "rxtype"    # I
    .param p5, "bitrate"    # I
    .param p6, "inband"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public sreSetMdmn(IZ)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "isMdmn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public sreSetNetId(IJ)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "netId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public sreSetRtcpOnCall(IIIII)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "rr"    # I
    .param p3, "rs"    # I
    .param p4, "rtpTimer"    # I
    .param p5, "rtcpTimer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public sreSetRtcpTimeout(II)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "sec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public sreSetRtcpXr(IIIII[I)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "flag"    # I
    .param p3, "blocks"    # I
    .param p4, "statflags"    # I
    .param p5, "rttmode"    # I
    .param p6, "maxsizesInt"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public sreSetRtpTimeout(II)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "sec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public sreStartRecording(III)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "streamId"    # I
    .param p3, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public sreStartRelayChannel(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public sreStartStream(III)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "oldDirection"    # I
    .param p3, "newDirection"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public sreStopRecording(II)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public sreStopRelayChannel(I)I
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public sreUpdateRelayChannel(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "stream"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public sreUpdateStream(I)I
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 1
    .param p1, "mno"    # I
    .param p2, "localIp"    # Ljava/lang/String;
    .param p3, "localPort"    # I
    .param p4, "remoteIp"    # Ljava/lang/String;
    .param p5, "remotePort"    # I
    .param p6, "localRTCPPort"    # I
    .param p7, "remoteRTCPPort"    # I
    .param p8, "pdn"    # Ljava/lang/String;
    .param p9, "xqEnabled"    # Z
    .param p10, "ttyChannel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public steDeleteChannel(I)I
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public steEnableSRTP(III[BI)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "profile"    # I
    .param p4, "key"    # [B
    .param p5, "keylen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public steInitialize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    return-void
.end method

.method public steModifyChannel(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public steSendText(ILjava/lang/String;I)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public steSetCallOptions(IZ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "isRtcpOnCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "rx_type"    # I
    .param p5, "freq"    # I
    .param p6, "bitrate"    # I
    .param p7, "ptime"    # I
    .param p8, "maxptime"    # I
    .param p9, "octectAligned"    # Z
    .param p10, "mode_set"    # I
    .param p11, "nchannel"    # I
    .param p12, "dtxEnable"    # I
    .param p13, "red_level"    # I
    .param p14, "red_pt"    # I
    .param p15, "dtx"    # C
    .param p16, "dtxRecv"    # C
    .param p17, "hfOnly"    # C
    .param p18, "evsModeSwitch"    # C
    .param p19, "chSend"    # C
    .param p20, "chRecv"    # C
    .param p21, "chAwareRecv"    # I
    .param p22, "cmr"    # I
    .param p23, "brSendMin"    # Ljava/lang/String;
    .param p24, "brSendMax"    # Ljava/lang/String;
    .param p25, "brRecvMin"    # Ljava/lang/String;
    .param p26, "brRecvMax"    # Ljava/lang/String;
    .param p27, "sendBwRange"    # Ljava/lang/String;
    .param p28, "recvBwRange"    # Ljava/lang/String;
    .param p29, "defaultBr"    # Ljava/lang/String;
    .param p30, "defaultBw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public steSetNetId(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public steSetRtcpOnCall(III)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "rr"    # I
    .param p3, "rs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public steSetRtcpTimeout(IJ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "sec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public steSetRtcpXr(IIIII[I)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "flag"    # I
    .param p3, "blocks"    # I
    .param p4, "statflags"    # I
    .param p5, "rttmode"    # I
    .param p6, "maxsizesInt"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public steSetRtpTimeout(IJ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "sec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public steSetSessionId(II)I
    .locals 1
    .param p1, "channelId"    # I
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public steStartChannel(IIZ)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "enableIpv6"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public steStopChannel(I)I
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "dir"    # I
    .param p3, "localIp"    # Ljava/lang/String;
    .param p4, "localPort"    # I
    .param p5, "remoteIp"    # Ljava/lang/String;
    .param p6, "remotePort"    # I
    .param p7, "localRTCPPort"    # I
    .param p8, "remoteRTCPPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "audioId"    # I
    .param p3, "audioSampleRate"    # I
    .param p4, "audioCodec"    # Ljava/lang/String;
    .param p5, "audioSource"    # I
    .param p6, "outputFormat"    # I
    .param p7, "maxFileSize"    # J
    .param p9, "maxDuration"    # I
    .param p10, "outputPath"    # Ljava/lang/String;
    .param p11, "audioEncodingBR"    # I
    .param p12, "audioChannels"    # I
    .param p13, "audioSamplingR"    # I
    .param p14, "audioEncoder"    # I
    .param p15, "durationInterval"    # I
    .param p16, "fileSizeInterval"    # J
    .param p18, "author"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public sveCreateChannel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public sveGetCodecCapacity(I)Ljava/lang/String;
    .locals 1
    .param p1, "codecMaxLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "audioId"    # I
    .param p4, "audioSampleRate"    # I
    .param p5, "audioCodec"    # Ljava/lang/String;
    .param p6, "videoId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public sveRecorderDelete(I)I
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public sveRecorderStart(I)I
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public sveRecorderStop(IZ)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "saveFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public sveRestartEmoji(I)V
    .locals 0
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    return-void
.end method

.method public sveSendGeneralEvent(IIILjava/lang/String;)I
    .locals 1
    .param p1, "event"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "as"    # I
    .param p3, "rs"    # I
    .param p4, "rr"    # I
    .param p5, "recvCodecPT"    # I
    .param p6, "sendCodecPT"    # I
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "dir"    # I
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "frameRate"    # I
    .param p12, "maxBitrate"    # I
    .param p13, "enableAVPF"    # Z
    .param p14, "supportAVPFType"    # I
    .param p15, "enableOrientation"    # Z
    .param p16, "CVOGranularity"    # I
    .param p17, "H264Profile"    # I
    .param p18, "H264Level"    # I
    .param p19, "H264ConstraintInfo"    # I
    .param p20, "H264PackMode"    # I
    .param p21, "sps"    # [B
    .param p22, "pps"    # [B
    .param p23, "vps"    # [B
    .param p24, "spsLen"    # I
    .param p25, "ppsLen"    # I
    .param p26, "vpsLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "localIp"    # Ljava/lang/String;
    .param p3, "localPort"    # I
    .param p4, "remoteIp"    # Ljava/lang/String;
    .param p5, "remotePort"    # I
    .param p6, "localRTCPPort"    # I
    .param p7, "remoteRTCPPort"    # I
    .param p8, "crbtType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public sveSetGcmSrtpParams(IIIICI[BI[BI)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "srtpProfile"    # I
    .param p3, "keyId"    # I
    .param p4, "keytype"    # I
    .param p5, "csId"    # C
    .param p6, "csbIdValue"    # I
    .param p7, "inkey"    # [B
    .param p8, "inkeyLength"    # I
    .param p9, "rand"    # [B
    .param p10, "randLengthValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public sveSetHeldInfo(IZZ)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "isLocal"    # Z
    .param p3, "isHeld"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public sveSetMediaConfig(IZIZIIII)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "timeOutOnBoth"    # Z
    .param p3, "rtpTimeout"    # I
    .param p4, "rtpKeepAlive"    # Z
    .param p5, "rtcpTimeout"    # I
    .param p6, "mtuSize"    # I
    .param p7, "mno"    # I
    .param p8, "keepAliveInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public sveSetNetworkQoS(IIII)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "ul_bler"    # I
    .param p3, "dl_bler"    # I
    .param p4, "grant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "offerSuite"    # Ljava/lang/String;
    .param p3, "aucTagKeyLocal"    # [B
    .param p4, "sendKeySize"    # I
    .param p5, "ucTagKeyLenLocal"    # I
    .param p6, "uiTimetoLiveLocal"    # I
    .param p7, "uiMKILocal"    # I
    .param p8, "answerSuite"    # Ljava/lang/String;
    .param p9, "aucTagKeyRemote"    # [B
    .param p10, "recvKeySize"    # I
    .param p11, "ucTagKeyLenRemote"    # I
    .param p12, "uiTimetoLiveRemote"    # I
    .param p13, "uiMKIRemote"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public sveSetVideoPlayDelay(II)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "delayTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public sveStartCamera(II)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public sveStartChannel(III)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "oldDirection"    # I
    .param p3, "newDirection"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public sveStartEmoji(ILjava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "effect"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    return-void
.end method

.method public sveStartRecording(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public sveStopCamera()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public sveStopChannel(I)I
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public sveStopEmoji(I)V
    .locals 0
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    return-void
.end method

.method public sveStopRecording(I)I
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public switchCamera()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/sve/ICmcMediaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    return-void
.end method

.method public unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/sve/IImsMediaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    return-void
.end method
