.class public Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;
.super Landroid/os/Handler;
.source "NetworkStatsOnPortHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NetworkStatsOnPortHandler"

.field public static final START:I = 0x1

.field public static final STOP:I = 0x2


# instance fields
.field private mIface:Ljava/lang/String;

.field private mLocalVideoRtcp:I

.field private mLocalVideoRtp:I

.field mMno:Lcom/sec/internal/constants/Mno;

.field private mPhoneId:I

.field private mRemoteVideoRtcp:I

.field private mRemoteVideoRtp:I

.field private mReportingNetworkStatsOnPort:Z


# direct methods
.method public constructor <init>(ILcom/sec/internal/constants/Mno;Landroid/os/Looper;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 32
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    .line 22
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    .line 23
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    .line 24
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    .line 25
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mPhoneId:I

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    .line 27
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mMno:Lcom/sec/internal/constants/Mno;

    .line 29
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mReportingNetworkStatsOnPort:Z

    .line 33
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mMno:Lcom/sec/internal/constants/Mno;

    .line 34
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mPhoneId:I

    .line 35
    return-void
.end method

.method private start()V
    .locals 6

    .line 38
    const-string v0, "NetworkStatsOnPortHandler"

    const-string v1, "NetworkStatsOnPort Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mMno:Lcom/sec/internal/constants/Mno;

    .line 41
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 46
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mReportingNetworkStatsOnPort:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 47
    const-string/jumbo v1, "startNetworkStatsOnPorts: already triggered, ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 52
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ")"

    if-eqz v1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    if-eqz v1, :cond_2

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNetworkStatsOnPorts: LocalVideoRtpPort("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") RemoteVideoRtpPort("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    invoke-direct {p0, v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->startNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 59
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    if-eqz v1, :cond_3

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNetworkStatsOnPorts: LocalVideoRtcpPort("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") RemoteVideoRtcpPort("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->startNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 66
    :cond_3
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mReportingNetworkStatsOnPort:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 70
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void

    .line 42
    :cond_4
    :goto_1
    const-string/jumbo v1, "skip startNetworkStatsOnPorts. (vendor req)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method private startNetworkStatsOnPorts(Ljava/lang/String;II)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "sPort"    # I
    .param p3, "dPort"    # I

    .line 73
    nop

    .line 74
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 77
    .local v0, "sNwMgrService":Landroid/os/INetworkManagementService;
    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->startNetworkStatsOnPorts(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 83
    :goto_1
    return-void
.end method

.method private stop()V
    .locals 5

    .line 98
    const-string v0, "NetworkStatsOnPortHandler"

    const-string v1, "NetworkStatsOnPort Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mReportingNetworkStatsOnPort:Z

    if-nez v1, :cond_0

    .line 101
    const-string/jumbo v1, "stopNetworkStatsOnPorts - startNetworkStatsOnPorts not called, ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 107
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ")"

    if-eqz v1, :cond_1

    :try_start_1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    if-eqz v1, :cond_1

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopNetworkStatsOnPorts: LocalVideoRtpPort("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") RemoteVideoRtpPort("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 113
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    if-eqz v1, :cond_2

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopNetworkStatsOnPorts: LocalVideoRtcpPort("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") RemoteVideoRtcpPort("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 120
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mReportingNetworkStatsOnPort:Z

    .line 121
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->setVideoPort(IIII)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 125
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method private stopNetworkStatsOnPorts(Ljava/lang/String;II)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "sPort"    # I
    .param p3, "dPort"    # I

    .line 86
    nop

    .line 87
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 89
    .local v0, "sNwMgrService":Landroid/os/INetworkManagementService;
    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 95
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized getNetworkStatsVideoCall()J
    .locals 9

    monitor-enter p0

    .line 148
    :try_start_0
    const-string v0, "network_management"

    .line 149
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .local v0, "sNwMgrService":Landroid/os/INetworkManagementService;
    const-wide/16 v1, 0x0

    .line 152
    .local v1, "dataUsage":J
    if-eqz v0, :cond_1

    .line 153
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    invoke-interface {v0, v3, v4, v5}, Landroid/os/INetworkManagementService;->getNetworkStatsVideoCall(Ljava/lang/String;II)Landroid/net/NetworkStats;

    move-result-object v3

    .line 154
    .local v3, "networkStatsRtp":Landroid/net/NetworkStats;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    invoke-interface {v0, v4, v5, v6}, Landroid/os/INetworkManagementService;->getNetworkStatsVideoCall(Ljava/lang/String;II)Landroid/net/NetworkStats;

    move-result-object v4

    .line 155
    .local v4, "networkStatsRtcp":Landroid/net/NetworkStats;
    if-eqz v3, :cond_0

    .line 156
    const-string v5, "NetworkStatsOnPortHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNetworkStatsVideoCall networkStatsRtp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v3}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 160
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;
    :cond_0
    if-eqz v4, :cond_1

    .line 161
    const-string v5, "NetworkStatsOnPortHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNetworkStatsVideoCall networkStatsRtcp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v4}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v1, v5

    goto :goto_0

    .line 165
    .end local v3    # "networkStatsRtp":Landroid/net/NetworkStats;
    .end local v4    # "networkStatsRtcp":Landroid/net/NetworkStats;
    :catch_0
    move-exception v3

    .line 166
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 167
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    nop

    .line 168
    :goto_1
    monitor-exit p0

    return-wide v1

    .line 147
    .end local v0    # "sNwMgrService":Landroid/os/INetworkManagementService;
    .end local v1    # "dataUsage":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 129
    if-nez p1, :cond_0

    .line 130
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStatsOnPortHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore Network Stat Event "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->stop()V

    .line 140
    goto :goto_0

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->start()V

    .line 137
    nop

    .line 145
    :goto_0
    return-void
.end method

.method public declared-synchronized setInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    monitor-enter p0

    .line 179
    if-eqz p1, :cond_0

    .line 180
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;
    .end local p1    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 182
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;
    .restart local p1    # "iface":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setVideoPort(IIII)V
    .locals 0
    .param p1, "localRtp"    # I
    .param p2, "remoteRtp"    # I
    .param p3, "localRtcp"    # I
    .param p4, "remoteRtcp"    # I

    monitor-enter p0

    .line 172
    :try_start_0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    .line 173
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    .line 174
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    .line 175
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 171
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;
    .end local p1    # "localRtp":I
    .end local p2    # "remoteRtp":I
    .end local p3    # "localRtcp":I
    .end local p4    # "remoteRtcp":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
