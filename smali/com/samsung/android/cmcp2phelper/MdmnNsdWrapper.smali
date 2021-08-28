.class public Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;
.super Ljava/lang/Object;
.source "MdmnNsdWrapper.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mLogHandler:Landroid/os/Handler;

.field mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

.field mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

.field mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "MdmnNsdWrapper Version 1.1.10"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    .line 42
    return-void
.end method

.method private static getLocalIpAddress()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 234
    .local v1, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 236
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_0

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    .line 237
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 239
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    goto :goto_1

    .line 240
    .end local v1    # "intf":Ljava/net/NetworkInterface;
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    goto :goto_0

    .line 243
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    goto :goto_2

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 244
    .end local v0    # "ex":Ljava/net/SocketException;
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getSupportDevices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->getDeviceList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public printCache()V
    .locals 0

    .line 52
    return-void
.end method

.method public setLogHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "logHandler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mLogHandler:Landroid/os/Handler;

    .line 225
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->setLogHandler(Landroid/os/Handler;)V

    .line 227
    return-void
.end method

.method public setServiceInfo(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V
    .locals 3
    .param p1, "serviceInfo"    # Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->stop()V

    .line 57
    new-instance v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    .line 58
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->start()V

    .line 59
    return-void
.end method

.method public start()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 65
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 66
    .local v2, "isEnabled":Z
    if-nez v2, :cond_0

    .line 67
    sget-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "wifi is not enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->stop()V

    .line 69
    return-void

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 73
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_2

    .line 74
    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v3, :cond_1

    .line 75
    const-string v3, "cmcp2phelper"

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v3}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->start()V

    .line 82
    return-void
.end method

.method public startDiscovery(Landroid/os/Handler;ILjava/util/ArrayList;)I
    .locals 10
    .param p1, "callbackHanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 152
    .local p3, "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->clearCache()V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "service info is not avaliable"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 162
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 163
    .local v2, "isEnabled":Z
    if-nez v2, :cond_1

    .line 164
    sget-object v3, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wifi is not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v3}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->stop()V

    .line 166
    return v1

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    if-nez v3, :cond_2

    .line 170
    sget-object v3, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "NSDWrapper is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v1

    .line 173
    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->start()V

    .line 176
    invoke-static {p1, p2}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->setCallback(Landroid/os/Handler;I)V

    .line 177
    if-eqz p3, :cond_3

    .line 178
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->setMaxPeer(I)V

    .line 179
    sget-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try discovery : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v4, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v8

    move-object v5, p1

    move v6, p2

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->startDiscoveryUnicast(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 186
    const/4 v1, 0x1

    return v1

    .line 181
    :cond_3
    sget-object v3, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "No ip list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return v1
.end method

.method public startDiscovery(Ljava/util/ArrayList;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 191
    .local p1, "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->clearCache()V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "service info is not avaliable"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v1

    .line 196
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->setCallback(Landroid/os/Handler;I)V

    .line 197
    if-eqz p1, :cond_3

    .line 198
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->setMaxPeer(I)V

    .line 199
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try discovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 207
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 208
    .local v2, "isEnabled":Z
    if-nez v2, :cond_1

    .line 209
    sget-object v3, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wifi is not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v1

    .line 213
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    if-nez v5, :cond_2

    .line 214
    sget-object v3, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "NSDWrapper is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return v1

    .line 218
    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v9

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->startDiscoveryUnicast(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 219
    const/4 v1, 0x1

    return v1

    .line 201
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v2    # "isEnabled":Z
    :cond_3
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No ip list"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return v1
.end method

.method public stop()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->stop()V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 91
    :cond_0
    return-void
.end method
