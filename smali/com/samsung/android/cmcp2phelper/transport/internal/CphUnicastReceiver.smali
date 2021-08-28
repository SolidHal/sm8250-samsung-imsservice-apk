.class public Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;
.super Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;
.source "CphUnicastReceiver.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_PACKET_LENGTH:I = 0x578


# instance fields
.field mRecvPort:I

.field mSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V
    .locals 0
    .param p1, "callbackHandler"    # Landroid/os/Handler;
    .param p2, "recvPort"    # I
    .param p3, "serviceInfo"    # Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mCallbackHandler:Landroid/os/Handler;

    .line 39
    iput p2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mRecvPort:I

    .line 40
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V
    .locals 1
    .param p1, "callbackHandler"    # Landroid/os/Handler;
    .param p2, "serviceInfo"    # Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mCallbackHandler:Landroid/os/Handler;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mRecvPort:I

    .line 35
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 36
    return-void
.end method


# virtual methods
.method public getRecvPort()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 6

    .line 47
    :try_start_0
    iget v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mRecvPort:I

    if-gez v0, :cond_0

    .line 48
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/net/DatagramSocket;

    iget v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mRecvPort:I

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    .line 55
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Unicast Reponder : port - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->print(Ljava/lang/String;)V

    .line 57
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    const/16 v0, 0x578

    new-array v0, v0, [B

    .line 60
    .local v0, "buf":[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .local v1, "recv":Ljava/net/DatagramPacket;
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 64
    invoke-static {}, Lcom/samsung/android/cmcp2phelper/BuildConstants;->isUserBinary()Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[U<--]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "log":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->print(Ljava/lang/String;)V

    .line 69
    .end local v2    # "log":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->handleReceivedMessage(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    goto :goto_2

    .line 71
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    sget-object v3, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "socket is closed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "buf":[B
    .end local v1    # "recv":Ljava/net/DatagramPacket;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    goto :goto_1

    .line 77
    :cond_2
    const-string v0, "Stop Unicast Reponder"

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    goto :goto_3

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 81
    sget-object v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SocketException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v1, "SocketException- Unicast Receiver"

    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->print(Ljava/lang/String;)V

    .line 85
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_3
    return-void
.end method

.method public stop()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop responder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->mSocket:Ljava/net/DatagramSocket;

    .line 101
    :cond_0
    return-void
.end method
