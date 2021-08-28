.class Lorg/xbill/DNS/Zone$ZoneIterator;
.super Ljava/lang/Object;
.source "Zone.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/Zone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoneIterator"
.end annotation


# instance fields
.field private count:I

.field private current:[Lorg/xbill/DNS/RRset;

.field private final synthetic this$0:Lorg/xbill/DNS/Zone;

.field private wantLastSOA:Z

.field private zentries:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/xbill/DNS/Zone;Z)V
    .locals 7
    .param p1, "this$0"    # Lorg/xbill/DNS/Zone;
    .param p2, "axfr"    # Z

    .line 39
    iput-object p1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    monitor-enter p1

    .line 41
    :try_start_0
    invoke-static {p1}, Lorg/xbill/DNS/Zone;->access$000(Lorg/xbill/DNS/Zone;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->zentries:Ljava/util/Iterator;

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iput-boolean p2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->wantLastSOA:Z

    .line 44
    invoke-static {p1}, Lorg/xbill/DNS/Zone;->access$100(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/xbill/DNS/Zone;->access$200(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 45
    .local v0, "sets":[Lorg/xbill/DNS/RRset;
    array-length v1, v0

    new-array v1, v1, [Lorg/xbill/DNS/RRset;

    iput-object v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x2

    .local v2, "j":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 47
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    .line 48
    .local v3, "type":I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 49
    iget-object v4, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    const/4 v5, 0x0

    aget-object v6, v0, v1

    aput-object v6, v4, v5

    goto :goto_1

    .line 50
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 51
    iget-object v4, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    aget-object v5, v0, v1

    const/4 v6, 0x1

    aput-object v5, v4, v6

    goto :goto_1

    .line 53
    :cond_1
    iget-object v4, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "j":I
    .local v5, "j":I
    aget-object v6, v0, v1

    aput-object v6, v4, v2

    move v2, v5

    .line 46
    .end local v3    # "type":I
    .end local v5    # "j":I
    .restart local v2    # "j":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    return-void

    .line 42
    .end local v0    # "sets":[Lorg/xbill/DNS/RRset;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->wantLastSOA:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 5

    .line 64
    invoke-virtual {p0}, Lorg/xbill/DNS/Zone$ZoneIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    iput-boolean v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->wantLastSOA:Z

    .line 69
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-static {v0}, Lorg/xbill/DNS/Zone;->access$100(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Zone;->access$300(Lorg/xbill/DNS/Zone;Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    iget v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->count:I

    aget-object v2, v0, v2

    .line 72
    .local v2, "set":Ljava/lang/Object;
    array-length v0, v0

    if-ne v3, v0, :cond_3

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    .line 74
    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->zentries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->zentries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-static {v4}, Lorg/xbill/DNS/Zone;->access$400(Lorg/xbill/DNS/Zone;)Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/Zone;->access$200(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 79
    .local v3, "sets":[Lorg/xbill/DNS/RRset;
    array-length v4, v3

    if-nez v4, :cond_2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iput-object v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    .line 82
    iput v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->count:I

    .line 86
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "sets":[Lorg/xbill/DNS/RRset;
    :cond_3
    return-object v2

    .line 65
    .end local v2    # "set":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
