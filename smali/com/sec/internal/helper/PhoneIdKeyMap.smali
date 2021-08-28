.class public Lcom/sec/internal/helper/PhoneIdKeyMap;
.super Ljava/lang/Object;
.source "PhoneIdKeyMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mSize:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 16
    .local p0, "this":Lcom/sec/internal/helper/PhoneIdKeyMap;, "Lcom/sec/internal/helper/PhoneIdKeyMap<TE;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/PhoneIdKeyMap;->mMap:Ljava/util/Map;

    .line 17
    iput p1, p0, Lcom/sec/internal/helper/PhoneIdKeyMap;->mSize:I

    .line 18
    iput-object p2, p0, Lcom/sec/internal/helper/PhoneIdKeyMap;->mDefaultValue:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 49
    .local p0, "this":Lcom/sec/internal/helper/PhoneIdKeyMap;, "Lcom/sec/internal/helper/PhoneIdKeyMap<TE;>;"
    iget-object v0, p0, Lcom/sec/internal/helper/PhoneIdKeyMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/sec/internal/helper/PhoneIdKeyMap;, "Lcom/sec/internal/helper/PhoneIdKeyMap<TE;>;"
    iget-object v0, p0, Lcom/sec/internal/helper/PhoneIdKeyMap;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, "value":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/helper/PhoneIdKeyMap;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/sec/internal/helper/PhoneIdKeyMap;->mDefaultValue:Ljava/lang/Object;

    .line 32
    :cond_0
    return-object v0
.end method

.method public getKey(Ljava/lang/Object;I)I
    .locals 3
    .param p2, "defaultKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/sec/internal/helper/PhoneIdKeyMap;, "Lcom/sec/internal/helper/PhoneIdKeyMap<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/sec/internal/helper/PhoneIdKeyMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TE;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 44
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TE;>;"
    :cond_0
    goto :goto_0

    .line 45
    :cond_1
    return p2
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 22
    .local p0, "this":Lcom/sec/internal/helper/PhoneIdKeyMap;, "Lcom/sec/internal/helper/PhoneIdKeyMap<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sec/internal/helper/PhoneIdKeyMap;->mSize:I

    if-ge p1, v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/sec/internal/helper/PhoneIdKeyMap;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/sec/internal/helper/PhoneIdKeyMap;, "Lcom/sec/internal/helper/PhoneIdKeyMap<TE;>;"
    iget-object v0, p0, Lcom/sec/internal/helper/PhoneIdKeyMap;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/sec/internal/helper/PhoneIdKeyMap;, "Lcom/sec/internal/helper/PhoneIdKeyMap<TE;>;"
    iget-object v0, p0, Lcom/sec/internal/helper/PhoneIdKeyMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
