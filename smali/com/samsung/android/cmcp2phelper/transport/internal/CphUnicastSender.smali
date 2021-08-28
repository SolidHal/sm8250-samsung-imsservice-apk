.class public Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;
.super Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;
.source "CphUnicastSender.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BI)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "message"    # [B
    .param p4, "length"    # I

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mIp:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mPort:I

    .line 30
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mMessage:[B

    .line 31
    iput p4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mLength:I

    .line 32
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

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mIp:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mPort:I

    .line 37
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mMessage:[B

    .line 38
    iput p4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mLength:I

    .line 40
    iput-object p5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mCallbackHandler:Landroid/os/Handler;

    .line 41
    iput p6, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mCallbackwhat:I

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 48
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 49
    .local v0, "socket":Ljava/net/DatagramSocket;
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mIp:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 50
    .local v1, "serverAddr":Ljava/net/InetAddress;
    new-instance v2, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mMessage:[B

    iget v4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mLength:I

    iget v5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mPort:I

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 52
    .local v2, "packet":Ljava/net/DatagramPacket;
    invoke-static {}, Lcom/samsung/android/cmcp2phelper/BuildConstants;->isUserBinary()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[U-->]("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->mMessage:[B

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "log":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->print(Ljava/lang/String;)V

    .line 57
    .end local v3    # "log":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "socket":Ljava/net/DatagramSocket;
    .end local v1    # "serverAddr":Ljava/net/InetAddress;
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .end local v0    # "e":Ljava/net/UnknownHostException;
    goto :goto_0

    .line 61
    :catch_2
    move-exception v0

    .line 62
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 67
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_0
    nop

    .line 69
    :goto_1
    return-void
.end method
