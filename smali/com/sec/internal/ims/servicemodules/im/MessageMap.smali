.class public Lcom/sec/internal/ims/servicemodules/im/MessageMap;
.super Ljava/lang/Object;
.source "MessageMap.java"


# instance fields
.field private final mChatIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mChatImdnIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mImdnIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mImdnIdMap:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatIdMap:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatImdnIdMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic lambda$put$0(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$put$1(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 22
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 3
    .param p1, "id"    # I

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-ltz p1, :cond_0

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-object v1, v2

    .line 33
    :cond_0
    monitor-exit v0

    return-object v1

    .line 34
    .end local v1    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 4
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 41
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mImdnIdMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-object v1, v3

    .line 44
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;"
    :cond_0
    monitor-exit v0

    return-object v1

    .line 45
    .end local v1    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 5
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "chatId"    # Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatImdnIdMap:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 53
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    if-eqz v2, :cond_0

    .line 54
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;"
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-object v1, v4

    .line 58
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;"
    :cond_0
    monitor-exit v0

    return-object v1

    .line 59
    .end local v1    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 64
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    const/4 v2, 0x0

    .local v2, "keyId":I
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "keyId":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 69
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 74
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatIdMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 77
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    if-eqz v2, :cond_0

    .line 78
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :cond_0
    monitor-exit v0

    return-object v1

    .line 82
    .end local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 5
    .param p1, "m"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 87
    if-eqz p1, :cond_4

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    if-lez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 93
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;"
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 94
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 97
    :cond_1
    if-eqz v1, :cond_2

    .line 98
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mImdnIdMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 102
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    if-lez v2, :cond_3

    .line 103
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$MessageMap$k72fc8brQE4haDrUOnQwj373ie4;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$MessageMap$k72fc8brQE4haDrUOnQwj373ie4;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 104
    .local v2, "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .end local v2    # "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :cond_3
    if-eqz v1, :cond_4

    .line 107
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatImdnIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$MessageMap$IfOhQABfjohSuy8Veht_DdWbtlA;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$MessageMap$IfOhQABfjohSuy8Veht_DdWbtlA;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 108
    .local v2, "imdnIdMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;"
    .end local v2    # "imdnIdMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :cond_4
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(I)V
    .locals 6
    .param p1, "id"    # I

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 117
    if-lez p1, :cond_3

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 119
    .local v1, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 120
    if-eqz v1, :cond_3

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;"
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 123
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 126
    :cond_0
    if-eqz v2, :cond_1

    .line 127
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mImdnIdMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 131
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 132
    .local v3, "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    if-eqz v3, :cond_2

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatImdnIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 136
    .local v4, "imdnIdMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    if-eqz v4, :cond_3

    .line 137
    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .end local v1    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;"
    .end local v3    # "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    .end local v4    # "imdnIdMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :cond_3
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
