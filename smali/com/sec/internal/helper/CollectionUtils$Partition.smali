.class public Lcom/sec/internal/helper/CollectionUtils$Partition;
.super Ljava/util/AbstractList;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/sec/internal/helper/CollectionUtils$Partition;, "Lcom/sec/internal/helper/CollectionUtils$Partition<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->list:Ljava/util/List;

    .line 108
    iput p2, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->size:I

    .line 109
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 102
    .local p0, "this":Lcom/sec/internal/helper/CollectionUtils$Partition;, "Lcom/sec/internal/helper/CollectionUtils$Partition<TT;>;"
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/CollectionUtils$Partition;->get(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/List;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/sec/internal/helper/CollectionUtils$Partition;, "Lcom/sec/internal/helper/CollectionUtils$Partition<TT;>;"
    iget v0, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->size:I

    mul-int v1, p1, v0

    .line 114
    .local v1, "start":I
    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 115
    .local v0, "end":I
    iget-object v2, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->list:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 120
    .local p0, "this":Lcom/sec/internal/helper/CollectionUtils$Partition;, "Lcom/sec/internal/helper/CollectionUtils$Partition<TT;>;"
    iget-object v0, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 3

    .line 125
    .local p0, "this":Lcom/sec/internal/helper/CollectionUtils$Partition;, "Lcom/sec/internal/helper/CollectionUtils$Partition<TT;>;"
    iget-object v0, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 126
    .local v0, "listSize":I
    iget v1, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->size:I

    rem-int v2, v0, v1

    if-nez v2, :cond_0

    .line 127
    div-int v1, v0, v1

    return v1

    .line 129
    :cond_0
    div-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method
