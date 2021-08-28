.class public Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
.super Ljava/lang/Object;
.source "CallProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/CallProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field amrBeMaxRed:I

.field amrBeWbMaxRed:I

.field amrMode:Ljava/lang/String;

.field amrOaMaxRed:I

.field amrOaPayloadType:I

.field amrOaWbMaxRed:I

.field amrOpenPayloadType:I

.field amrPayloadType:I

.field amrWbMode:Ljava/lang/String;

.field amrWbOaPayloadType:I

.field amrWbPayloadType:I

.field audioAs:I

.field audioAvpf:Z

.field audioCodec:Ljava/lang/String;

.field audioDscp:I

.field audioPort:I

.field audioRr:I

.field audioRs:I

.field audioRtcpXr:Z

.field audioSrtp:Z

.field displayFormat:Ljava/lang/String;

.field displayFormatHevc:Ljava/lang/String;

.field dtmfMode:I

.field dtmfPayloadType:I

.field dtmfWbPayloadType:I

.field enableAvSync:Z

.field enableEvsCodec:Z

.field enableRtcpOnActiveCall:Z

.field enableScr:Z

.field evs2ndPayload:I

.field evsBandwidthReceive:Ljava/lang/String;

.field evsBandwidthReceiveExt:Ljava/lang/String;

.field evsBandwidthSend:Ljava/lang/String;

.field evsBandwidthSendExt:Ljava/lang/String;

.field evsBitRateReceive:Ljava/lang/String;

.field evsBitRateReceiveExt:Ljava/lang/String;

.field evsBitRateSend:Ljava/lang/String;

.field evsBitRateSendExt:Ljava/lang/String;

.field evsChannelAwareReceive:Ljava/lang/String;

.field evsChannelRecv:Ljava/lang/String;

.field evsChannelSend:Ljava/lang/String;

.field evsCodecModeRequest:Ljava/lang/String;

.field evsDefaultBandwidth:Ljava/lang/String;

.field evsDefaultBitrate:Ljava/lang/String;

.field evsDiscontinuousTransmission:Ljava/lang/String;

.field evsDtxRecv:Ljava/lang/String;

.field evsHeaderFull:Ljava/lang/String;

.field evsLimitedCodec:Ljava/lang/String;

.field evsMaxRed:I

.field evsModeSwitch:Ljava/lang/String;

.field evsPayload:I

.field evsPayloadExt:I

.field frameRate:I

.field h263QcifPayloadType:I

.field h264720pLPayloadType:I

.field h264720pPayloadType:I

.field h264CifLPayloadType:I

.field h264CifPayloadType:I

.field h264QvgaLPayloadType:I

.field h264QvgaPayloadType:I

.field h264VgaLPayloadType:I

.field h264VgaPayloadType:I

.field h265Hd720pLPayloadType:I

.field h265Hd720pPayloadType:I

.field h265QvgaLPayloadType:I

.field h265QvgaPayloadType:I

.field h265VgaLPayloadType:I

.field h265VgaPayloadType:I

.field ignoreRtcpTimeoutOnHoldCall:Z

.field maxPTime:I

.field pTime:I

.field packetizationMode:Ljava/lang/String;

.field rtcpTimeout:I

.field rtpTimeout:I

.field textAs:I

.field textAvpf:Z

.field textPort:I

.field textRr:I

.field textRs:I

.field textSrtp:Z

.field videoAs:I

.field videoAvpf:Z

.field videoCapabilities:Z

.field videoCodec:Ljava/lang/String;

.field videoPort:I

.field videoRr:I

.field videoRs:I

.field videoRtcpXr:Z

.field videoSrtp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->pTime:I

    .line 235
    const/16 v0, 0xf0

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->maxPTime:I

    return-void
.end method

.method public static newBuilder()Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 1

    .line 306
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .locals 1

    .line 310
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile;-><init>(Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;)V

    return-object v0
.end method

.method public setAmrBeMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "amrBeMaxRed"    # I

    .line 369
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrBeMaxRed:I

    .line 370
    return-object p0
.end method

.method public setAmrBeWbMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "amrBeWbMaxRed"    # I

    .line 379
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrBeWbMaxRed:I

    .line 380
    return-object p0
.end method

.method public setAmrMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "amrMode"    # Ljava/lang/String;

    .line 389
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrMode:Ljava/lang/String;

    .line 390
    return-object p0
.end method

.method public setAmrOaMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "amrOaMaxRed"    # I

    .line 364
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOaMaxRed:I

    .line 365
    return-object p0
.end method

.method public setAmrOaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "amrOaPayloadType"    # I

    .line 334
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOaPayloadType:I

    .line 335
    return-object p0
.end method

.method public setAmrOaWbMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "amrOaWbMaxRed"    # I

    .line 374
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOaWbMaxRed:I

    .line 375
    return-object p0
.end method

.method public setAmrOpenPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "amrOpenPayloadType"    # I

    .line 349
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOpenPayloadType:I

    .line 350
    return-object p0
.end method

.method public setAmrPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "amrPayloadType"    # I

    .line 329
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrPayloadType:I

    .line 330
    return-object p0
.end method

.method public setAmrWbMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "amrWbMode"    # Ljava/lang/String;

    .line 394
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrWbMode:Ljava/lang/String;

    .line 395
    return-object p0
.end method

.method public setAmrWbOaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "amrWbOaPayloadType"    # I

    .line 344
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrWbOaPayloadType:I

    .line 345
    return-object p0
.end method

.method public setAmrWbPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "amrWbPayloadType"    # I

    .line 339
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrWbPayloadType:I

    .line 340
    return-object p0
.end method

.method public setAudioAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "audioAs"    # I

    .line 399
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioAs:I

    .line 400
    return-object p0
.end method

.method public setAudioAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "audioAvpf"    # Z

    .line 544
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioAvpf:Z

    .line 545
    return-object p0
.end method

.method public setAudioCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "audioCodec"    # Ljava/lang/String;

    .line 314
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioCodec:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public setAudioDscp(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "audioDscp"    # I

    .line 324
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioDscp:I

    .line 325
    return-object p0
.end method

.method public setAudioPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "audioPort"    # I

    .line 319
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioPort:I

    .line 320
    return-object p0
.end method

.method public setAudioRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "audioRr"    # I

    .line 409
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioRr:I

    .line 410
    return-object p0
.end method

.method public setAudioRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "audioRs"    # I

    .line 404
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioRs:I

    .line 405
    return-object p0
.end method

.method public setAudioRtcpXr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "audioRtcpXr"    # Z

    .line 629
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioRtcpXr:Z

    .line 630
    return-object p0
.end method

.method public setAudioSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "audioSrtp"    # Z

    .line 549
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioSrtp:Z

    .line 550
    return-object p0
.end method

.method public setDisplayFormat(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "displayFormat"    # Ljava/lang/String;

    .line 439
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->displayFormat:Ljava/lang/String;

    .line 440
    return-object p0
.end method

.method public setDisplayFormatHevc(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "displayFormatHevc"    # Ljava/lang/String;

    .line 444
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->displayFormatHevc:Ljava/lang/String;

    .line 445
    return-object p0
.end method

.method public setDtmfMode(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "dtmfMode"    # I

    .line 639
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->dtmfMode:I

    .line 640
    return-object p0
.end method

.method public setDtmfPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "dtmfPayloadType"    # I

    .line 359
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->dtmfPayloadType:I

    .line 360
    return-object p0
.end method

.method public setDtmfWbPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "dtmfWbPayloadType"    # I

    .line 354
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->dtmfWbPayloadType:I

    .line 355
    return-object p0
.end method

.method public setEnableAvSync(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "enableAvSync"    # Z

    .line 619
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableAvSync:Z

    .line 620
    return-object p0
.end method

.method public setEnableEvsCodec(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "enableEvsCodec"    # Z

    .line 644
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableEvsCodec:Z

    .line 645
    return-object p0
.end method

.method public setEnableRtcpOnActiveCall(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "enableRtcpOnActiveCall"    # Z

    .line 614
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableRtcpOnActiveCall:Z

    .line 615
    return-object p0
.end method

.method public setEnableScr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "enableScr"    # Z

    .line 624
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableScr:Z

    .line 625
    return-object p0
.end method

.method public setEvs2ndPayload(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evs2ndPayload"    # I

    .line 714
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evs2ndPayload:I

    .line 715
    return-object p0
.end method

.method public setEvsBandwidthReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsBandwidthReceive"    # Ljava/lang/String;

    .line 704
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthReceive:Ljava/lang/String;

    .line 705
    return-object p0
.end method

.method public setEvsBandwidthReceiveExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsBandwidthReceiveExt"    # Ljava/lang/String;

    .line 749
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthReceiveExt:Ljava/lang/String;

    .line 750
    return-object p0
.end method

.method public setEvsBandwidthSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsBandwidthSend"    # Ljava/lang/String;

    .line 699
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthSend:Ljava/lang/String;

    .line 700
    return-object p0
.end method

.method public setEvsBandwidthSendExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsBandwidthSendExt"    # Ljava/lang/String;

    .line 744
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthSendExt:Ljava/lang/String;

    .line 745
    return-object p0
.end method

.method public setEvsBitRateReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsBitRateReceive"    # Ljava/lang/String;

    .line 694
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateReceive:Ljava/lang/String;

    .line 695
    return-object p0
.end method

.method public setEvsBitRateReceiveExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsBitRateReceiveExt"    # Ljava/lang/String;

    .line 739
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateReceiveExt:Ljava/lang/String;

    .line 740
    return-object p0
.end method

.method public setEvsBitRateSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsBitRateSend"    # Ljava/lang/String;

    .line 689
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateSend:Ljava/lang/String;

    .line 690
    return-object p0
.end method

.method public setEvsBitRateSendExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsBitRateSendExt"    # Ljava/lang/String;

    .line 734
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateSendExt:Ljava/lang/String;

    .line 735
    return-object p0
.end method

.method public setEvsChannelAwareReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsChannelAwareReceive"    # Ljava/lang/String;

    .line 679
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsChannelAwareReceive:Ljava/lang/String;

    .line 680
    return-object p0
.end method

.method public setEvsChannelRecv(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsChannelRecv"    # Ljava/lang/String;

    .line 674
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsChannelRecv:Ljava/lang/String;

    .line 675
    return-object p0
.end method

.method public setEvsChannelSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsChannelSend"    # Ljava/lang/String;

    .line 669
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsChannelSend:Ljava/lang/String;

    .line 670
    return-object p0
.end method

.method public setEvsCodecModeRequest(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsCodecModeRequest"    # Ljava/lang/String;

    .line 684
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsCodecModeRequest:Ljava/lang/String;

    .line 685
    return-object p0
.end method

.method public setEvsDefaultBandwidth(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsDefaultBandwidth"    # Ljava/lang/String;

    .line 719
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDefaultBandwidth:Ljava/lang/String;

    .line 720
    return-object p0
.end method

.method public setEvsDefaultBitrate(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsDefaultBitrate"    # Ljava/lang/String;

    .line 724
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDefaultBitrate:Ljava/lang/String;

    .line 725
    return-object p0
.end method

.method public setEvsDiscontinuousTransmission(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsDiscontinuousTransmission"    # Ljava/lang/String;

    .line 649
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDiscontinuousTransmission:Ljava/lang/String;

    .line 650
    return-object p0
.end method

.method public setEvsDtxRecv(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsDtxRecv"    # Ljava/lang/String;

    .line 654
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDtxRecv:Ljava/lang/String;

    .line 655
    return-object p0
.end method

.method public setEvsHeaderFull(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsHeaderFull"    # Ljava/lang/String;

    .line 659
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsHeaderFull:Ljava/lang/String;

    .line 660
    return-object p0
.end method

.method public setEvsLimitedCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsLimitedCodec"    # Ljava/lang/String;

    .line 754
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsLimitedCodec:Ljava/lang/String;

    .line 755
    return-object p0
.end method

.method public setEvsMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsMaxRed"    # I

    .line 384
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsMaxRed:I

    .line 385
    return-object p0
.end method

.method public setEvsModeSwitch(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsModeSwitch"    # Ljava/lang/String;

    .line 664
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsModeSwitch:Ljava/lang/String;

    .line 665
    return-object p0
.end method

.method public setEvsPayload(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsPayload"    # I

    .line 709
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsPayload:I

    .line 710
    return-object p0
.end method

.method public setEvsPayloadExt(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "evsPayloadExt"    # I

    .line 729
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsPayloadExt:I

    .line 730
    return-object p0
.end method

.method public setFrameRate(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "frameRate"    # I

    .line 434
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->frameRate:I

    .line 435
    return-object p0
.end method

.method public setH263QcifPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h263QcifPayloadType"    # I

    .line 524
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h263QcifPayloadType:I

    .line 525
    return-object p0
.end method

.method public setH264720pLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h264720pLPayloadType"    # I

    .line 489
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264720pLPayloadType:I

    .line 490
    return-object p0
.end method

.method public setH264720pPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h264720pPayloadType"    # I

    .line 484
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264720pPayloadType:I

    .line 485
    return-object p0
.end method

.method public setH264CifLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h264CifLPayloadType"    # I

    .line 519
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264CifLPayloadType:I

    .line 520
    return-object p0
.end method

.method public setH264CifPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h264CifPayloadType"    # I

    .line 514
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264CifPayloadType:I

    .line 515
    return-object p0
.end method

.method public setH264QvgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h264QvgaLPayloadType"    # I

    .line 509
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264QvgaLPayloadType:I

    .line 510
    return-object p0
.end method

.method public setH264QvgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h264QvgaPayloadType"    # I

    .line 504
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264QvgaPayloadType:I

    .line 505
    return-object p0
.end method

.method public setH264VgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h264VgaLPayloadType"    # I

    .line 499
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264VgaLPayloadType:I

    .line 500
    return-object p0
.end method

.method public setH264VgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h264VgaPayloadType"    # I

    .line 494
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264VgaPayloadType:I

    .line 495
    return-object p0
.end method

.method public setH265Hd720pLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h265Hd720pLPayloadType"    # I

    .line 479
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265Hd720pLPayloadType:I

    .line 480
    return-object p0
.end method

.method public setH265Hd720pPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h265Hd720pPayloadType"    # I

    .line 474
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265Hd720pPayloadType:I

    .line 475
    return-object p0
.end method

.method public setH265QvgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h265QvgaLPayloadType"    # I

    .line 459
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265QvgaLPayloadType:I

    .line 460
    return-object p0
.end method

.method public setH265QvgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h265QvgaPayloadType"    # I

    .line 454
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265QvgaPayloadType:I

    .line 455
    return-object p0
.end method

.method public setH265VgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h265VgaLPayloadType"    # I

    .line 469
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265VgaLPayloadType:I

    .line 470
    return-object p0
.end method

.method public setH265VgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "h265VgaPayloadType"    # I

    .line 464
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265VgaPayloadType:I

    .line 465
    return-object p0
.end method

.method public setIgnoreRtcpTimeoutOnHoldCall(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "ignoreRtcpTimeoutOnHoldCall"    # Z

    .line 609
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->ignoreRtcpTimeoutOnHoldCall:Z

    .line 610
    return-object p0
.end method

.method public setMaxPTime(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "maxPTime"    # I

    .line 419
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->maxPTime:I

    .line 420
    return-object p0
.end method

.method public setPTime(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "pTime"    # I

    .line 414
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->pTime:I

    .line 415
    return-object p0
.end method

.method public setPacketizationMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "packetizationMode"    # Ljava/lang/String;

    .line 449
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->packetizationMode:Ljava/lang/String;

    .line 450
    return-object p0
.end method

.method public setRtcpTimeout(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "rtcpTimeout"    # I

    .line 604
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->rtcpTimeout:I

    .line 605
    return-object p0
.end method

.method public setRtpTimeout(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "rtpTimeout"    # I

    .line 599
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->rtpTimeout:I

    .line 600
    return-object p0
.end method

.method public setTextAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "textAs"    # I

    .line 579
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textAs:I

    .line 580
    return-object p0
.end method

.method public setTextAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "textAvpf"    # Z

    .line 564
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textAvpf:Z

    .line 565
    return-object p0
.end method

.method public setTextPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "textPort"    # I

    .line 594
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textPort:I

    .line 595
    return-object p0
.end method

.method public setTextRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "textRr"    # I

    .line 589
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textRr:I

    .line 590
    return-object p0
.end method

.method public setTextRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "textRs"    # I

    .line 584
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textRs:I

    .line 585
    return-object p0
.end method

.method public setTextSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "textSrtp"    # Z

    .line 569
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textSrtp:Z

    .line 570
    return-object p0
.end method

.method public setVideoAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "videoAs"    # I

    .line 529
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoAs:I

    .line 530
    return-object p0
.end method

.method public setVideoAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "videoAvpf"    # Z

    .line 554
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoAvpf:Z

    .line 555
    return-object p0
.end method

.method public setVideoCapabilities(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "videoCapabilities"    # Z

    .line 574
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoCapabilities:Z

    .line 575
    return-object p0
.end method

.method public setVideoCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "videoCodec"    # Ljava/lang/String;

    .line 424
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoCodec:Ljava/lang/String;

    .line 425
    return-object p0
.end method

.method public setVideoPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "videoPort"    # I

    .line 429
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoPort:I

    .line 430
    return-object p0
.end method

.method public setVideoRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "videoRr"    # I

    .line 539
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoRr:I

    .line 540
    return-object p0
.end method

.method public setVideoRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "videoRs"    # I

    .line 534
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoRs:I

    .line 535
    return-object p0
.end method

.method public setVideoRtcpXr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "videoRtcpXr"    # Z

    .line 634
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoRtcpXr:Z

    .line 635
    return-object p0
.end method

.method public setVideoSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0
    .param p1, "videoSrtp"    # Z

    .line 559
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoSrtp:Z

    .line 560
    return-object p0
.end method
