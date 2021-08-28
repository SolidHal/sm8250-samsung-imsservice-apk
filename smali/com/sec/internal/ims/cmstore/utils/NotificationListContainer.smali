.class public Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;
.super Ljava/lang/Object;
.source "NotificationListContainer.java"


# static fields
.field private static final MAX_SIZE:I = 0x3c

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;


# instance fields
.field private container:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "[",
            "Lcom/sec/internal/omanetapi/nc/data/NotificationList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->sInstance:Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    .line 12
    const-class v0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->container:Ljava/util/TreeMap;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;
    .locals 1

    .line 21
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->sInstance:Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->container:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 55
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertContainer(Ljava/lang/Long;[Lcom/sec/internal/omanetapi/nc/data/NotificationList;)V
    .locals 3
    .param p1, "index"    # Ljava/lang/Long;
    .param p2, "notificationList"    # [Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    monitor-enter p0

    .line 25
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertContainer, index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",container.size()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->container:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->container:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    .line 27
    monitor-exit p0

    return-void

    .line 29
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->container:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 24
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;
    .end local p1    # "index":Ljava/lang/Long;
    .end local p2    # "notificationList":[Lcom/sec/internal/omanetapi/nc/data/NotificationList;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->container:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 52
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peekFirstIndex()J
    .locals 5

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->container:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 34
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 36
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->container:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 37
    .local v0, "index":J
    sget-object v2, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peekFirstIndex, index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit p0

    return-wide v0

    .line 32
    .end local v0    # "index":J
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized popFirstEntry()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "[",
            "Lcom/sec/internal/omanetapi/nc/data/NotificationList;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->container:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 45
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->container:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 46
    .local v0, "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;[Lcom/sec/internal/omanetapi/nc/data/NotificationList;>;"
    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "popFirstEntry, index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->container:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit p0

    return-object v0

    .line 41
    .end local v0    # "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;[Lcom/sec/internal/omanetapi/nc/data/NotificationList;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
