.class public Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;
.super Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;
.source "CphMulticastSender.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
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

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BILandroid/os/Handler;I)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "message"    # [B
    .param p4, "length"    # I
    .param p5, "callbackHandler"    # Landroid/os/Handler;
    .param p6, "what"    # I

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mIp:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mPort:I

    .line 28
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mMessage:[B

    .line 29
    iput p4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mLength:I

    .line 30
    iput-object p5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mCallbackHandler:Landroid/os/Handler;

    .line 31
    iput p6, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mCallbackwhat:I

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 38
    const-string v0, "[M-->]"

    sget-object v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "send multicast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "group":Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 43
    .local v2, "socket":Ljava/net/MulticastSocket;
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mIp:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v1, v4

    .line 44
    new-instance v4, Ljava/net/MulticastSocket;

    iget v5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mPort:I

    invoke-direct {v4, v5}, Ljava/net/MulticastSocket;-><init>(I)V

    move-object v2, v4

    .line 45
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V

    .line 46
    invoke-virtual {v2, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->LOG_TAG:Ljava/lang/String;

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    invoke-static {v3}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->notify(Z)V

    goto :goto_1

    .line 53
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 54
    .local v4, "e":Ljava/net/SocketException;
    sget-object v5, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->LOG_TAG:Ljava/lang/String;

    const-string v6, "SocketException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v4}, Ljava/net/SocketException;->printStackTrace()V

    .line 57
    invoke-static {v3}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->notify(Z)V

    .end local v4    # "e":Ljava/net/SocketException;
    goto :goto_0

    .line 47
    :catch_2
    move-exception v4

    .line 48
    .local v4, "e":Ljava/net/UnknownHostException;
    sget-object v5, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->LOG_TAG:Ljava/lang/String;

    const-string v6, "UnknownHostException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 52
    invoke-static {v3}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->notify(Z)V

    .line 63
    .end local v4    # "e":Ljava/net/UnknownHostException;
    :goto_0
    nop

    .line 66
    :goto_1
    new-instance v4, Ljava/net/DatagramPacket;

    iget-object v5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mMessage:[B

    iget v6, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mLength:I

    iget v7, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mPort:I

    invoke-direct {v4, v5, v6, v1, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 68
    .local v4, "packet":Ljava/net/DatagramPacket;
    :try_start_1
    sget-object v5, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mMessage:[B

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->mMessage:[B

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "log":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphMulticastSender;->print(Ljava/lang/String;)V

    .line 73
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    const/16 v6, 0x9

    if-ge v5, v6, :cond_1

    .line 74
    invoke-virtual {v2, v4}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 76
    const-wide/16 v6, 0x64

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 86
    nop

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 77
    :catch_3
    move-exception v6

    .line 78
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 80
    invoke-static {v3}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->notify(Z)V

    .line 81
    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v2}, Ljava/net/MulticastSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 83
    const/4 v2, 0x0

    .line 85
    :cond_0
    return-void

    .line 105
    .end local v0    # "log":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_1
    goto :goto_3

    .line 103
    :catch_4
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method
