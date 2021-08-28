.class public Lcom/sec/sve/SecVideoEngineManager;
.super Ljava/lang/Object;
.source "SecVideoEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

.field private mService:Lcom/sec/sve/ISecVideoEngineService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/sec/sve/SecVideoEngineManager$1;

    invoke-direct {v0, p0}, Lcom/sec/sve/SecVideoEngineManager$1;-><init>(Lcom/sec/sve/SecVideoEngineManager;)V

    iput-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mConnection:Landroid/content/ServiceConnection;

    .line 57
    iput-object p1, p0, Lcom/sec/sve/SecVideoEngineManager;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/sec/sve/SecVideoEngineManager;->mListener:Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/sec/sve/SecVideoEngineManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/sve/SecVideoEngineManager;

    .line 25
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/sve/SecVideoEngineManager;Lcom/sec/sve/ISecVideoEngineService;)Lcom/sec/sve/ISecVideoEngineService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/sve/SecVideoEngineManager;
    .param p1, "x1"    # Lcom/sec/sve/ISecVideoEngineService;

    .line 25
    iput-object p1, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/sve/SecVideoEngineManager;)Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/sve/SecVideoEngineManager;

    .line 25
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mListener:Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

    return-object v0
.end method


# virtual methods
.method public bindToNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 85
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SVE service is not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToNetwork "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->bindToNetwork(Landroid/net/Network;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 97
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public connectService()V
    .locals 5

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.sec.sve"

    const-string v2, "com.sec.sve.service.SecVideoEngineService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/sec/sve/SecVideoEngineManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/sve/SecVideoEngineManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 74
    :goto_0
    return-void
.end method

.method public cpveStartInjection(Ljava/lang/String;I)I
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "samplingRate"    # I

    .line 1646
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SVE service is not ready!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    return v1

    .line 1652
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->cpveStartInjection(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1657
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public cpveStopInjection()I
    .locals 3

    .line 1661
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SVE service is not ready!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    return v1

    .line 1667
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/sve/ISecVideoEngineService;->cpveStopInjection()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1668
    :catch_0
    move-exception v0

    .line 1669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1672
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public disconnectService()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/sec/sve/SecVideoEngineManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    .line 82
    :cond_0
    return-void
.end method

.method public isSupportingCameraMotor()Z
    .locals 2

    .line 1465
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1466
    return v1

    .line 1470
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/sve/ISecVideoEngineService;->isSupportingCameraMotor()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1471
    :catch_0
    move-exception v0

    .line 1472
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1475
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/sve/ICmcMediaEventListener;

    .line 811
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForCmcEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 813
    return-void

    .line 817
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 821
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/sve/IImsMediaEventListener;

    .line 785
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForMediaEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 787
    return-void

    .line 791
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    goto :goto_0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 795
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public restartEmoji(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 1634
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 1635
    return-void

    .line 1639
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveRestartEmoji(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    goto :goto_0

    .line 1640
    :catch_0
    move-exception v0

    .line 1641
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1643
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 15
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

    .line 246
    move-object v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v14, -0x1

    if-nez v2, :cond_0

    .line 247
    return v14

    .line 251
    :cond_0
    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    :try_start_0
    invoke-interface/range {v2 .. v13}, Lcom/sec/sve/ISecVideoEngineService;->saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 254
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    return v14
.end method

.method public saeDeleteChannel(I)I
    .locals 2
    .param p1, "channel"    # I

    .line 320
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 321
    return v1

    .line 325
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeDeleteChannel(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 330
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeEnableSRTP(III[BI)I
    .locals 7
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "profile"    # I
    .param p4, "key"    # [B
    .param p5, "keylen"    # I

    .line 362
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v6, -0x1

    if-nez v0, :cond_0

    .line 363
    return v6

    .line 367
    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->saeEnableSRTP(III[BI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    return v6
.end method

.method public saeGetAudioRxTrackId(I)I
    .locals 2
    .param p1, "channel"    # I

    .line 488
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 489
    return v1

    .line 493
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeGetAudioRxTrackId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 498
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;
    .locals 2
    .param p1, "channel"    # I

    .line 432
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 433
    return-object v1

    .line 437
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 442
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public saeGetVersion([BI)I
    .locals 2
    .param p1, "version"    # [B
    .param p2, "bufflen"    # I

    .line 474
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 475
    return v1

    .line 479
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeGetVersion([BI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 484
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeHandleDtmf(IIII)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "code"    # I
    .param p3, "mode"    # I
    .param p4, "operation"    # I

    .line 334
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 335
    return v1

    .line 339
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->saeHandleDtmf(IIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 344
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeInitialize(III)V
    .locals 1
    .param p1, "convertedMno"    # I
    .param p2, "dtmfMode"    # I
    .param p3, "sas"    # I

    .line 196
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 197
    return-void

    .line 201
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeInitialize(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public saeModifyChannel(II)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "direction"    # I

    .line 306
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 307
    return v1

    .line 311
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeModifyChannel(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeSetAudioPath(II)I
    .locals 2
    .param p1, "dir_in"    # I
    .param p2, "dir_out"    # I

    .line 502
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 503
    return v1

    .line 507
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetAudioPath(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 512
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 34
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

    .line 225
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v33, -0x1

    if-nez v2, :cond_0

    .line 226
    return v33

    .line 230
    :cond_0
    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, p26

    move-object/from16 v29, p27

    move-object/from16 v30, p28

    move-object/from16 v31, p29

    move-object/from16 v32, p30

    :try_start_0
    invoke-interface/range {v2 .. v32}, Lcom/sec/sve/ISecVideoEngineService;->saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 236
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    return v33
.end method

.method public saeSetDtmfCodecInfo(IIIII)I
    .locals 7
    .param p1, "channel"    # I
    .param p2, "type"    # I
    .param p3, "rxtype"    # I
    .param p4, "bitrate"    # I
    .param p5, "inband"    # I

    .line 348
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v6, -0x1

    if-nez v0, :cond_0

    .line 349
    return v6

    .line 353
    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->saeSetDtmfCodecInfo(IIIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 358
    .end local v0    # "e":Landroid/os/RemoteException;
    return v6
.end method

.method public saeSetRtcpOnCall(III)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "rr"    # I
    .param p3, "rs"    # I

    .line 376
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 377
    return v1

    .line 381
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpOnCall(III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 386
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeSetRtcpTimeout(IJ)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "sec"    # J

    .line 404
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 405
    return v1

    .line 409
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpTimeout(IJ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 414
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeSetRtcpXr(IIIII[I)I
    .locals 8
    .param p1, "channel"    # I
    .param p2, "flag"    # I
    .param p3, "blocks"    # I
    .param p4, "statflags"    # I
    .param p5, "rttmode"    # I
    .param p6, "maxsizesInt"    # [I

    .line 418
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v7, -0x1

    if-nez v0, :cond_0

    .line 419
    return v7

    .line 423
    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpXr(IIIII[I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 428
    .end local v0    # "e":Landroid/os/RemoteException;
    return v7
.end method

.method public saeSetRtpTimeout(IJ)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "sec"    # J

    .line 390
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 391
    return v1

    .line 395
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtpTimeout(IJ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 400
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeSetTOS(II)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "tos"    # I

    .line 460
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 461
    return v1

    .line 465
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetTOS(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 470
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeSetVoicePlayDelay(II)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "delayTime"    # I

    .line 446
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 447
    return v1

    .line 451
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetVoicePlayDelay(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 456
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeStartChannel(IIZ)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "enableIpv6"    # Z

    .line 262
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 263
    return v1

    .line 267
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeStartChannel(IIZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeStartRecording(IIIZ)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "samplingRate"    # I
    .param p4, "bIsApVoice"    # Z

    .line 1554
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1555
    return v1

    .line 1559
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->saeStartRecording(IIIZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1564
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeStopChannel(I)I
    .locals 2
    .param p1, "channel"    # I

    .line 292
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 293
    return v1

    .line 297
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeStopChannel(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeStopRecording(IZ)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "bIsApVoice"    # Z

    .line 1568
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1569
    return v1

    .line 1573
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeStopRecording(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1574
    :catch_0
    move-exception v0

    .line 1575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1578
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public saeTerminate()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 213
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/sve/ISecVideoEngineService;->saeTerminate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 217
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 12
    .param p1, "channel"    # I
    .param p2, "dir"    # I
    .param p3, "localIp"    # Ljava/lang/String;
    .param p4, "localPort"    # I
    .param p5, "remoteIp"    # Ljava/lang/String;
    .param p6, "remotePort"    # I
    .param p7, "localRTCPPort"    # I
    .param p8, "remoteRTCPPort"    # I

    .line 277
    move-object v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v11, -0x1

    if-nez v2, :cond_0

    .line 278
    return v11

    .line 282
    :cond_0
    move v3, p1

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    :try_start_0
    invoke-interface/range {v2 .. v10}, Lcom/sec/sve/ISecVideoEngineService;->saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 284
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    return v11
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "enable"    # Z
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "frameSize"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 173
    return-void

    .line 177
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 1
    .param p1, "value"    # I

    .line 184
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 185
    return-void

    .line 189
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->setCameraEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;I)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "color"    # I

    .line 112
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 117
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->setDisplaySurface(Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 124
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 129
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->setOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setPreviewResolution(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 160
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 161
    return-void

    .line 165
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->setPreviewResolution(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;I)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "color"    # I

    .line 100
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->setPreviewSurface(Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "value"    # F

    .line 136
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 141
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 145
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sreCreateRelayChannel(II)I
    .locals 2
    .param p1, "lhs_stream"    # I
    .param p2, "rhs_stream"    # I

    .line 1214
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1215
    return v1

    .line 1219
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreCreateRelayChannel(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1224
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I
    .locals 18
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

    .line 1157
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v17, -0x1

    if-nez v2, :cond_0

    .line 1158
    return v17

    .line 1162
    :cond_0
    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    :try_start_0
    invoke-interface/range {v2 .. v16}, Lcom/sec/sve/ISecVideoEngineService;->sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1164
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1168
    .end local v0    # "e":Landroid/os/RemoteException;
    return v17
.end method

.method public sreDeleteRelayChannel(I)I
    .locals 2
    .param p1, "channel"    # I

    .line 1228
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1229
    return v1

    .line 1233
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreDeleteRelayChannel(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1234
    :catch_0
    move-exception v0

    .line 1235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1238
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreDeleteStream(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 1186
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1187
    return v1

    .line 1191
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreDeleteStream(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1196
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreEnableSRTP(III[BI)I
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "direction"    # I
    .param p3, "profile"    # I
    .param p4, "key"    # [B
    .param p5, "keylen"    # I

    .line 1328
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v6, -0x1

    if-nez v0, :cond_0

    .line 1329
    return v6

    .line 1333
    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->sreEnableSRTP(III[BI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1334
    :catch_0
    move-exception v0

    .line 1335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1338
    .end local v0    # "e":Landroid/os/RemoteException;
    return v6
.end method

.method public sreGetMdmn(I)Z
    .locals 2
    .param p1, "sessionId"    # I

    .line 1127
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1128
    return v1

    .line 1132
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreGetMdmn(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1137
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreGetVersion()Ljava/lang/String;
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 1100
    return-object v1

    .line 1104
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/sve/ISecVideoEngineService;->sreGetVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1109
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public sreHoldRelayChannel(I)I
    .locals 2
    .param p1, "channel"    # I

    .line 1270
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1271
    return v1

    .line 1275
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreHoldRelayChannel(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1280
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreInitialize()V
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 1088
    return-void

    .line 1092
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/sve/ISecVideoEngineService;->sreInitialize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    goto :goto_0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1096
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sreResumeRelayChannel(I)I
    .locals 2
    .param p1, "channel"    # I

    .line 1284
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1285
    return v1

    .line 1289
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreResumeRelayChannel(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1294
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 35
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

    .line 1404
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v34, -0x1

    if-nez v2, :cond_0

    .line 1405
    return v34

    .line 1409
    :cond_0
    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, p26

    move-object/from16 v29, p27

    move-object/from16 v30, p28

    move-object/from16 v31, p29

    move-object/from16 v32, p30

    move/from16 v33, p31

    :try_start_0
    invoke-interface/range {v2 .. v33}, Lcom/sec/sve/ISecVideoEngineService;->sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1415
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1419
    .end local v0    # "e":Landroid/os/RemoteException;
    return v34
.end method

.method public sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 12
    .param p1, "sessionId"    # I
    .param p2, "localIp"    # Ljava/lang/String;
    .param p3, "localPort"    # I
    .param p4, "remoteIp"    # Ljava/lang/String;
    .param p5, "remotePort"    # I
    .param p6, "localRTCPPort"    # I
    .param p7, "remoteRTCPPort"    # I
    .param p8, "crbtType"    # I

    .line 1313
    move-object v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v11, -0x1

    if-nez v2, :cond_0

    .line 1314
    return v11

    .line 1318
    :cond_0
    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    :try_start_0
    invoke-interface/range {v2 .. v10}, Lcom/sec/sve/ISecVideoEngineService;->sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1320
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1324
    .end local v0    # "e":Landroid/os/RemoteException;
    return v11
.end method

.method public sreSetDtmfCodecInfo(IIIIII)I
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "type"    # I
    .param p4, "rxtype"    # I
    .param p5, "bitrate"    # I
    .param p6, "inband"    # I

    .line 1423
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v7, -0x1

    if-nez v0, :cond_0

    .line 1424
    return v7

    .line 1428
    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->sreSetDtmfCodecInfo(IIIIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1433
    .end local v0    # "e":Landroid/os/RemoteException;
    return v7
.end method

.method public sreSetMdmn(IZ)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "isMdmn"    # Z

    .line 1113
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1114
    return v1

    .line 1118
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetMdmn(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1123
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreSetNetId(IJ)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "netId"    # J

    .line 1141
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1142
    return v1

    .line 1146
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sreSetNetId(IJ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1151
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreSetRtcpOnCall(IIIII)I
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "rr"    # I
    .param p3, "rs"    # I
    .param p4, "rtpTimer"    # I
    .param p5, "rtcpTimer"    # I

    .line 1342
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v6, -0x1

    if-nez v0, :cond_0

    .line 1343
    return v6

    .line 1347
    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpOnCall(IIIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1352
    .end local v0    # "e":Landroid/os/RemoteException;
    return v6
.end method

.method public sreSetRtcpTimeout(II)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "sec"    # I

    .line 1370
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1371
    return v1

    .line 1375
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpTimeout(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1380
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreSetRtcpXr(IIIII[I)I
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "flag"    # I
    .param p3, "blocks"    # I
    .param p4, "statflags"    # I
    .param p5, "rttmode"    # I
    .param p6, "maxsizesInt"    # [I

    .line 1384
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v7, -0x1

    if-nez v0, :cond_0

    .line 1385
    return v7

    .line 1389
    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpXr(IIIII[I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1394
    .end local v0    # "e":Landroid/os/RemoteException;
    return v7
.end method

.method public sreSetRtpTimeout(II)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "sec"    # I

    .line 1356
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1357
    return v1

    .line 1361
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtpTimeout(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1366
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreStartRecording(III)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "streamId"    # I
    .param p3, "channel"    # I

    .line 1437
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1438
    return v1

    .line 1442
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sreStartRecording(III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1443
    :catch_0
    move-exception v0

    .line 1444
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1447
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreStartRelayChannel(II)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "direction"    # I

    .line 1242
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1243
    return v1

    .line 1247
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreStartRelayChannel(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1252
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreStartStream(III)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "oldDirection"    # I
    .param p3, "newDirection"    # I

    .line 1172
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1173
    return v1

    .line 1177
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sreStartStream(III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1182
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreStopRecording(II)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "channel"    # I

    .line 1451
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1452
    return v1

    .line 1456
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreStopRecording(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1457
    :catch_0
    move-exception v0

    .line 1458
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1461
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreStopRelayChannel(I)I
    .locals 2
    .param p1, "channel"    # I

    .line 1256
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1257
    return v1

    .line 1261
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreStopRelayChannel(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1266
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreUpdateRelayChannel(II)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "stream"    # I

    .line 1298
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1299
    return v1

    .line 1303
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreUpdateRelayChannel(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1308
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sreUpdateStream(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 1200
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1201
    return v1

    .line 1205
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreUpdateStream(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1210
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public startEmoji(ILjava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "emojiInfo"    # Ljava/lang/String;

    .line 1610
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 1611
    return-void

    .line 1615
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartEmoji(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1618
    goto :goto_0

    .line 1616
    :catch_0
    move-exception v0

    .line 1617
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1619
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 14
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

    .line 875
    move-object v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v13, -0x1

    if-nez v2, :cond_0

    .line 876
    return v13

    .line 880
    :cond_0
    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    :try_start_0
    invoke-interface/range {v2 .. v12}, Lcom/sec/sve/ISecVideoEngineService;->steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 883
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 887
    .end local v0    # "e":Landroid/os/RemoteException;
    return v13
.end method

.method public steDeleteChannel(I)I
    .locals 2
    .param p1, "channel"    # I

    .line 1005
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1006
    return v1

    .line 1010
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->steDeleteChannel(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1015
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public steEnableSRTP(III[BI)I
    .locals 7
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "profile"    # I
    .param p4, "key"    # [B
    .param p5, "keylen"    # I

    .line 1031
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v6, -0x1

    if-nez v0, :cond_0

    .line 1032
    return v6

    .line 1036
    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->steEnableSRTP(III[BI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1041
    .end local v0    # "e":Landroid/os/RemoteException;
    return v6
.end method

.method public steInitialize()V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 838
    return-void

    .line 842
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/sve/ISecVideoEngineService;->steInitialize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 846
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public steModifyChannel(II)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "direction"    # I

    .line 935
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 936
    return v1

    .line 940
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steModifyChannel(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 945
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public steSendText(ILjava/lang/String;I)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "len"    # I

    .line 1019
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1020
    return v1

    .line 1023
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSendText(ILjava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1027
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public steSetCallOptions(IZ)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "isRtcpOnCall"    # Z

    .line 977
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 978
    return v1

    .line 982
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steSetCallOptions(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 987
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 34
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

    .line 854
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v33, -0x1

    if-nez v2, :cond_0

    .line 855
    return v33

    .line 859
    :cond_0
    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, p26

    move-object/from16 v29, p27

    move-object/from16 v30, p28

    move-object/from16 v31, p29

    move-object/from16 v32, p30

    :try_start_0
    invoke-interface/range {v2 .. v32}, Lcom/sec/sve/ISecVideoEngineService;->steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 865
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 866
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 869
    .end local v0    # "e":Landroid/os/RemoteException;
    return v33
.end method

.method public steSetNetId(II)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "netId"    # I

    .line 991
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 992
    return v1

    .line 996
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steSetNetId(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 997
    :catch_0
    move-exception v0

    .line 998
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1001
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public steSetRtcpOnCall(III)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "rr"    # I
    .param p3, "rs"    # I

    .line 1045
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1046
    return v1

    .line 1050
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpOnCall(III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1055
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public steSetRtcpTimeout(IJ)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "sec"    # J

    .line 1059
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1060
    return v1

    .line 1064
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpTimeout(IJ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1069
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public steSetRtcpXr(IIIII[I)I
    .locals 8
    .param p1, "channel"    # I
    .param p2, "flag"    # I
    .param p3, "blocks"    # I
    .param p4, "statflags"    # I
    .param p5, "rttmode"    # I
    .param p6, "maxsizesInt"    # [I

    .line 949
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v7, -0x1

    if-nez v0, :cond_0

    .line 950
    return v7

    .line 954
    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpXr(IIIII[I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 959
    .end local v0    # "e":Landroid/os/RemoteException;
    return v7
.end method

.method public steSetRtpTimeout(IJ)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "sec"    # J

    .line 963
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 964
    return v1

    .line 968
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtpTimeout(IJ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 973
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public steSetSessionId(II)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "sessionId"    # I

    .line 1073
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1074
    return v1

    .line 1078
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steSetSessionId(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1083
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public steStartChannel(IIZ)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "enableIpv6"    # Z

    .line 891
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 892
    return v1

    .line 896
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steStartChannel(IIZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 901
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public steStopChannel(I)I
    .locals 2
    .param p1, "channel"    # I

    .line 921
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 922
    return v1

    .line 926
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->steStopChannel(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 931
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 12
    .param p1, "channel"    # I
    .param p2, "dir"    # I
    .param p3, "localIp"    # Ljava/lang/String;
    .param p4, "localPort"    # I
    .param p5, "remoteIp"    # Ljava/lang/String;
    .param p6, "remotePort"    # I
    .param p7, "localRTCPPort"    # I
    .param p8, "remoteRTCPPort"    # I

    .line 906
    move-object v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v11, -0x1

    if-nez v2, :cond_0

    .line 907
    return v11

    .line 911
    :cond_0
    move v3, p1

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    :try_start_0
    invoke-interface/range {v2 .. v10}, Lcom/sec/sve/ISecVideoEngineService;->steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 913
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 914
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 917
    .end local v0    # "e":Landroid/os/RemoteException;
    return v11
.end method

.method public stopEmoji(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 1622
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 1623
    return-void

    .line 1627
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopEmoji(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1630
    goto :goto_0

    .line 1628
    :catch_0
    move-exception v0

    .line 1629
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1631
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I
    .locals 22
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

    .line 1495
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v21, -0x1

    if-nez v2, :cond_0

    .line 1496
    return v21

    .line 1500
    :cond_0
    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move-wide/from16 v18, p16

    move-object/from16 v20, p18

    :try_start_0
    invoke-interface/range {v2 .. v20}, Lcom/sec/sve/ISecVideoEngineService;->sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1504
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1508
    .end local v0    # "e":Landroid/os/RemoteException;
    return v21
.end method

.method public sveCreateChannel()I
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 517
    return v1

    .line 521
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/sve/ISecVideoEngineService;->sveCreateChannel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 526
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveGetCodecCapacity(I)Ljava/lang/String;
    .locals 2
    .param p1, "codecMaxLen"    # I

    .line 715
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 716
    return-object v1

    .line 720
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveGetCodecCapacity(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 725
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;
    .locals 2
    .param p1, "sessionId"    # I

    .line 701
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 702
    return-object v1

    .line 706
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 711
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;
    .locals 2
    .param p1, "sessionId"    # I

    .line 771
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 772
    return-object v1

    .line 776
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 781
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "audioId"    # I
    .param p4, "audioSampleRate"    # I
    .param p5, "audioCodec"    # Ljava/lang/String;
    .param p6, "videoId"    # I

    .line 1479
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v7, -0x1

    if-nez v0, :cond_0

    .line 1480
    return v7

    .line 1484
    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1485
    :catch_0
    move-exception v0

    .line 1486
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1489
    .end local v0    # "e":Landroid/os/RemoteException;
    return v7
.end method

.method public sveRecorderDelete(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 1512
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1513
    return v1

    .line 1517
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderDelete(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1518
    :catch_0
    move-exception v0

    .line 1519
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1522
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveRecorderStart(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 1526
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1527
    return v1

    .line 1531
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderStart(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1532
    :catch_0
    move-exception v0

    .line 1533
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1536
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveRecorderStop(IZ)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "saveFile"    # Z

    .line 1540
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1541
    return v1

    .line 1545
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderStop(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1546
    :catch_0
    move-exception v0

    .line 1547
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1550
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveSendGeneralEvent(IIILjava/lang/String;)I
    .locals 2
    .param p1, "event"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/String;

    .line 757
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 758
    return v1

    .line 762
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->sveSendGeneralEvent(IIILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 767
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I
    .locals 30
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

    .line 578
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v29, -0x1

    if-nez v2, :cond_0

    .line 579
    return v29

    .line 583
    :cond_0
    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    move-object/from16 v25, p23

    move/from16 v26, p24

    move/from16 v27, p25

    move/from16 v28, p26

    :try_start_0
    invoke-interface/range {v2 .. v28}, Lcom/sec/sve/ISecVideoEngineService;->sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 588
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 592
    .end local v0    # "e":Landroid/os/RemoteException;
    return v29
.end method

.method public sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 12
    .param p1, "channel"    # I
    .param p2, "localIp"    # Ljava/lang/String;
    .param p3, "localPort"    # I
    .param p4, "remoteIp"    # Ljava/lang/String;
    .param p5, "remotePort"    # I
    .param p6, "localRTCPPort"    # I
    .param p7, "remoteRTCPPort"    # I
    .param p8, "crbtType"    # I

    .line 559
    move-object v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v11, -0x1

    if-nez v2, :cond_0

    .line 560
    return v11

    .line 564
    :cond_0
    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    :try_start_0
    invoke-interface/range {v2 .. v10}, Lcom/sec/sve/ISecVideoEngineService;->sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 565
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 569
    .end local v0    # "e":Landroid/os/RemoteException;
    return v11
.end method

.method public sveSetHeldInfo(IZZ)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "isLocal"    # Z
    .param p3, "isHeld"    # Z

    .line 687
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 688
    return v1

    .line 692
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sveSetHeldInfo(IZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 697
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveSetMediaConfig(IZIZIII)I
    .locals 9
    .param p1, "sessionId"    # I
    .param p2, "timeOutOnBoth"    # Z
    .param p3, "rtpTimeout"    # I
    .param p4, "rtpKeepAlive"    # Z
    .param p5, "rtcpTimeout"    # I
    .param p6, "mtuSize"    # I
    .param p7, "mno"    # I

    .line 636
    const/16 v8, 0x7d0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/SecVideoEngineManager;->sveSetMediaConfig(IZIZIIII)I

    move-result v0

    return v0
.end method

.method public sveSetMediaConfig(IZIZIIII)I
    .locals 14
    .param p1, "sessionId"    # I
    .param p2, "timeOutOnBoth"    # Z
    .param p3, "rtpTimeout"    # I
    .param p4, "rtpKeepAlive"    # Z
    .param p5, "rtcpTimeout"    # I
    .param p6, "mtuSize"    # I
    .param p7, "mno"    # I
    .param p8, "keepAliveInterval"    # I

    .line 642
    move-object v1, p0

    iget-object v0, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 643
    return v2

    .line 646
    :cond_0
    iget-object v0, v1, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sveSetMediaConfig keepAliveInterval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :try_start_0
    iget-object v5, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-interface/range {v5 .. v13}, Lcom/sec/sve/ISecVideoEngineService;->sveSetMediaConfig(IZIZIIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 654
    .end local v0    # "e":Landroid/os/RemoteException;
    return v2
.end method

.method public sveSetNetworkQoS(IIII)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "ul_bler"    # I
    .param p3, "dl_bler"    # I
    .param p4, "grant"    # I

    .line 743
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 744
    return v1

    .line 748
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->sveSetNetworkQoS(IIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 753
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveSetSRTPParams(IIIICI[BI[BI)I
    .locals 14
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

    .line 619
    move-object v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v13, -0x1

    if-nez v2, :cond_0

    .line 620
    iget-object v0, v1, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SVE service is not ready!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v13

    .line 625
    :cond_0
    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    :try_start_0
    invoke-interface/range {v2 .. v12}, Lcom/sec/sve/ISecVideoEngineService;->sveSetGcmSrtpParams(IIIICI[BI[BI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 627
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 631
    .end local v0    # "e":Landroid/os/RemoteException;
    return v13
.end method

.method public sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I
    .locals 17
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

    .line 600
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v16, -0x1

    if-nez v2, :cond_0

    .line 601
    return v16

    .line 605
    :cond_0
    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    :try_start_0
    invoke-interface/range {v2 .. v15}, Lcom/sec/sve/ISecVideoEngineService;->sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 609
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    return v16
.end method

.method public sveSetVideoPlayDelay(II)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "delayTime"    # I

    .line 729
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 730
    return v1

    .line 734
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveSetVideoPlayDelay(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 739
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveStartCamera(II)I
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "cameraId"    # I

    .line 658
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SVE service is not ready!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return v1

    .line 664
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartCamera(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 669
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveStartChannel(III)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "oldDirection"    # I
    .param p3, "newDirection"    # I

    .line 530
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 531
    return v1

    .line 535
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sveStartChannel(III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 540
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveStartRecording(II)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "direction"    # I

    .line 1582
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1583
    return v1

    .line 1587
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartRecording(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1588
    :catch_0
    move-exception v0

    .line 1589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1592
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveStopCamera()I
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 674
    return v1

    .line 678
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/sve/ISecVideoEngineService;->sveStopCamera()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 683
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveStopChannel(I)I
    .locals 2
    .param p1, "channel"    # I

    .line 544
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 545
    return v1

    .line 549
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopChannel(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 554
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sveStopRecording(I)I
    .locals 2
    .param p1, "channel"    # I

    .line 1596
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1597
    return v1

    .line 1601
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopRecording(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1602
    :catch_0
    move-exception v0

    .line 1603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1606
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public switchCamera()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 149
    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/sve/ISecVideoEngineService;->switchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 157
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/sve/ICmcMediaEventListener;

    .line 824
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForCmcEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 826
    return-void

    .line 830
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 834
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/sve/IImsMediaEventListener;

    .line 798
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForMediaEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 800
    return-void

    .line 804
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/sve/ISecVideoEngineService;->unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 808
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
