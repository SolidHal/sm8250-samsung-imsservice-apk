.class Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;
.super Ljava/lang/Object;
.source "KeepAliveSender.java"


# static fields
.field private static final KEEPALIVE_INTERVAL:I = 0x7d0

.field private static final KEEPALIVE_INTERVAL_CMCC:I = 0x1f40


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mIpAddr:Ljava/lang/String;

.field private volatile mIsRunning:Z

.field private final mLock:Ljava/lang/Object;

.field private mMno:Lcom/sec/internal/constants/Mno;

.field mPort:I

.field private mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mTask:Ljava/lang/Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Ljava/lang/String;ILcom/sec/internal/constants/Mno;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "regi"    # Lcom/sec/ims/ImsRegistration;
    .param p3, "ipAddr"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 24
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    .line 30
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mLock:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 37
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 39
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    .line 40
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    .line 41
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    .line 42
    if-nez v0, :cond_0

    .line 43
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 44
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "KeepAlive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$start$0$KeepAliveSender()V
    .locals 12

    .line 72
    const v0, 0xafd8

    .line 73
    .local v0, "srcPort":I
    const/4 v1, 0x0

    .line 75
    .local v1, "s":Ljava/net/DatagramSocket;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    const v4, 0xafd8

    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(I)V

    move-object v1, v3

    .line 76
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 77
    .local v3, "addr":Ljava/net/InetAddress;
    const/4 v4, 0x4

    new-array v4, v4, [B

    const/16 v5, 0xd

    aput-byte v5, v4, v2

    const/16 v6, 0xa

    const/4 v7, 0x1

    aput-byte v6, v4, v7

    const/4 v8, 0x2

    aput-byte v5, v4, v8

    const/4 v5, 0x3

    aput-byte v6, v4, v5

    .line 81
    .local v4, "dummy":[B
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v6, :cond_0

    .line 82
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 85
    :cond_0
    const/4 v6, 0x0

    .line 88
    .local v6, "mNeedSend":Z
    :goto_0
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->VIVA_BAHRAIN:Lcom/sec/internal/constants/Mno;

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    if-ne v9, v10, :cond_2

    :cond_1
    if-eqz v6, :cond_3

    .line 90
    :cond_2
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KeepAliveSender: send dummy.txt.txt UDP to ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " ..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v9, Ljava/net/DatagramPacket;

    array-length v10, v4

    iget v11, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-direct {v9, v4, v10, v3, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 93
    .local v9, "p":Ljava/net/DatagramPacket;
    invoke-virtual {v1, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 96
    .end local v9    # "p":Ljava/net/DatagramPacket;
    :cond_3
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    new-array v10, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v11, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v11, v10, v2

    sget-object v11, Lcom/sec/internal/constants/Mno;->VIVA_BAHRAIN:Lcom/sec/internal/constants/Mno;

    aput-object v11, v10, v7

    sget-object v11, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    aput-object v11, v10, v8

    invoke-virtual {v9, v10}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 99
    const-wide/16 v9, 0x1f40

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 103
    :cond_4
    const-wide/16 v9, 0x7d0

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 105
    :goto_1
    const/4 v6, 0x1

    .line 107
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :try_start_1
    iget-boolean v10, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    if-nez v10, :cond_5

    .line 109
    monitor-exit v9

    .line 115
    .end local v3    # "addr":Ljava/net/InetAddress;
    .end local v4    # "dummy":[B
    .end local v6    # "mNeedSend":Z
    goto :goto_2

    .line 111
    .restart local v3    # "addr":Ljava/net/InetAddress;
    .restart local v4    # "dummy":[B
    .restart local v6    # "mNeedSend":Z
    :cond_5
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "srcPort":I
    .end local v1    # "s":Ljava/net/DatagramSocket;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;
    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    .end local v3    # "addr":Ljava/net/InetAddress;
    .end local v4    # "dummy":[B
    .end local v6    # "mNeedSend":Z
    .restart local v0    # "srcPort":I
    .restart local v1    # "s":Ljava/net/DatagramSocket;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v1, :cond_6

    .line 117
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 120
    :cond_6
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    .line 121
    return-void
.end method

.method public start()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: start: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: start() - already running."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.ims.blockvzwka"

    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 58
    .local v0, "isKeepAliveBlocked":Z
    if-eqz v0, :cond_1

    .line 59
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v2, "KeepAliveSender: blocked by system properties!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 65
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v2, "KeepAliveSender: acquire WakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    .line 70
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$KeepAliveSender$X4giZq8lY7f-7R8XBztDvscW4h8;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$KeepAliveSender$X4giZq8lY7f-7R8XBztDvscW4h8;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    .line 123
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 124
    return-void
.end method

.method public stop()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: release WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 145
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 149
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    .line 150
    return-void

    .line 140
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
