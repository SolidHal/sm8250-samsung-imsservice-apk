.class public abstract Lcom/sec/sve/ISecVideoEngineService$Stub;
.super Landroid/os/Binder;
.source "ISecVideoEngineService.java"

# interfaces
.implements Lcom/sec/sve/ISecVideoEngineService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/ISecVideoEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.sve.ISecVideoEngineService"

.field static final TRANSACTION_bindToNetwork:I = 0xa

.field static final TRANSACTION_cpveStartInjection:I = 0x6a

.field static final TRANSACTION_cpveStopInjection:I = 0x6b

.field static final TRANSACTION_isSupportingCameraMotor:I = 0x60

.field static final TRANSACTION_onDestroy:I = 0x1

.field static final TRANSACTION_registerForCmcEventListener:I = 0x6e

.field static final TRANSACTION_registerForMediaEventListener:I = 0x6c

.field static final TRANSACTION_saeCreateChannel:I = 0xe

.field static final TRANSACTION_saeDeleteChannel:I = 0x13

.field static final TRANSACTION_saeEnableSRTP:I = 0x16

.field static final TRANSACTION_saeGetAudioRxTrackId:I = 0x1f

.field static final TRANSACTION_saeGetLastPlayedVoiceTime:I = 0x1b

.field static final TRANSACTION_saeGetVersion:I = 0x1e

.field static final TRANSACTION_saeHandleDtmf:I = 0x14

.field static final TRANSACTION_saeInitialize:I = 0xb

.field static final TRANSACTION_saeModifyChannel:I = 0x12

.field static final TRANSACTION_saeSetAudioPath:I = 0x20

.field static final TRANSACTION_saeSetCodecInfo:I = 0xd

.field static final TRANSACTION_saeSetDtmfCodecInfo:I = 0x15

.field static final TRANSACTION_saeSetRtcpOnCall:I = 0x17

.field static final TRANSACTION_saeSetRtcpTimeout:I = 0x19

.field static final TRANSACTION_saeSetRtcpXr:I = 0x1a

.field static final TRANSACTION_saeSetRtpTimeout:I = 0x18

.field static final TRANSACTION_saeSetTOS:I = 0x1d

.field static final TRANSACTION_saeSetVoicePlayDelay:I = 0x1c

.field static final TRANSACTION_saeStartChannel:I = 0xf

.field static final TRANSACTION_saeStartRecording:I = 0x66

.field static final TRANSACTION_saeStopChannel:I = 0x11

.field static final TRANSACTION_saeStopRecording:I = 0x67

.field static final TRANSACTION_saeTerminate:I = 0xc

.field static final TRANSACTION_saeUpdateChannel:I = 0x10

.field static final TRANSACTION_sendStillImage:I = 0x7

.field static final TRANSACTION_setCameraEffect:I = 0x8

.field static final TRANSACTION_setDisplaySurface:I = 0x3

.field static final TRANSACTION_setOrientation:I = 0x4

.field static final TRANSACTION_setPreviewResolution:I = 0x9

.field static final TRANSACTION_setPreviewSurface:I = 0x2

.field static final TRANSACTION_setZoom:I = 0x5

.field static final TRANSACTION_sreCreateRelayChannel:I = 0x4f

.field static final TRANSACTION_sreCreateStream:I = 0x4b

.field static final TRANSACTION_sreDeleteRelayChannel:I = 0x50

.field static final TRANSACTION_sreDeleteStream:I = 0x4d

.field static final TRANSACTION_sreEnableSRTP:I = 0x57

.field static final TRANSACTION_sreGetMdmn:I = 0x49

.field static final TRANSACTION_sreGetVersion:I = 0x47

.field static final TRANSACTION_sreHoldRelayChannel:I = 0x53

.field static final TRANSACTION_sreInitialize:I = 0x46

.field static final TRANSACTION_sreResumeRelayChannel:I = 0x54

.field static final TRANSACTION_sreSetCodecInfo:I = 0x5c

.field static final TRANSACTION_sreSetConnection:I = 0x56

.field static final TRANSACTION_sreSetDtmfCodecInfo:I = 0x5d

.field static final TRANSACTION_sreSetMdmn:I = 0x48

.field static final TRANSACTION_sreSetNetId:I = 0x4a

.field static final TRANSACTION_sreSetRtcpOnCall:I = 0x58

.field static final TRANSACTION_sreSetRtcpTimeout:I = 0x5a

.field static final TRANSACTION_sreSetRtcpXr:I = 0x5b

.field static final TRANSACTION_sreSetRtpTimeout:I = 0x59

.field static final TRANSACTION_sreStartRecording:I = 0x5e

.field static final TRANSACTION_sreStartRelayChannel:I = 0x51

.field static final TRANSACTION_sreStartStream:I = 0x4c

.field static final TRANSACTION_sreStopRecording:I = 0x5f

.field static final TRANSACTION_sreStopRelayChannel:I = 0x52

.field static final TRANSACTION_sreUpdateRelayChannel:I = 0x55

.field static final TRANSACTION_sreUpdateStream:I = 0x4e

.field static final TRANSACTION_steCreateChannel:I = 0x37

.field static final TRANSACTION_steDeleteChannel:I = 0x3c

.field static final TRANSACTION_steEnableSRTP:I = 0x3e

.field static final TRANSACTION_steInitialize:I = 0x35

.field static final TRANSACTION_steModifyChannel:I = 0x3b

.field static final TRANSACTION_steSendText:I = 0x3d

.field static final TRANSACTION_steSetCallOptions:I = 0x43

.field static final TRANSACTION_steSetCodecInfo:I = 0x36

.field static final TRANSACTION_steSetNetId:I = 0x44

.field static final TRANSACTION_steSetRtcpOnCall:I = 0x3f

.field static final TRANSACTION_steSetRtcpTimeout:I = 0x41

.field static final TRANSACTION_steSetRtcpXr:I = 0x42

.field static final TRANSACTION_steSetRtpTimeout:I = 0x40

.field static final TRANSACTION_steSetSessionId:I = 0x45

.field static final TRANSACTION_steStartChannel:I = 0x38

.field static final TRANSACTION_steStopChannel:I = 0x3a

.field static final TRANSACTION_steUpdateChannel:I = 0x39

.field static final TRANSACTION_sveCmcRecorderCreate:I = 0x62

.field static final TRANSACTION_sveCreateChannel:I = 0x21

.field static final TRANSACTION_sveGetCodecCapacity:I = 0x34

.field static final TRANSACTION_sveGetLastPlayedVideoTime:I = 0x2f

.field static final TRANSACTION_sveGetRtcpTimeInfo:I = 0x33

.field static final TRANSACTION_sveRecorderCreate:I = 0x61

.field static final TRANSACTION_sveRecorderDelete:I = 0x63

.field static final TRANSACTION_sveRecorderStart:I = 0x64

.field static final TRANSACTION_sveRecorderStop:I = 0x65

.field static final TRANSACTION_sveRestartEmoji:I = 0x2d

.field static final TRANSACTION_sveSendGeneralEvent:I = 0x32

.field static final TRANSACTION_sveSetCodecInfo:I = 0x25

.field static final TRANSACTION_sveSetConnection:I = 0x24

.field static final TRANSACTION_sveSetGcmSrtpParams:I = 0x27

.field static final TRANSACTION_sveSetHeldInfo:I = 0x2e

.field static final TRANSACTION_sveSetMediaConfig:I = 0x28

.field static final TRANSACTION_sveSetNetworkQoS:I = 0x31

.field static final TRANSACTION_sveSetSRTPParams:I = 0x26

.field static final TRANSACTION_sveSetVideoPlayDelay:I = 0x30

.field static final TRANSACTION_sveStartCamera:I = 0x29

.field static final TRANSACTION_sveStartChannel:I = 0x22

.field static final TRANSACTION_sveStartEmoji:I = 0x2b

.field static final TRANSACTION_sveStartRecording:I = 0x68

.field static final TRANSACTION_sveStopCamera:I = 0x2a

.field static final TRANSACTION_sveStopChannel:I = 0x23

.field static final TRANSACTION_sveStopEmoji:I = 0x2c

.field static final TRANSACTION_sveStopRecording:I = 0x69

.field static final TRANSACTION_switchCamera:I = 0x6

.field static final TRANSACTION_unregisterForCmcEventListener:I = 0x6f

.field static final TRANSACTION_unregisterForMediaEventListener:I = 0x6d


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 460
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 461
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/sve/ISecVideoEngineService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 469
    if-nez p0, :cond_0

    .line 470
    const/4 v0, 0x0

    return-object v0

    .line 472
    :cond_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 473
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/sve/ISecVideoEngineService;

    if-eqz v1, :cond_1

    .line 474
    move-object v1, v0

    check-cast v1, Lcom/sec/sve/ISecVideoEngineService;

    return-object v1

    .line 476
    :cond_1
    new-instance v1, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;
    .locals 1

    .line 5051
    sget-object v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->sDefaultImpl:Lcom/sec/sve/ISecVideoEngineService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/sec/sve/ISecVideoEngineService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/sec/sve/ISecVideoEngineService;

    .line 5041
    sget-object v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->sDefaultImpl:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_1

    .line 5044
    if-eqz p0, :cond_0

    .line 5045
    sput-object p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->sDefaultImpl:Lcom/sec/sve/ISecVideoEngineService;

    .line 5046
    const/4 v0, 0x1

    return v0

    .line 5048
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 5042
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 480
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 69
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    move-object/from16 v0, p0

    move/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    const-string v12, "com.sec.sve.ISecVideoEngineService"

    .line 485
    .local v12, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v15, v1, :cond_1f

    const/4 v1, 0x0

    packed-switch v15, :pswitch_data_0

    .line 2250
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 2241
    :pswitch_0
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sve/ICmcMediaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sve/ICmcMediaEventListener;

    move-result-object v1

    .line 2244
    .local v1, "_arg0":Lcom/sec/sve/ICmcMediaEventListener;
    invoke-virtual {v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V

    .line 2245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2246
    return v11

    .line 2232
    .end local v1    # "_arg0":Lcom/sec/sve/ICmcMediaEventListener;
    :pswitch_1
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sve/ICmcMediaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sve/ICmcMediaEventListener;

    move-result-object v1

    .line 2235
    .restart local v1    # "_arg0":Lcom/sec/sve/ICmcMediaEventListener;
    invoke-virtual {v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V

    .line 2236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2237
    return v11

    .line 2223
    .end local v1    # "_arg0":Lcom/sec/sve/ICmcMediaEventListener;
    :pswitch_2
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sve/IImsMediaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sve/IImsMediaEventListener;

    move-result-object v1

    .line 2226
    .local v1, "_arg0":Lcom/sec/sve/IImsMediaEventListener;
    invoke-virtual {v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V

    .line 2227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2228
    return v11

    .line 2214
    .end local v1    # "_arg0":Lcom/sec/sve/IImsMediaEventListener;
    :pswitch_3
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sve/IImsMediaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sve/IImsMediaEventListener;

    move-result-object v1

    .line 2217
    .restart local v1    # "_arg0":Lcom/sec/sve/IImsMediaEventListener;
    invoke-virtual {v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V

    .line 2218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2219
    return v11

    .line 2206
    .end local v1    # "_arg0":Lcom/sec/sve/IImsMediaEventListener;
    :pswitch_4
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2207
    invoke-virtual/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->cpveStopInjection()I

    move-result v1

    .line 2208
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2209
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    return v11

    .line 2194
    .end local v1    # "_result":I
    :pswitch_5
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2198
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2199
    .local v2, "_arg1":I
    invoke-virtual {v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->cpveStartInjection(Ljava/lang/String;I)I

    move-result v3

    .line 2200
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2201
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2202
    return v11

    .line 2184
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2187
    .local v1, "_arg0":I
    invoke-virtual {v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveStopRecording(I)I

    move-result v2

    .line 2188
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2189
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2190
    return v11

    .line 2172
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_7
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2176
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2177
    .local v2, "_arg1":I
    invoke-virtual {v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveStartRecording(II)I

    move-result v3

    .line 2178
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2179
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2180
    return v11

    .line 2160
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_8
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2164
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v11

    .line 2165
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {v0, v2, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeStopRecording(IZ)I

    move-result v3

    .line 2166
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2167
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2168
    return v11

    .line 2144
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_9
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2148
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2150
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2152
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v11

    .line 2153
    .local v1, "_arg3":Z
    :cond_1
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeStartRecording(IIIZ)I

    move-result v5

    .line 2154
    .local v5, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2155
    invoke-virtual {v13, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2156
    return v11

    .line 2132
    .end local v1    # "_arg3":Z
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_a
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2136
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v11

    .line 2137
    .local v1, "_arg1":Z
    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveRecorderStop(IZ)I

    move-result v3

    .line 2138
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2139
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2140
    return v11

    .line 2122
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_b
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2125
    .local v1, "_arg0":I
    invoke-virtual {v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveRecorderStart(I)I

    move-result v2

    .line 2126
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2127
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    return v11

    .line 2112
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_c
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2115
    .restart local v1    # "_arg0":I
    invoke-virtual {v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveRecorderDelete(I)I

    move-result v2

    .line 2116
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2117
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2118
    return v11

    .line 2072
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_d
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg0":I
    move/from16 v1, v19

    .line 2076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "_arg1":I
    move/from16 v2, v20

    .line 2078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, "_arg2":I
    move/from16 v3, v21

    .line 2080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .local v22, "_arg3":Ljava/lang/String;
    move-object/from16 v4, v22

    .line 2082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "_arg4":I
    move/from16 v5, v23

    .line 2084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .local v24, "_arg5":I
    move/from16 v6, v24

    .line 2086
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .local v25, "_arg6":J
    move-wide/from16 v7, v25

    .line 2088
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .local v27, "_arg7":I
    move/from16 v9, v27

    .line 2090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .local v28, "_arg8":Ljava/lang/String;
    move-object/from16 v10, v28

    .line 2092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .local v29, "_arg9":I
    move/from16 v11, v29

    .line 2094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    move-object/from16 v33, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v30, "_arg10":I
    .local v33, "descriptor":Ljava/lang/String;
    move/from16 v12, v30

    .line 2096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .local v31, "_arg11":I
    move/from16 v13, v31

    .line 2098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .local v34, "_arg12":I
    move/from16 v14, v34

    .line 2100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .local v35, "_arg13":I
    move/from16 v15, v35

    .line 2102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v36

    .local v36, "_arg14":J
    move-wide/from16 v16, v36

    .line 2104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .local v38, "_arg15":Ljava/lang/String;
    move-object/from16 v18, v38

    .line 2105
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v18}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I

    move-result v0

    .line 2106
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2107
    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2108
    const/4 v7, 0x1

    return v7

    .line 2052
    .end local v0    # "_result":I
    .end local v19    # "_arg0":I
    .end local v20    # "_arg1":I
    .end local v21    # "_arg2":I
    .end local v22    # "_arg3":Ljava/lang/String;
    .end local v23    # "_arg4":I
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":J
    .end local v27    # "_arg7":I
    .end local v28    # "_arg8":Ljava/lang/String;
    .end local v29    # "_arg9":I
    .end local v30    # "_arg10":I
    .end local v31    # "_arg11":I
    .end local v33    # "descriptor":Ljava/lang/String;
    .end local v34    # "_arg12":I
    .end local v35    # "_arg13":I
    .end local v36    # "_arg14":J
    .end local v38    # "_arg15":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_e
    move v7, v11

    move-object/from16 v33, v12

    move-object v8, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    move-object/from16 v15, p2

    move-object/from16 v14, v33

    .end local v33    # "descriptor":Ljava/lang/String;
    .local v14, "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2056
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2058
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2060
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2062
    .local v12, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2064
    .local v13, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2065
    .local v16, "_arg5":I
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I

    move-result v0

    .line 2066
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2067
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2068
    return v7

    .line 2044
    .end local v0    # "_result":I
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg2":I
    .end local v13    # "_arg4":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg5":I
    .local v12, "descriptor":Ljava/lang/String;
    :pswitch_f
    move v7, v11

    move-object v8, v13

    move-object v15, v14

    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2045
    invoke-virtual/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->isSupportingCameraMotor()Z

    move-result v0

    .line 2046
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2047
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2048
    return v7

    .line 2032
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_10
    move v7, v11

    move-object v8, v13

    move-object v15, v14

    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2036
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2037
    .local v1, "_arg1":I
    move-object/from16 v13, p0

    invoke-virtual {v13, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreStopRecording(II)I

    move-result v2

    .line 2038
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2039
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2040
    return v7

    .line 2018
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_11
    move v7, v11

    move-object v8, v13

    move-object v15, v14

    move-object v13, v0

    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2022
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2024
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2025
    .local v2, "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreStartRecording(III)I

    move-result v3

    .line 2026
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2027
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2028
    return v7

    .line 1998
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_12
    move v7, v11

    move-object v8, v13

    move-object v15, v14

    move-object v13, v0

    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2002
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2004
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2006
    .restart local v11    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2008
    .local v12, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2010
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2011
    .local v17, "_arg5":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreSetDtmfCodecInfo(IIIIII)I

    move-result v0

    .line 2012
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2013
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2014
    return v7

    .line 1928
    .end local v0    # "_result":I
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":I
    .local v12, "descriptor":Ljava/lang/String;
    :pswitch_13
    move v7, v11

    move-object v8, v13

    move-object v15, v14

    move-object v13, v0

    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 1932
    .local v32, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1934
    .local v33, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1936
    .local v34, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 1938
    .local v35, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1940
    .local v36, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 1942
    .local v37, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 1944
    .local v38, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 1946
    .local v39, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v9, v7

    goto :goto_0

    :cond_3
    move v9, v1

    .line 1948
    .local v9, "_arg8":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .local v40, "_arg9":I
    move/from16 v10, v40

    .line 1950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .local v41, "_arg10":I
    move/from16 v11, v41

    .line 1952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .local v42, "_arg11":I
    move/from16 v12, v42

    .line 1954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move-object v6, v13

    .local v43, "_arg12":I
    move/from16 v13, v43

    .line 1956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    move-object v5, v14

    .end local v14    # "descriptor":Ljava/lang/String;
    .local v5, "descriptor":Ljava/lang/String;
    .local v44, "_arg13":I
    move/from16 v14, v44

    .line 1958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v4, v0

    move-object v3, v15

    .local v4, "_arg14":C
    move v15, v4

    .line 1960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v2, v0

    .local v2, "_arg15":C
    move/from16 v16, v2

    .line 1962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v1, v0

    .local v1, "_arg16":C
    move/from16 v17, v1

    .line 1964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    .local v0, "_arg17":C
    move/from16 v18, v0

    .line 1966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v7, v7

    .local v7, "_arg18":C
    move/from16 v19, v7

    .line 1968
    move/from16 v46, v0

    .end local v0    # "_arg17":C
    .local v46, "_arg17":C
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    .local v0, "_arg19":C
    move/from16 v20, v0

    .line 1970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .local v47, "_arg20":I
    move/from16 v21, v47

    .line 1972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .local v48, "_arg21":I
    move/from16 v22, v48

    .line 1974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .local v49, "_arg22":Ljava/lang/String;
    move-object/from16 v23, v49

    .line 1976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    .local v50, "_arg23":Ljava/lang/String;
    move-object/from16 v24, v50

    .line 1978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v51

    .local v51, "_arg24":Ljava/lang/String;
    move-object/from16 v25, v51

    .line 1980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .local v52, "_arg25":Ljava/lang/String;
    move-object/from16 v26, v52

    .line 1982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .local v53, "_arg26":Ljava/lang/String;
    move-object/from16 v27, v53

    .line 1984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .local v54, "_arg27":Ljava/lang/String;
    move-object/from16 v28, v54

    .line 1986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    .local v55, "_arg28":Ljava/lang/String;
    move-object/from16 v29, v55

    .line 1988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .local v56, "_arg29":Ljava/lang/String;
    move-object/from16 v30, v56

    .line 1990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .local v57, "_arg30":I
    move/from16 v31, v57

    .line 1991
    move/from16 v58, v0

    .end local v0    # "_arg19":C
    .local v58, "_arg19":C
    move-object/from16 v0, p0

    move/from16 v59, v1

    .end local v1    # "_arg16":C
    .local v59, "_arg16":C
    move/from16 v1, v32

    move/from16 v60, v2

    .end local v2    # "_arg15":C
    .local v60, "_arg15":C
    move-object/from16 v2, v33

    move/from16 v3, v34

    move/from16 v61, v4

    .end local v4    # "_arg14":C
    .local v61, "_arg14":C
    move/from16 v4, v35

    move-object/from16 v62, v5

    .end local v5    # "descriptor":Ljava/lang/String;
    .local v62, "descriptor":Ljava/lang/String;
    move/from16 v5, v36

    move/from16 v6, v37

    move/from16 v45, v7

    .end local v7    # "_arg18":C
    .local v45, "_arg18":C
    move/from16 v7, v38

    move/from16 v8, v39

    invoke-virtual/range {v0 .. v31}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1992
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    move-object/from16 v15, p3

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1994
    const/4 v12, 0x1

    return v12

    .line 1908
    .end local v0    # "_result":I
    .end local v9    # "_arg8":Z
    .end local v32    # "_arg0":I
    .end local v33    # "_arg1":Ljava/lang/String;
    .end local v34    # "_arg2":I
    .end local v35    # "_arg3":I
    .end local v36    # "_arg4":I
    .end local v37    # "_arg5":I
    .end local v38    # "_arg6":I
    .end local v39    # "_arg7":I
    .end local v40    # "_arg9":I
    .end local v41    # "_arg10":I
    .end local v42    # "_arg11":I
    .end local v43    # "_arg12":I
    .end local v44    # "_arg13":I
    .end local v45    # "_arg18":C
    .end local v46    # "_arg17":C
    .end local v47    # "_arg20":I
    .end local v48    # "_arg21":I
    .end local v49    # "_arg22":Ljava/lang/String;
    .end local v50    # "_arg23":Ljava/lang/String;
    .end local v51    # "_arg24":Ljava/lang/String;
    .end local v52    # "_arg25":Ljava/lang/String;
    .end local v53    # "_arg26":Ljava/lang/String;
    .end local v54    # "_arg27":Ljava/lang/String;
    .end local v55    # "_arg28":Ljava/lang/String;
    .end local v56    # "_arg29":Ljava/lang/String;
    .end local v57    # "_arg30":I
    .end local v58    # "_arg19":C
    .end local v59    # "_arg16":C
    .end local v60    # "_arg15":C
    .end local v61    # "_arg14":C
    .end local v62    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_14
    move-object/from16 v62, v12

    move-object v15, v13

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v62    # "descriptor":Ljava/lang/String;
    move-object/from16 v11, p2

    move-object/from16 v10, v62

    .end local v62    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1912
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1914
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1916
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1918
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1920
    .local v14, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    .line 1921
    .local v16, "_arg5":[I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v13

    move v5, v14

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreSetRtcpXr(IIIII[I)I

    move-result v0

    .line 1922
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1923
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1924
    return v12

    .line 1896
    .end local v0    # "_result":I
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v16    # "_arg5":[I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_15
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1900
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1901
    .local v1, "_arg1":I
    move-object/from16 v14, p0

    invoke-virtual {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreSetRtcpTimeout(II)I

    move-result v2

    .line 1902
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1903
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1904
    return v12

    .line 1884
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_16
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1888
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1889
    .restart local v1    # "_arg1":I
    invoke-virtual {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreSetRtpTimeout(II)I

    move-result v2

    .line 1890
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1891
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1892
    return v12

    .line 1866
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_17
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1870
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1872
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1874
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1876
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1877
    .local v13, "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreSetRtcpOnCall(IIIII)I

    move-result v0

    .line 1878
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1880
    return v12

    .line 1848
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v13    # "_arg4":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_18
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1852
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1854
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1856
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 1858
    .local v9, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1859
    .restart local v13    # "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreEnableSRTP(III[BI)I

    move-result v0

    .line 1860
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1861
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1862
    return v12

    .line 1824
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":[B
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v13    # "_arg4":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_19
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1828
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1830
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1832
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1834
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1836
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1838
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1840
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1841
    .local v21, "_arg7":I
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v13

    move/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v0

    .line 1842
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1843
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1844
    return v12

    .line 1812
    .end local v0    # "_result":I
    .end local v9    # "_arg0":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    .end local v21    # "_arg7":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_1a
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1816
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1817
    .restart local v1    # "_arg1":I
    invoke-virtual {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreUpdateRelayChannel(II)I

    move-result v2

    .line 1818
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1819
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1820
    return v12

    .line 1802
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_1b
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1805
    .restart local v0    # "_arg0":I
    invoke-virtual {v14, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreResumeRelayChannel(I)I

    move-result v1

    .line 1806
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1807
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1808
    return v12

    .line 1792
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1795
    .restart local v0    # "_arg0":I
    invoke-virtual {v14, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreHoldRelayChannel(I)I

    move-result v1

    .line 1796
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1797
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1798
    return v12

    .line 1782
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_1d
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1785
    .restart local v0    # "_arg0":I
    invoke-virtual {v14, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreStopRelayChannel(I)I

    move-result v1

    .line 1786
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1787
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    return v12

    .line 1770
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_1e
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1774
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1775
    .local v1, "_arg1":I
    invoke-virtual {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreStartRelayChannel(II)I

    move-result v2

    .line 1776
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1777
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1778
    return v12

    .line 1760
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_1f
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1763
    .restart local v0    # "_arg0":I
    invoke-virtual {v14, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreDeleteRelayChannel(I)I

    move-result v1

    .line 1764
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1765
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1766
    return v12

    .line 1748
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1752
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1753
    .local v1, "_arg1":I
    invoke-virtual {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreCreateRelayChannel(II)I

    move-result v2

    .line 1754
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1755
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1756
    return v12

    .line 1738
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1741
    .restart local v0    # "_arg0":I
    invoke-virtual {v14, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreUpdateStream(I)I

    move-result v1

    .line 1742
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    return v12

    .line 1728
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_22
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1731
    .restart local v0    # "_arg0":I
    invoke-virtual {v14, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreDeleteStream(I)I

    move-result v1

    .line 1732
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    return v12

    .line 1714
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1718
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1720
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1721
    .local v2, "_arg2":I
    invoke-virtual {v14, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreStartStream(III)I

    move-result v3

    .line 1722
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1723
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1724
    return v12

    .line 1678
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_24
    move-object v10, v12

    move-object v15, v13

    move v12, v11

    move-object v11, v14

    move-object v14, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1682
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1684
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1686
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1688
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1690
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1692
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1694
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v8, v12

    goto :goto_1

    :cond_4
    move v8, v1

    .line 1696
    .local v8, "_arg7":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v9, v12

    goto :goto_2

    :cond_5
    move v9, v1

    .line 1698
    .local v9, "_arg8":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1700
    .local v23, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1702
    .local v24, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1704
    .local v25, "_arg11":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v13, v12

    goto :goto_3

    :cond_6
    move v13, v1

    .line 1706
    .local v13, "_arg12":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v1, v12

    :cond_7
    move-object v7, v14

    move v14, v1

    .line 1707
    .local v14, "_arg13":Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v63, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v63, "descriptor":Ljava/lang/String;
    move/from16 v10, v23

    move/from16 v11, v24

    move-object/from16 v12, v25

    invoke-virtual/range {v0 .. v14}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I

    move-result v0

    .line 1708
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1709
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1710
    const/4 v12, 0x1

    return v12

    .line 1666
    .end local v0    # "_result":I
    .end local v8    # "_arg7":Z
    .end local v9    # "_arg8":Z
    .end local v13    # "_arg12":Z
    .end local v14    # "_arg13":Z
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":I
    .end local v23    # "_arg9":I
    .end local v24    # "_arg10":I
    .end local v25    # "_arg11":Ljava/lang/String;
    .end local v63    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move-object/from16 v63, v12

    move-object v15, v13

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v63    # "descriptor":Ljava/lang/String;
    move-object/from16 v14, p2

    move-object/from16 v13, v63

    .end local v63    # "descriptor":Ljava/lang/String;
    .local v13, "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1670
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1671
    .local v1, "_arg1":J
    move-object/from16 v11, p0

    invoke-virtual {v11, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreSetNetId(IJ)I

    move-result v3

    .line 1672
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1673
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    return v12

    .line 1656
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_26
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1659
    .restart local v0    # "_arg0":I
    invoke-virtual {v11, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreGetMdmn(I)Z

    move-result v1

    .line 1660
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    return v12

    .line 1644
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1648
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v1, v12

    .line 1649
    .local v1, "_arg1":Z
    :cond_8
    invoke-virtual {v11, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreSetMdmn(IZ)I

    move-result v2

    .line 1650
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1652
    return v12

    .line 1636
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreGetVersion()Ljava/lang/String;

    move-result-object v0

    .line 1638
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1640
    return v12

    .line 1629
    .end local v0    # "_result":Ljava/lang/String;
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1630
    invoke-virtual/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sreInitialize()V

    .line 1631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    return v12

    .line 1617
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1621
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1622
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steSetSessionId(II)I

    move-result v2

    .line 1623
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1624
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    return v12

    .line 1605
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1609
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1610
    .restart local v1    # "_arg1":I
    invoke-virtual {v11, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steSetNetId(II)I

    move-result v2

    .line 1611
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    return v12

    .line 1593
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1597
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v1, v12

    .line 1598
    .local v1, "_arg1":Z
    :cond_9
    invoke-virtual {v11, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steSetCallOptions(IZ)I

    move-result v2

    .line 1599
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1600
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1601
    return v12

    .line 1573
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1577
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1579
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1581
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1583
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1585
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    .line 1586
    .local v17, "_arg5":[I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steSetRtcpXr(IIIII[I)I

    move-result v0

    .line 1587
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1589
    return v12

    .line 1561
    .end local v0    # "_result":I
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":[I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1565
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1566
    .local v1, "_arg1":J
    invoke-virtual {v11, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steSetRtcpTimeout(IJ)I

    move-result v3

    .line 1567
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1569
    return v12

    .line 1549
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2f
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1553
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1554
    .restart local v1    # "_arg1":J
    invoke-virtual {v11, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steSetRtpTimeout(IJ)I

    move-result v3

    .line 1555
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1557
    return v12

    .line 1535
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_30
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1539
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1541
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1542
    .local v2, "_arg2":I
    invoke-virtual {v11, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steSetRtcpOnCall(III)I

    move-result v3

    .line 1543
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1545
    return v12

    .line 1517
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_31
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1521
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1523
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1525
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 1527
    .local v9, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1528
    .local v10, "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steEnableSRTP(III[BI)I

    move-result v0

    .line 1529
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    return v12

    .line 1503
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":[B
    .end local v10    # "_arg4":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_32
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1507
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1509
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1510
    .restart local v2    # "_arg2":I
    invoke-virtual {v11, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steSendText(ILjava/lang/String;I)I

    move-result v3

    .line 1511
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    return v12

    .line 1493
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_33
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1496
    .restart local v0    # "_arg0":I
    invoke-virtual {v11, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steDeleteChannel(I)I

    move-result v1

    .line 1497
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1498
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1499
    return v12

    .line 1481
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_34
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1485
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1486
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steModifyChannel(II)I

    move-result v2

    .line 1487
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1488
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1489
    return v12

    .line 1471
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_35
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1474
    .restart local v0    # "_arg0":I
    invoke-virtual {v11, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steStopChannel(I)I

    move-result v1

    .line 1475
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1477
    return v12

    .line 1447
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_36
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1451
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1453
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1455
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1457
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1459
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1461
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1463
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1464
    .local v21, "_arg7":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0

    .line 1465
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    return v12

    .line 1433
    .end local v0    # "_result":I
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    .end local v21    # "_arg7":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_37
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1437
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1439
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    move v1, v12

    .line 1440
    .local v1, "_arg2":Z
    :cond_a
    invoke-virtual {v11, v0, v2, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steStartChannel(IIZ)I

    move-result v3

    .line 1441
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1443
    return v12

    .line 1405
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_38
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1409
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1411
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1413
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1415
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1417
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1419
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1421
    .restart local v22    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1423
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v9, v12

    goto :goto_4

    :cond_b
    move v9, v1

    .line 1425
    .local v9, "_arg8":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v10, v12

    goto :goto_5

    :cond_c
    move v10, v1

    .line 1426
    .local v10, "_arg9":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    invoke-virtual/range {v0 .. v10}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0

    .line 1427
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    return v12

    .line 1337
    .end local v0    # "_result":I
    .end local v9    # "_arg8":Z
    .end local v10    # "_arg9":Z
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_39
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v0

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1341
    .local v31, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1343
    .local v32, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 1345
    .local v33, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1347
    .local v34, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 1349
    .local v35, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1351
    .local v36, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 1353
    .local v37, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 1355
    .local v38, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v9, v12

    goto :goto_6

    :cond_d
    move v9, v1

    .line 1357
    .restart local v9    # "_arg8":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .local v39, "_arg9":I
    move/from16 v10, v39

    .line 1359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object v8, v11

    .local v40, "_arg10":I
    move/from16 v11, v40

    .line 1361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    move v7, v12

    .local v41, "_arg11":I
    move/from16 v12, v41

    .line 1363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move-object v6, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .local v6, "descriptor":Ljava/lang/String;
    .local v42, "_arg12":I
    move/from16 v13, v42

    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move-object v5, v14

    .local v43, "_arg13":I
    move/from16 v14, v43

    .line 1367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v4, v0

    move-object v3, v15

    .restart local v4    # "_arg14":C
    move v15, v4

    .line 1369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v2, v0

    .local v2, "_arg15":C
    move/from16 v16, v2

    .line 1371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v1, v0

    .local v1, "_arg16":C
    move/from16 v17, v1

    .line 1373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    .local v0, "_arg17":C
    move/from16 v18, v0

    .line 1375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v7, v7

    .local v7, "_arg18":C
    move/from16 v19, v7

    .line 1377
    move/from16 v44, v0

    .end local v0    # "_arg17":C
    .local v44, "_arg17":C
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    .local v0, "_arg19":C
    move/from16 v20, v0

    .line 1379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .local v45, "_arg20":I
    move/from16 v21, v45

    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .local v46, "_arg21":I
    move/from16 v22, v46

    .line 1383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .local v47, "_arg22":Ljava/lang/String;
    move-object/from16 v23, v47

    .line 1385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .local v48, "_arg23":Ljava/lang/String;
    move-object/from16 v24, v48

    .line 1387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .local v49, "_arg24":Ljava/lang/String;
    move-object/from16 v25, v49

    .line 1389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    .local v50, "_arg25":Ljava/lang/String;
    move-object/from16 v26, v50

    .line 1391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v51

    .local v51, "_arg26":Ljava/lang/String;
    move-object/from16 v27, v51

    .line 1393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .local v52, "_arg27":Ljava/lang/String;
    move-object/from16 v28, v52

    .line 1395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .local v53, "_arg28":Ljava/lang/String;
    move-object/from16 v29, v53

    .line 1397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .local v54, "_arg29":Ljava/lang/String;
    move-object/from16 v30, v54

    .line 1398
    move/from16 v55, v0

    .end local v0    # "_arg19":C
    .local v55, "_arg19":C
    move-object/from16 v0, p0

    move/from16 v56, v1

    .end local v1    # "_arg16":C
    .local v56, "_arg16":C
    move/from16 v1, v31

    move/from16 v57, v2

    .end local v2    # "_arg15":C
    .local v57, "_arg15":C
    move-object/from16 v2, v32

    move/from16 v3, v33

    move/from16 v58, v4

    .end local v4    # "_arg14":C
    .local v58, "_arg14":C
    move/from16 v4, v34

    move/from16 v5, v35

    move-object/from16 v64, v6

    .end local v6    # "descriptor":Ljava/lang/String;
    .local v64, "descriptor":Ljava/lang/String;
    move/from16 v6, v36

    move/from16 v59, v7

    .end local v7    # "_arg18":C
    .local v59, "_arg18":C
    move/from16 v7, v37

    move/from16 v8, v38

    invoke-virtual/range {v0 .. v30}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1399
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    move-object/from16 v14, p3

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    const/4 v15, 0x1

    return v15

    .line 1330
    .end local v0    # "_result":I
    .end local v9    # "_arg8":Z
    .end local v31    # "_arg0":I
    .end local v32    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg2":I
    .end local v34    # "_arg3":I
    .end local v35    # "_arg4":I
    .end local v36    # "_arg5":I
    .end local v37    # "_arg6":I
    .end local v38    # "_arg7":I
    .end local v39    # "_arg9":I
    .end local v40    # "_arg10":I
    .end local v41    # "_arg11":I
    .end local v42    # "_arg12":I
    .end local v43    # "_arg13":I
    .end local v44    # "_arg17":C
    .end local v45    # "_arg20":I
    .end local v46    # "_arg21":I
    .end local v47    # "_arg22":Ljava/lang/String;
    .end local v48    # "_arg23":Ljava/lang/String;
    .end local v49    # "_arg24":Ljava/lang/String;
    .end local v50    # "_arg25":Ljava/lang/String;
    .end local v51    # "_arg26":Ljava/lang/String;
    .end local v52    # "_arg27":Ljava/lang/String;
    .end local v53    # "_arg28":Ljava/lang/String;
    .end local v54    # "_arg29":Ljava/lang/String;
    .end local v55    # "_arg19":C
    .end local v56    # "_arg16":C
    .end local v57    # "_arg15":C
    .end local v58    # "_arg14":C
    .end local v59    # "_arg18":C
    .end local v64    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3a
    move v15, v11

    move-object v14, v13

    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->steInitialize()V

    .line 1332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    return v15

    .line 1320
    :pswitch_3b
    move v15, v11

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1323
    .local v0, "_arg0":I
    move-object/from16 v11, p0

    invoke-virtual {v11, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveGetCodecCapacity(I)Ljava/lang/String;

    move-result-object v1

    .line 1324
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1326
    return v15

    .line 1304
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3c
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1307
    .restart local v0    # "_arg0":I
    invoke-virtual {v11, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;

    move-result-object v2

    .line 1308
    .local v2, "_result":Lcom/sec/sve/TimeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    if-eqz v2, :cond_e

    .line 1310
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    invoke-virtual {v2, v14, v15}, Lcom/sec/sve/TimeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 1314
    :cond_e
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    :goto_7
    return v15

    .line 1288
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Lcom/sec/sve/TimeInfo;
    :pswitch_3d
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1292
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1294
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1296
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1297
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveSendGeneralEvent(IIILjava/lang/String;)I

    move-result v4

    .line 1298
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    return v15

    .line 1272
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_3e
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1276
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1278
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1280
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1281
    .local v3, "_arg3":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveSetNetworkQoS(IIII)I

    move-result v4

    .line 1282
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    return v15

    .line 1260
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_3f
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1264
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1265
    .restart local v1    # "_arg1":I
    invoke-virtual {v11, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveSetVideoPlayDelay(II)I

    move-result v2

    .line 1266
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1268
    return v15

    .line 1244
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_40
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1247
    .restart local v0    # "_arg0":I
    invoke-virtual {v11, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object v2

    .line 1248
    .local v2, "_result":Lcom/sec/sve/TimeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    if-eqz v2, :cond_f

    .line 1250
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    invoke-virtual {v2, v14, v15}, Lcom/sec/sve/TimeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 1254
    :cond_f
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    :goto_8
    return v15

    .line 1230
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Lcom/sec/sve/TimeInfo;
    :pswitch_41
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1234
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    move v2, v15

    goto :goto_9

    :cond_10
    move v2, v1

    .line 1236
    .local v2, "_arg1":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    move v1, v15

    .line 1237
    .local v1, "_arg2":Z
    :cond_11
    invoke-virtual {v11, v0, v2, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveSetHeldInfo(IZZ)I

    move-result v3

    .line 1238
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    return v15

    .line 1221
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":I
    :pswitch_42
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1224
    .restart local v0    # "_arg0":I
    invoke-virtual {v11, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveRestartEmoji(I)V

    .line 1225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    return v15

    .line 1212
    .end local v0    # "_arg0":I
    :pswitch_43
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1215
    .restart local v0    # "_arg0":I
    invoke-virtual {v11, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveStopEmoji(I)V

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    return v15

    .line 1201
    .end local v0    # "_arg0":I
    :pswitch_44
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1205
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1206
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveStartEmoji(ILjava/lang/String;)V

    .line 1207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    return v15

    .line 1193
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_45
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveStopCamera()I

    move-result v0

    .line 1195
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    return v15

    .line 1181
    .end local v0    # "_result":I
    :pswitch_46
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1185
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1186
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveStartCamera(II)I

    move-result v2

    .line 1187
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    return v15

    .line 1157
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_47
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1161
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v2, v15

    goto :goto_a

    :cond_12
    move v2, v1

    .line 1163
    .local v2, "_arg1":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1165
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v4, v15

    goto :goto_b

    :cond_13
    move v4, v1

    .line 1167
    .local v4, "_arg3":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1169
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1171
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1173
    .local v18, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1174
    .local v19, "_arg7":I
    move-object/from16 v0, p0

    move v1, v9

    move v3, v10

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveSetMediaConfig(IZIZIIII)I

    move-result v0

    .line 1175
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1176
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    return v15

    .line 1129
    .end local v0    # "_result":I
    .end local v2    # "_arg1":Z
    .end local v4    # "_arg3":Z
    .end local v9    # "_arg0":I
    .end local v10    # "_arg2":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":I
    .end local v19    # "_arg7":I
    :pswitch_48
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1133
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1135
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1137
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1139
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v10, v0

    .line 1141
    .local v10, "_arg4":C
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1143
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 1145
    .local v21, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1147
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    .line 1149
    .local v23, "_arg8":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1150
    .local v24, "_arg9":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move v5, v10

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    move/from16 v25, v10

    .end local v10    # "_arg4":C
    .local v25, "_arg4":C
    move/from16 v10, v24

    invoke-virtual/range {v0 .. v10}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveSetGcmSrtpParams(IIIICI[BI[BI)I

    move-result v0

    .line 1151
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    return v15

    .line 1095
    .end local v0    # "_result":I
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":[B
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":[B
    .end local v24    # "_arg9":I
    .end local v25    # "_arg4":C
    :pswitch_49
    move v15, v11

    move-object v11, v0

    move-object/from16 v68, v14

    move-object v14, v13

    move-object/from16 v13, v68

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1099
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1101
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 1103
    .local v18, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1105
    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1107
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1109
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1111
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1113
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    .line 1115
    .local v24, "_arg8":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1117
    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 1119
    .local v26, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1121
    .local v27, "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 1122
    .local v28, "_arg12":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move-object/from16 v65, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v65, "descriptor":Ljava/lang/String;
    move/from16 v12, v27

    move/from16 v13, v28

    invoke-virtual/range {v0 .. v13}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I

    move-result v0

    .line 1123
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    return v15

    .line 1035
    .end local v0    # "_result":I
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":[B
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":[B
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":I
    .end local v27    # "_arg11":I
    .end local v28    # "_arg12":I
    .end local v65    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4a
    move v15, v11

    move-object/from16 v65, v12

    move-object v14, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v65    # "descriptor":Ljava/lang/String;
    move-object/from16 v12, p2

    move-object/from16 v11, v65

    .end local v65    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1039
    .local v27, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 1041
    .local v28, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 1043
    .local v29, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 1045
    .local v30, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1047
    .local v31, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 1049
    .local v32, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1051
    .local v33, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1053
    .local v34, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 1055
    .local v35, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1057
    .local v36, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 1059
    .local v37, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 1061
    .local v38, "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v13, v15

    goto :goto_c

    :cond_14
    move v13, v1

    .line 1063
    .local v13, "_arg12":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 1065
    .local v39, "_arg13":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move v1, v15

    :cond_15
    move v10, v15

    move v15, v1

    .line 1067
    .local v15, "_arg14":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .local v40, "_arg15":I
    move/from16 v16, v40

    .line 1069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .local v41, "_arg16":I
    move/from16 v17, v41

    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .local v42, "_arg17":I
    move/from16 v18, v42

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .local v43, "_arg18":I
    move/from16 v19, v43

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .local v44, "_arg19":I
    move/from16 v20, v44

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v45

    .local v45, "_arg20":[B
    move-object/from16 v21, v45

    .line 1079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v46

    .local v46, "_arg21":[B
    move-object/from16 v22, v46

    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v47

    .local v47, "_arg22":[B
    move-object/from16 v23, v47

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .local v48, "_arg23":I
    move/from16 v24, v48

    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v49

    .local v49, "_arg24":I
    move/from16 v25, v49

    .line 1087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .local v50, "_arg25":I
    move/from16 v26, v50

    .line 1088
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    move/from16 v5, v31

    move/from16 v6, v32

    move-object/from16 v7, v33

    move/from16 v8, v34

    move/from16 v9, v35

    move/from16 v10, v36

    move-object/from16 v66, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v66, "descriptor":Ljava/lang/String;
    move/from16 v11, v37

    move/from16 v12, v38

    move/from16 v14, v39

    invoke-virtual/range {v0 .. v26}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I

    move-result v0

    .line 1089
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    move-object/from16 v14, p3

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    const/4 v12, 0x1

    return v12

    .line 1011
    .end local v0    # "_result":I
    .end local v13    # "_arg12":Z
    .end local v15    # "_arg14":Z
    .end local v27    # "_arg0":I
    .end local v28    # "_arg1":I
    .end local v29    # "_arg2":I
    .end local v30    # "_arg3":I
    .end local v31    # "_arg4":I
    .end local v32    # "_arg5":I
    .end local v33    # "_arg6":Ljava/lang/String;
    .end local v34    # "_arg7":I
    .end local v35    # "_arg8":I
    .end local v36    # "_arg9":I
    .end local v37    # "_arg10":I
    .end local v38    # "_arg11":I
    .end local v39    # "_arg13":I
    .end local v40    # "_arg15":I
    .end local v41    # "_arg16":I
    .end local v42    # "_arg17":I
    .end local v43    # "_arg18":I
    .end local v44    # "_arg19":I
    .end local v45    # "_arg20":[B
    .end local v46    # "_arg21":[B
    .end local v47    # "_arg22":[B
    .end local v48    # "_arg23":I
    .end local v49    # "_arg24":I
    .end local v50    # "_arg25":I
    .end local v66    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4b
    move-object/from16 v66, v12

    move-object v14, v13

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v66    # "descriptor":Ljava/lang/String;
    move-object/from16 v15, p2

    move-object/from16 v13, v66

    .end local v66    # "descriptor":Ljava/lang/String;
    .local v13, "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1015
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1017
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1019
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1021
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1023
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1025
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1027
    .local v19, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1028
    .local v20, "_arg7":I
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v0

    .line 1029
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    return v12

    .line 1001
    .end local v0    # "_result":I
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg2":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":I
    .end local v20    # "_arg7":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4c
    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1004
    .local v0, "_arg0":I
    move-object/from16 v9, p0

    invoke-virtual {v9, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveStopChannel(I)I

    move-result v1

    .line 1005
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    return v12

    .line 987
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4d
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 991
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 993
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 994
    .local v2, "_arg2":I
    invoke-virtual {v9, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveStartChannel(III)I

    move-result v3

    .line 995
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    return v12

    .line 979
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4e
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sveCreateChannel()I

    move-result v0

    .line 981
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    return v12

    .line 967
    .end local v0    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4f
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 971
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 972
    .restart local v1    # "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeSetAudioPath(II)I

    move-result v2

    .line 973
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    return v12

    .line 957
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_50
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 960
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeGetAudioRxTrackId(I)I

    move-result v1

    .line 961
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    return v12

    .line 945
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_51
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 949
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 950
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeGetVersion([BI)I

    move-result v2

    .line 951
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    return v12

    .line 933
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_52
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 937
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 938
    .restart local v1    # "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeSetTOS(II)I

    move-result v2

    .line 939
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    return v12

    .line 921
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_53
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 925
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 926
    .restart local v1    # "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeSetVoicePlayDelay(II)I

    move-result v2

    .line 927
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    return v12

    .line 905
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_54
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 908
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object v2

    .line 909
    .local v2, "_result":Lcom/sec/sve/TimeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    if-eqz v2, :cond_16

    .line 911
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    invoke-virtual {v2, v14, v12}, Lcom/sec/sve/TimeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 915
    :cond_16
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    :goto_d
    return v12

    .line 885
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Lcom/sec/sve/TimeInfo;
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_55
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 889
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 891
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 893
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 895
    .local v11, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 897
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    .line 898
    .local v17, "_arg5":[I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v10

    move v4, v11

    move/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeSetRtcpXr(IIIII[I)I

    move-result v0

    .line 899
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    return v12

    .line 873
    .end local v0    # "_result":I
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v10    # "_arg2":I
    .end local v11    # "_arg3":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":[I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_56
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 877
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 878
    .local v1, "_arg1":J
    invoke-virtual {v9, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeSetRtcpTimeout(IJ)I

    move-result v3

    .line 879
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    return v12

    .line 861
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_57
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 865
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 866
    .restart local v1    # "_arg1":J
    invoke-virtual {v9, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeSetRtpTimeout(IJ)I

    move-result v3

    .line 867
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    return v12

    .line 847
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_58
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 851
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 853
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 854
    .local v2, "_arg2":I
    invoke-virtual {v9, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeSetRtcpOnCall(III)I

    move-result v3

    .line 855
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    return v12

    .line 829
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_59
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 833
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 835
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 837
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 839
    .local v10, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 840
    .local v11, "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeEnableSRTP(III[BI)I

    move-result v0

    .line 841
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    return v12

    .line 811
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":[B
    .end local v11    # "_arg4":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_5a
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 815
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 817
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 819
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 821
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 822
    .restart local v11    # "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeSetDtmfCodecInfo(IIIII)I

    move-result v0

    .line 823
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    return v12

    .line 795
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_5b
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 799
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 801
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 803
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 804
    .local v3, "_arg3":I
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeHandleDtmf(IIII)I

    move-result v4

    .line 805
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    return v12

    .line 785
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_5c
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 788
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeDeleteChannel(I)I

    move-result v1

    .line 789
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    return v12

    .line 773
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_5d
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 777
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 778
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeModifyChannel(II)I

    move-result v2

    .line 779
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    return v12

    .line 763
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_5e
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 766
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeStopChannel(I)I

    move-result v1

    .line 767
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    return v12

    .line 739
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_5f
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 743
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 745
    .local v11, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 747
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 749
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 751
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 753
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 755
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 756
    .local v21, "_arg7":I
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0

    .line 757
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    return v12

    .line 725
    .end local v0    # "_result":I
    .end local v10    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    .end local v21    # "_arg7":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_60
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 729
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 731
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    move v11, v12

    goto :goto_e

    :cond_17
    move v11, v1

    :goto_e
    move v1, v11

    .line 732
    .local v1, "_arg2":Z
    invoke-virtual {v9, v0, v2, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeStartChannel(IIZ)I

    move-result v3

    .line 733
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    return v12

    .line 695
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_61
    move-object v9, v0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 699
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 701
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 703
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 705
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 707
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 709
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 711
    .restart local v22    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 713
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 715
    .local v24, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    move v10, v12

    goto :goto_f

    :cond_18
    move v10, v1

    .line 717
    .local v10, "_arg9":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    move v11, v12

    goto :goto_10

    :cond_19
    move v11, v1

    .line 718
    .local v11, "_arg10":Z
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v11}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0

    .line 719
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    return v12

    .line 627
    .end local v0    # "_result":I
    .end local v10    # "_arg9":Z
    .end local v11    # "_arg10":Z
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_62
    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 631
    .local v31, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 633
    .local v32, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 635
    .local v33, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 637
    .local v34, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 639
    .local v35, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 641
    .local v36, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 643
    .local v37, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 645
    .local v38, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v9, v12

    goto :goto_11

    :cond_1a
    move v9, v1

    .line 647
    .local v9, "_arg8":Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .local v39, "_arg9":I
    move/from16 v10, v39

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .local v40, "_arg10":I
    move/from16 v11, v40

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    move/from16 v42, v12

    .local v41, "_arg11":I
    move/from16 v12, v41

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move-object v8, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    .local v43, "_arg12":I
    move/from16 v13, v43

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    move-object v7, v14

    .local v44, "_arg13":I
    move/from16 v14, v44

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v6, v0

    move-object v5, v15

    .local v6, "_arg14":C
    move v15, v6

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v4, v0

    .local v4, "_arg15":C
    move/from16 v16, v4

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v3, v0

    .local v3, "_arg16":C
    move/from16 v17, v3

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v2, v0

    .local v2, "_arg17":C
    move/from16 v18, v2

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v1, v0

    .local v1, "_arg18":C
    move/from16 v19, v1

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    .local v0, "_arg19":C
    move/from16 v20, v0

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .local v45, "_arg20":I
    move/from16 v21, v45

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .local v46, "_arg21":I
    move/from16 v22, v46

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .local v47, "_arg22":Ljava/lang/String;
    move-object/from16 v23, v47

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .local v48, "_arg23":Ljava/lang/String;
    move-object/from16 v24, v48

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .local v49, "_arg24":Ljava/lang/String;
    move-object/from16 v25, v49

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    .local v50, "_arg25":Ljava/lang/String;
    move-object/from16 v26, v50

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v51

    .restart local v51    # "_arg26":Ljava/lang/String;
    move-object/from16 v27, v51

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .restart local v52    # "_arg27":Ljava/lang/String;
    move-object/from16 v28, v52

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .restart local v53    # "_arg28":Ljava/lang/String;
    move-object/from16 v29, v53

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .restart local v54    # "_arg29":Ljava/lang/String;
    move-object/from16 v30, v54

    .line 688
    move/from16 v55, v0

    .end local v0    # "_arg19":C
    .restart local v55    # "_arg19":C
    move-object/from16 v0, p0

    move/from16 v56, v1

    .end local v1    # "_arg18":C
    .local v56, "_arg18":C
    move/from16 v1, v31

    move/from16 v57, v2

    .end local v2    # "_arg17":C
    .local v57, "_arg17":C
    move-object/from16 v2, v32

    move/from16 v58, v3

    .end local v3    # "_arg16":C
    .local v58, "_arg16":C
    move/from16 v3, v33

    move/from16 v59, v4

    .end local v4    # "_arg15":C
    .local v59, "_arg15":C
    move/from16 v4, v34

    move/from16 v5, v35

    move/from16 v60, v6

    .end local v6    # "_arg14":C
    .local v60, "_arg14":C
    move/from16 v6, v36

    move/from16 v7, v37

    move-object/from16 v67, v8

    .end local v8    # "descriptor":Ljava/lang/String;
    .local v67, "descriptor":Ljava/lang/String;
    move/from16 v8, v38

    invoke-virtual/range {v0 .. v30}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 689
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    return v42

    .line 620
    .end local v0    # "_result":I
    .end local v9    # "_arg8":Z
    .end local v31    # "_arg0":I
    .end local v32    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg2":I
    .end local v34    # "_arg3":I
    .end local v35    # "_arg4":I
    .end local v36    # "_arg5":I
    .end local v37    # "_arg6":I
    .end local v38    # "_arg7":I
    .end local v39    # "_arg9":I
    .end local v40    # "_arg10":I
    .end local v41    # "_arg11":I
    .end local v43    # "_arg12":I
    .end local v44    # "_arg13":I
    .end local v45    # "_arg20":I
    .end local v46    # "_arg21":I
    .end local v47    # "_arg22":Ljava/lang/String;
    .end local v48    # "_arg23":Ljava/lang/String;
    .end local v49    # "_arg24":Ljava/lang/String;
    .end local v50    # "_arg25":Ljava/lang/String;
    .end local v51    # "_arg26":Ljava/lang/String;
    .end local v52    # "_arg27":Ljava/lang/String;
    .end local v53    # "_arg28":Ljava/lang/String;
    .end local v54    # "_arg29":Ljava/lang/String;
    .end local v55    # "_arg19":C
    .end local v56    # "_arg18":C
    .end local v57    # "_arg17":C
    .end local v58    # "_arg16":C
    .end local v59    # "_arg15":C
    .end local v60    # "_arg14":C
    .end local v67    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_63
    move/from16 v42, v11

    move-object/from16 v67, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v67    # "descriptor":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v3, v67

    .end local v67    # "descriptor":Ljava/lang/String;
    .local v3, "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeTerminate()V

    .line 622
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    return v42

    .line 607
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_64
    move/from16 v42, v11

    move-object v3, v12

    move-object v2, v13

    move-object v0, v14

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 611
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 613
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 614
    .local v5, "_arg2":I
    move-object/from16 v6, p0

    invoke-virtual {v6, v1, v4, v5}, Lcom/sec/sve/ISecVideoEngineService$Stub;->saeInitialize(III)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    return v42

    .line 593
    .end local v1    # "_arg0":I
    .end local v3    # "descriptor":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_65
    move-object v6, v0

    move/from16 v42, v11

    move-object v3, v12

    move-object v2, v13

    move-object v0, v14

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 596
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .local v1, "_arg0":Landroid/net/Network;
    goto :goto_12

    .line 599
    .end local v1    # "_arg0":Landroid/net/Network;
    :cond_1b
    const/4 v1, 0x0

    .line 601
    .restart local v1    # "_arg0":Landroid/net/Network;
    :goto_12
    invoke-virtual {v6, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->bindToNetwork(Landroid/net/Network;)V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    return v42

    .line 582
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_66
    move-object v6, v0

    move/from16 v42, v11

    move-object v3, v12

    move-object v2, v13

    move-object v0, v14

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 586
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 587
    .restart local v4    # "_arg1":I
    invoke-virtual {v6, v1, v4}, Lcom/sec/sve/ISecVideoEngineService$Stub;->setPreviewResolution(II)V

    .line 588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    return v42

    .line 573
    .end local v1    # "_arg0":I
    .end local v3    # "descriptor":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_67
    move-object v6, v0

    move/from16 v42, v11

    move-object v3, v12

    move-object v2, v13

    move-object v0, v14

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 576
    .restart local v1    # "_arg0":I
    invoke-virtual {v6, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->setCameraEffect(I)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    return v42

    .line 558
    .end local v1    # "_arg0":I
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_68
    move-object v6, v0

    move/from16 v42, v11

    move-object v3, v12

    move-object v2, v13

    move-object v0, v14

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 562
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    move/from16 v11, v42

    goto :goto_13

    :cond_1c
    move v11, v1

    :goto_13
    move v1, v11

    .line 564
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 566
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 567
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v4, v1, v5, v7}, Lcom/sec/sve/ISecVideoEngineService$Stub;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    return v42

    .line 551
    .end local v1    # "_arg1":Z
    .end local v3    # "descriptor":Ljava/lang/String;
    .end local v4    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_69
    move-object v6, v0

    move/from16 v42, v11

    move-object v3, v12

    move-object v2, v13

    move-object v0, v14

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->switchCamera()V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    return v42

    .line 542
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_6a
    move-object v6, v0

    move/from16 v42, v11

    move-object v3, v12

    move-object v2, v13

    move-object v0, v14

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 545
    .local v1, "_arg0":F
    invoke-virtual {v6, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->setZoom(F)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    return v42

    .line 533
    .end local v1    # "_arg0":F
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_6b
    move-object v6, v0

    move/from16 v42, v11

    move-object v3, v12

    move-object v2, v13

    move-object v0, v14

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 536
    .local v1, "_arg0":I
    invoke-virtual {v6, v1}, Lcom/sec/sve/ISecVideoEngineService$Stub;->setOrientation(I)V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    return v42

    .line 517
    .end local v1    # "_arg0":I
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_6c
    move-object v6, v0

    move/from16 v42, v11

    move-object v3, v12

    move-object v2, v13

    move-object v0, v14

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 520
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .local v1, "_arg0":Landroid/view/Surface;
    goto :goto_14

    .line 523
    .end local v1    # "_arg0":Landroid/view/Surface;
    :cond_1d
    const/4 v1, 0x0

    .line 526
    .restart local v1    # "_arg0":Landroid/view/Surface;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 527
    .local v4, "_arg1":I
    invoke-virtual {v6, v1, v4}, Lcom/sec/sve/ISecVideoEngineService$Stub;->setDisplaySurface(Landroid/view/Surface;I)V

    .line 528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    return v42

    .line 501
    .end local v1    # "_arg0":Landroid/view/Surface;
    .end local v3    # "descriptor":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_6d
    move-object v6, v0

    move/from16 v42, v11

    move-object v3, v12

    move-object v2, v13

    move-object v0, v14

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 504
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .restart local v1    # "_arg0":Landroid/view/Surface;
    goto :goto_15

    .line 507
    .end local v1    # "_arg0":Landroid/view/Surface;
    :cond_1e
    const/4 v1, 0x0

    .line 510
    .restart local v1    # "_arg0":Landroid/view/Surface;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 511
    .restart local v4    # "_arg1":I
    invoke-virtual {v6, v1, v4}, Lcom/sec/sve/ISecVideoEngineService$Stub;->setPreviewSurface(Landroid/view/Surface;I)V

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    return v42

    .line 494
    .end local v1    # "_arg0":Landroid/view/Surface;
    .end local v3    # "descriptor":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_6e
    move-object v6, v0

    move/from16 v42, v11

    move-object v3, v12

    move-object v2, v13

    move-object v0, v14

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService$Stub;->onDestroy()V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    return v42

    .line 489
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :cond_1f
    move/from16 v42, v11

    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    return v42

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
