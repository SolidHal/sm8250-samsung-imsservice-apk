.class public Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;
.super Ljava/lang/Object;
.source "CphDeviceManager.java"


# static fields
.field public static final DISCOVERY_FAIL:I = 0x0

.field public static final DISCOVERY_SUCCESS:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String;

.field private static MAX_DISCOVERY_TIME:I

.field private static cacheMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cmcp2phelper/data/CphMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;

.field private static sMaxPeer:I

.field private static sWhat:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    const/16 v0, 0x5dc

    sput v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->MAX_DISCOVERY_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToCache(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V
    .locals 4
    .param p0, "message"    # Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    .line 36
    sget-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    .line 37
    .local v0, "v":Lcom/samsung/android/cmcp2phelper/data/CphMessage;
    if-nez v0, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add to cache : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    sget v2, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sMaxPeer:I

    if-ne v1, v2, :cond_1

    .line 43
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "find all node"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->notify(Z)V

    .line 46
    :cond_1
    return-void
.end method

.method public static addToMyInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "deviceId"    # Ljava/lang/String;
    .param p1, "lineId"    # Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v0, "myInfo":Lcom/samsung/android/cmcp2phelper/data/CphMessage;
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public static declared-synchronized clearCache()V
    .locals 2

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 30
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    .line 31
    const/4 v1, 0x4

    sput v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sMaxPeer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    return-void

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getDeviceList(Ljava/lang/String;)Ljava/util/Collection;
    .locals 7
    .param p0, "goupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;>;"
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "---Reachable contact list----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    .line 57
    .local v2, "info":Lcom/samsung/android/cmcp2phelper/data/CphMessage;
    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getLineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    new-instance v3, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getLineId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v3, "msi":Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;
    sget-object v4, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rechable contact : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v2    # "info":Lcom/samsung/android/cmcp2phelper/data/CphMessage;
    .end local v3    # "msi":Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;
    :cond_0
    goto :goto_0

    .line 63
    :cond_1
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "---end----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v0
.end method

.method public static declared-synchronized notify(Z)V
    .locals 7
    .param p0, "result"    # Z

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 82
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 83
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    .line 84
    sget-object v4, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    sget-object v5, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    sget v6, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sWhat:I

    invoke-virtual {v5, v6, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 87
    :cond_0
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    sget-object v4, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    sget v5, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sWhat:I

    invoke-virtual {v4, v5, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    :goto_0
    sput-object v2, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    monitor-exit v0

    return-void

    .line 80
    .end local p0    # "result":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCallback(Landroid/os/Handler;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 69
    :try_start_0
    sput-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    .line 70
    sput p1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sWhat:I

    .line 71
    if-eqz p0, :cond_0

    .line 72
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    sget v2, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->MAX_DISCOVERY_TIME:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit v0

    return-void

    .line 68
    .end local p0    # "handler":Landroid/os/Handler;
    .end local p1    # "what":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setMaxPeer(I)V
    .locals 1
    .param p0, "maxPeer"    # I

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 77
    :try_start_0
    sput p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sMaxPeer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit v0

    return-void

    .line 76
    .end local p0    # "maxPeer":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
