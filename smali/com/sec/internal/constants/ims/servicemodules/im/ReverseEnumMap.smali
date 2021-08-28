.class public Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
.super Ljava/lang/Object;
.source "ReverseEnumMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;:",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "TE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;, "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->map:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 33
    .local v3, "enumConstant":Ljava/lang/Enum;, "TE;"
    iget-object v4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->map:Landroid/util/SparseArray;

    move-object v5, v3

    check-cast v5, Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;

    invoke-interface {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    .line 34
    .local v4, "e":Ljava/lang/Enum;, "TE;"
    if-nez v4, :cond_0

    .line 39
    iget-object v5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->map:Landroid/util/SparseArray;

    move-object v6, v3

    check-cast v6, Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;

    invoke-interface {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    .end local v3    # "enumConstant":Ljava/lang/Enum;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .restart local v3    # "enumConstant":Ljava/lang/Enum;, "TE;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;

    invoke-interface {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already set to constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    .end local v3    # "enumConstant":Ljava/lang/Enum;, "TE;"
    .end local v4    # "e":Ljava/lang/Enum;, "TE;"
    :cond_1
    return-void

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to make ReverseEnumMap with non-enum class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/Integer;)Ljava/lang/Enum;
    .locals 4
    .param p1, "id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TE;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;, "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<TE;>;"
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->map:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 45
    .local v0, "e":Ljava/lang/Enum;, "TE;"
    if-eqz v0, :cond_0

    .line 50
    return-object v0

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " unknown in reverse enumeration map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
