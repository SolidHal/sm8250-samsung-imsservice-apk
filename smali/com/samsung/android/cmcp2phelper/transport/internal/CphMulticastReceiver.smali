.class public Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;
.super Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;
.source "CphMulticastReceiver.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_PACKET_LENGTH:I = 0x578


# instance fields
.field private isRun:Z

.field mGroup:Ljava/net/InetAddress;

.field private mReceiveSocket:Ljava/net/MulticastSocket;

.field mSocket:Ljava/net/MulticastSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "serviceInfo"    # Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mIp:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mPort:I

    .line 38
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 39
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mIp:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mGroup:Ljava/net/InetAddress;

    .line 59
    new-instance v0, Ljava/net/MulticastSocket;

    iget v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mPort:I

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mSocket:Ljava/net/MulticastSocket;

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mGroup:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    sget-object v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 67
    sget-object v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SocketException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/net/SocketException;
    goto :goto_0

    .line 62
    :catch_2
    move-exception v0

    .line 63
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 64
    sget-object v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "UnknownHostException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_0
    nop

    .line 73
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Multicast Reponder : ip - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->print(Ljava/lang/String;)V

    .line 74
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mSocket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/16 v0, 0x578

    new-array v0, v0, [B

    .line 77
    .local v0, "buf":[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 80
    .local v1, "recv":Ljava/net/DatagramPacket;
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[M<--]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "log":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->print(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->handleReceivedMessage(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 89
    .end local v2    # "log":Ljava/lang/String;
    goto :goto_3

    .line 85
    :catch_3
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    sget-object v3, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "socket is closed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "buf":[B
    .end local v1    # "recv":Ljava/net/DatagramPacket;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    goto :goto_2

    .line 92
    :cond_0
    const-string v0, "Stop Multicast Reponder"

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->print(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public stop()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mSocket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop responder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastReceiver;->mSocket:Ljava/net/MulticastSocket;

    .line 50
    :cond_0
    return-void
.end method
