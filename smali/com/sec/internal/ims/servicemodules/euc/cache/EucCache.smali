.class public Lcom/sec/internal/ims/servicemodules/euc/cache/EucCache;
.super Ljava/lang/Object;
.source "EucCache.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;


# instance fields
.field private mEucrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/cache/EucCache;->mEucrMap:Ljava/util/Map;

    .line 32
    return-void
.end method


# virtual methods
.method public clearAllForOwnIdentity(Ljava/lang/String;)V
    .locals 3
    .param p1, "ownIdentity"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/cache/EucCache;->mEucrMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 67
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getOwnIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 72
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    :cond_0
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method public get(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    .locals 1
    .param p1, "eucMessageKey"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/cache/EucCache;->mEucrMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    return-object v0
.end method

.method public getAllByType(Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)Ljava/lang/Iterable;
    .locals 4
    .param p1, "type"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "eucQueries":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/cache/EucCache;->mEucrMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getEucType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/cache/EucCache;->mEucrMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    .locals 7
    .param p1, "euc"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 36
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    .line 37
    .local v0, "eucData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/cache/EucCache;->mEucrMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v5

    .line 38
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    .line 37
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public remove(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    .locals 1
    .param p1, "eucMessageKey"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/cache/EucCache;->mEucrMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    return-object v0
.end method
