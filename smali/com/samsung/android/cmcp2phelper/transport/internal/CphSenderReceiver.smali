.class public Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;
.super Ljava/lang/Object;
.source "CphSenderReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final TIME_OUT:J = 0x226L


# instance fields
.field protected mCallbackHandler:Landroid/os/Handler;

.field protected mCallbackwhat:I

.field protected mContext:Landroid/content/Context;

.field protected mIp:Ljava/lang/String;

.field protected mLength:I

.field protected mLogHandler:Landroid/os/Handler;

.field protected mMessage:[B

.field protected mPort:I

.field protected mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableApplicationLog(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLogHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method protected handleReceivedMessage(Ljava/net/DatagramPacket;)V
    .locals 9
    .param p1, "recv"    # Ljava/net/DatagramPacket;

    .line 61
    new-instance v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    invoke-direct {v0, p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(Ljava/net/DatagramPacket;)V

    .line 62
    .local v0, "recvMsg":Lcom/samsung/android/cmcp2phelper/data/CphMessage;
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    sget-object v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "invalid message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getLineId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    sget-object v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Line id not matched"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 72
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getMsgType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 74
    new-instance v1, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    const/4 v4, 0x2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(IDLjava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v1, "sendMsg":Lcom/samsung/android/cmcp2phelper/data/CphMessage;
    new-instance v2, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderPort()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v6

    array-length v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;-><init>(Ljava/lang/String;I[BI)V

    .line 76
    .local v2, "sender":Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;
    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLogHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {v2, v3}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;->enableApplicationLog(Landroid/os/Handler;)V

    .line 79
    :cond_2
    invoke-static {v2}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    .line 80
    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->addToCache(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V

    .line 81
    .end local v1    # "sendMsg":Lcom/samsung/android/cmcp2phelper/data/CphMessage;
    .end local v2    # "sender":Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getMsgType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 84
    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->addToCache(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V

    .line 86
    :cond_4
    :goto_0
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 4
    .param p1, "log"    # Ljava/lang/String;

    .line 42
    const-string v0, "cmcp2phelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLogHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 48
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    return-void
.end method

.method public run()V
    .locals 0

    .line 39
    return-void
.end method
