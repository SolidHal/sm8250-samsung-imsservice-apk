.class public Lcom/samsung/android/cmcp2phelper/transport/CphManager;
.super Ljava/lang/Object;
.source "CphManager.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field static final MAX_THREAD:I = 0x10

.field private static final MULTICAST_IP:Ljava/lang/String; = "239.255.255.250"

.field private static final MULTICAST_PORT:I = 0x26ac

.field private static final UNICAST_PORT:I = 0xc750

.field private static final UNICAST_PORT2:I = 0xcb38

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field mContext:Landroid/content/Context;

.field mLogHandler:Landroid/os/Handler;

.field mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

.field mUnicastReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

.field mUnicastReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    .line 44
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInfo"    # Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 65
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 69
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 71
    return-void
.end method


# virtual methods
.method public getLocalIpAddress()Ljava/lang/String;
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 134
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 137
    .local v1, "ipAddress":I
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    .line 141
    :cond_0
    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 145
    .local v2, "ipByteArray":[B
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v3, "ipAddressString":Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v3    # "ipAddressString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 147
    .local v3, "ex":Ljava/net/UnknownHostException;
    const-string v4, "cmcp2phelper"

    const-string v5, "Unable to get host address."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v4, 0x0

    move-object v3, v4

    .line 151
    .local v3, "ipAddressString":Ljava/lang/String;
    :goto_0
    return-object v3
.end method

.method public setLogHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "logHandler"    # Landroid/os/Handler;

    .line 128
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method public start()V
    .locals 4

    .line 74
    const-string v0, "cmcp2phelper"

    const-string/jumbo v1, "start NSD"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    const v2, 0xc750

    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;-><init>(Landroid/os/Handler;ILcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    .line 78
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->enableApplicationLog(Landroid/os/Handler;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    const v2, 0xcb38

    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;-><init>(Landroid/os/Handler;ILcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    .line 84
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->enableApplicationLog(Landroid/os/Handler;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    .line 89
    :cond_1
    return-void
.end method

.method public startDiscoveryUnicast(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 14
    .param p1, "callbackHandler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "impu"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p5, "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    new-instance v9, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const v8, 0xc750

    move-object v1, v9

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(IDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    .local v1, "sendMsg":Lcom/samsung/android/cmcp2phelper/data/CphMessage;
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 112
    .local v3, "ip":Ljava/lang/String;
    new-instance v11, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;

    const v6, 0xc750

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v4

    array-length v8, v4

    move-object v4, v11

    move-object v5, v3

    move-object v9, p1

    move/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;-><init>(Ljava/lang/String;I[BILandroid/os/Handler;I)V

    .line 113
    .local v4, "sender":Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;
    iget-object v5, v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->enableApplicationLog(Landroid/os/Handler;)V

    .line 114
    invoke-static {v4}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    .line 117
    .end local v3    # "ip":Ljava/lang/String;
    .end local v4    # "sender":Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;
    goto :goto_0

    .line 119
    :cond_0
    new-instance v2, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    const/4 v7, 0x1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v12

    const v13, 0xcb38

    move-object v6, v2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(IDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    .local v2, "sendMsg2":Lcom/samsung/android/cmcp2phelper/data/CphMessage;
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 121
    .local v4, "ip":Ljava/lang/String;
    new-instance v12, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;

    const v7, 0xcb38

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v8

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v5

    array-length v9, v5

    move-object v5, v12

    move-object v6, v4

    move-object v10, p1

    move/from16 v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;-><init>(Ljava/lang/String;I[BILandroid/os/Handler;I)V

    .line 122
    .local v5, "sender2":Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;
    iget-object v6, v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->enableApplicationLog(Landroid/os/Handler;)V

    .line 123
    invoke-static {v5}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    .line 124
    .end local v4    # "ip":Ljava/lang/String;
    .end local v5    # "sender2":Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;
    goto :goto_1

    .line 125
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 93
    const-string v0, "cmcp2phelper"

    const-string/jumbo v1, "stop NSD"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->stop()V

    .line 96
    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->stop()V

    .line 101
    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    .line 103
    :cond_1
    return-void
.end method
