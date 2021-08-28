.class public Lorg/xbill/DNS/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Cache$CacheMap;,
        Lorg/xbill/DNS/Cache$NegativeElement;,
        Lorg/xbill/DNS/Cache$CacheRRset;,
        Lorg/xbill/DNS/Cache$Element;
    }
.end annotation


# static fields
.field private static final defaultMaxEntries:I = 0xc350


# instance fields
.field private data:Lorg/xbill/DNS/Cache$CacheMap;

.field private dclass:I

.field private maxcache:I

.field private maxncache:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    .line 182
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "dclass"    # I

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 158
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 171
    iput p1, p0, Lorg/xbill/DNS/Cache;->dclass:I

    .line 172
    new-instance v0, Lorg/xbill/DNS/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 158
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 189
    new-instance v0, Lorg/xbill/DNS/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 190
    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Master;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "m":Lorg/xbill/DNS/Master;
    :goto_0
    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    move-object v2, v1

    .local v2, "record":Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_0

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lorg/xbill/DNS/Cache;->addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method static synthetic access$000(JJ)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 20
    invoke-static {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->limitExpire(JJ)I

    move-result v0

    return v0
.end method

.method private declared-synchronized addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    .locals 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "element"    # Lorg/xbill/DNS/Cache$Element;

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 261
    iget-object v1, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v1, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 264
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    .line 265
    .local v1, "type":I
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 266
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 267
    .local v2, "list":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 268
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/Cache$Element;

    .line 269
    .local v4, "elt":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v4}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 270
    invoke-interface {v2, v3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 267
    .end local v4    # "elt":Lorg/xbill/DNS/Cache$Element;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    .end local v3    # "i":I
    :cond_2
    :try_start_2
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    nop

    .end local v2    # "list":Ljava/util/List;
    goto :goto_1

    .line 276
    :cond_3
    move-object v2, v0

    check-cast v2, Lorg/xbill/DNS/Cache$Element;

    .line 277
    .local v2, "elt":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 278
    iget-object v3, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v3, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 280
    :cond_4
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 281
    .local v3, "list":Ljava/util/LinkedList;
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v4, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v4, p1, v3}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    .end local v2    # "elt":Lorg/xbill/DNS/Cache$Element;
    .end local v3    # "list":Ljava/util/LinkedList;
    :goto_1
    monitor-exit p0

    return-void

    .line 258
    .end local v0    # "types":Ljava/lang/Object;
    .end local v1    # "type":I
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "element":Lorg/xbill/DNS/Cache$Element;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;
    .locals 3
    .param p1, "types"    # Ljava/lang/Object;

    monitor-enter p0

    .line 208
    :try_start_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 209
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 210
    .local v0, "typelist":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 211
    .local v1, "size":I
    new-array v2, v1, [Lorg/xbill/DNS/Cache$Element;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/xbill/DNS/Cache$Element;

    check-cast v2, [Lorg/xbill/DNS/Cache$Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 213
    .end local v0    # "typelist":Ljava/util/List;
    .end local v1    # "size":I
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    .line 214
    .local v0, "set":Lorg/xbill/DNS/Cache$Element;
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/xbill/DNS/Cache$Element;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 207
    .end local v0    # "set":Lorg/xbill/DNS/Cache$Element;
    .end local p1    # "types":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 198
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "minCred"    # I

    monitor-enter p0

    .line 251
    :try_start_0
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 253
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 254
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 250
    .end local v0    # "types":Ljava/lang/Object;
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "type":I
    .end local p3    # "minCred":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "minCred"    # I

    .line 518
    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 519
    .local v0, "cr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v1

    return-object v1

    .line 522
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private final getCred(IZ)I
    .locals 4
    .param p1, "section"    # I
    .param p2, "isAuth"    # Z

    .line 553
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v1, :cond_1

    .line 554
    if-eqz p2, :cond_0

    .line 555
    return v0

    .line 557
    :cond_0
    return v2

    .line 558
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 559
    if-eqz p2, :cond_2

    .line 560
    return v0

    .line 562
    :cond_2
    return v2

    .line 563
    :cond_3
    if-ne p1, v2, :cond_4

    .line 564
    return v1

    .line 566
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getCred: invalid section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static limitExpire(JJ)I
    .locals 6
    .param p0, "ttl"    # J
    .param p2, "maxttl"    # J

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    cmp-long v2, p2, p0

    if-gez v2, :cond_0

    .line 31
    move-wide p0, p2

    .line 32
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v2, p0

    .line 33
    .local v2, "expire":J
    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    long-to-int v0, v2

    return v0

    .line 34
    :cond_2
    :goto_0
    const v0, 0x7fffffff

    return v0
.end method

.method private static markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V
    .locals 4
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "names"    # Ljava/util/Set;

    .line 571
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 572
    .local v0, "first":Lorg/xbill/DNS/Record;
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v1

    if-nez v1, :cond_0

    .line 573
    return-void

    .line 575
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    .line 576
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 577
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 578
    .local v2, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 579
    .local v3, "name":Lorg/xbill/DNS/Name;
    if-eqz v3, :cond_1

    .line 580
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 581
    .end local v2    # "r":Lorg/xbill/DNS/Record;
    .end local v3    # "name":Lorg/xbill/DNS/Name;
    :cond_1
    goto :goto_0

    .line 582
    :cond_2
    return-void
.end method

.method private declared-synchronized oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;
    .locals 5
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "types"    # Ljava/lang/Object;
    .param p3, "type"    # I
    .param p4, "minCred"    # I

    monitor-enter p0

    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, "found":Lorg/xbill/DNS/Cache$Element;
    const/16 v1, 0xff

    if-eq p3, v1, :cond_7

    .line 224
    :try_start_0
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 225
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    .line 226
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 227
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Cache$Element;

    .line 228
    .local v3, "set":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v3}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 229
    move-object v0, v3

    .line 230
    goto :goto_1

    .line 226
    .end local v3    # "set":Lorg/xbill/DNS/Cache$Element;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "i":I
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_1
    :goto_1
    goto :goto_2

    .line 234
    :cond_2
    move-object v1, p2

    check-cast v1, Lorg/xbill/DNS/Cache$Element;

    .line 235
    .local v1, "set":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p3, :cond_3

    .line 236
    move-object v0, v1

    .line 238
    .end local v1    # "set":Lorg/xbill/DNS/Cache$Element;
    :cond_3
    :goto_2
    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 239
    monitor-exit p0

    return-object v1

    .line 240
    .restart local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_4
    :try_start_1
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    invoke-direct {p0, p1, p3}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    monitor-exit p0

    return-object v1

    .line 244
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_5
    :try_start_2
    invoke-interface {v0, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v2, :cond_6

    .line 245
    monitor-exit p0

    return-object v1

    .line 246
    .restart local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_6
    monitor-exit p0

    return-object v0

    .line 219
    .end local v0    # "found":Lorg/xbill/DNS/Cache$Element;
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "types":Ljava/lang/Object;
    .end local p3    # "type":I
    .end local p4    # "minCred":I
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 223
    .restart local v0    # "found":Lorg/xbill/DNS/Cache$Element;
    .restart local p1    # "name":Lorg/xbill/DNS/Name;
    .restart local p2    # "types":Ljava/lang/Object;
    .restart local p3    # "type":I
    .restart local p4    # "minCred":I
    :cond_7
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "oneElement(ANY)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    .end local v0    # "found":Lorg/xbill/DNS/Cache$Element;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "types":Ljava/lang/Object;
    .end local p3    # "type":I
    .end local p4    # "minCred":I
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeElement(Lorg/xbill/DNS/Name;I)V
    .locals 5
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 292
    monitor-exit p0

    return-void

    .line 294
    :cond_0
    :try_start_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 295
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 296
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 297
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Cache$Element;

    .line 298
    .local v3, "elt":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v3}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 299
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 300
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 301
    iget-object v4, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v4, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_1
    monitor-exit p0

    return-void

    .line 296
    .end local v3    # "elt":Lorg/xbill/DNS/Cache$Element;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "i":I
    :cond_3
    goto :goto_1

    .line 306
    :cond_4
    :try_start_2
    move-object v1, v0

    check-cast v1, Lorg/xbill/DNS/Cache$Element;

    .line 307
    .local v1, "elt":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v2, p2, :cond_5

    .line 308
    monitor-exit p0

    return-void

    .line 309
    .restart local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_5
    :try_start_3
    iget-object v2, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v2, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    .end local v1    # "elt":Lorg/xbill/DNS/Cache$Element;
    :goto_1
    monitor-exit p0

    return-void

    .line 289
    .end local v0    # "types":Ljava/lang/Object;
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "type":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeName(Lorg/xbill/DNS/Name;)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 202
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;
    .locals 24
    .param p1, "in"    # Lorg/xbill/DNS/Message;

    .line 594
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v4

    .line 595
    .local v4, "isAuth":Z
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v5

    .line 601
    .local v5, "question":Lorg/xbill/DNS/Record;
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v6

    .line 602
    .local v6, "rcode":I
    const/4 v0, 0x0

    .line 604
    .local v0, "completed":Z
    const/4 v7, 0x0

    .line 605
    .local v7, "response":Lorg/xbill/DNS/SetResponse;
    const-string/jumbo v8, "verbosecache"

    invoke-static {v8}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v8

    .line 608
    .local v8, "verbose":Z
    const/4 v9, 0x3

    if-eqz v6, :cond_0

    if-ne v6, v9, :cond_1

    :cond_0
    if-nez v5, :cond_2

    .line 610
    :cond_1
    const/4 v3, 0x0

    return-object v3

    .line 612
    :cond_2
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v10

    .line 613
    .local v10, "qname":Lorg/xbill/DNS/Name;
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getType()I

    move-result v11

    .line 614
    .local v11, "qtype":I
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v12

    .line 616
    .local v12, "qclass":I
    move-object v13, v10

    .line 618
    .local v13, "curname":Lorg/xbill/DNS/Name;
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 620
    .local v14, "additionalNames":Ljava/util/HashSet;
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v9

    .line 621
    .local v9, "answers":[Lorg/xbill/DNS/RRset;
    const/16 v17, 0x0

    move/from16 v3, v17

    move-object/from16 v23, v7

    move v7, v0

    move-object/from16 v0, v23

    .local v0, "response":Lorg/xbill/DNS/SetResponse;
    .local v3, "i":I
    .local v7, "completed":Z
    :goto_0
    array-length v15, v9

    move-object/from16 v18, v5

    .end local v5    # "question":Lorg/xbill/DNS/Record;
    .local v18, "question":Lorg/xbill/DNS/Record;
    if-ge v3, v15, :cond_c

    .line 622
    aget-object v15, v9, v3

    invoke-virtual {v15}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v15

    if-eq v15, v12, :cond_3

    .line 623
    move-object/from16 v21, v0

    move/from16 v20, v8

    move/from16 v22, v11

    move/from16 v19, v12

    const/4 v12, 0x5

    goto/16 :goto_5

    .line 624
    :cond_3
    aget-object v15, v9, v3

    invoke-virtual {v15}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v15

    .line 625
    .local v15, "type":I
    aget-object v19, v9, v3

    invoke-virtual/range {v19 .. v19}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    .line 626
    .local v5, "name":Lorg/xbill/DNS/Name;
    move/from16 v20, v8

    move/from16 v19, v12

    const/4 v12, 0x1

    .end local v8    # "verbose":Z
    .end local v12    # "qclass":I
    .local v19, "qclass":I
    .local v20, "verbose":Z
    invoke-direct {v1, v12, v4}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v8

    .line 627
    .local v8, "cred":I
    if-eq v15, v11, :cond_4

    const/16 v12, 0xff

    if-ne v11, v12, :cond_7

    .line 628
    :cond_4
    invoke-virtual {v5, v13}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 630
    aget-object v12, v9, v3

    invoke-virtual {v1, v12, v8}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 631
    const/4 v7, 0x1

    .line 632
    if-ne v13, v10, :cond_6

    .line 633
    if-nez v0, :cond_5

    .line 634
    new-instance v12, Lorg/xbill/DNS/SetResponse;

    move/from16 v21, v7

    const/4 v7, 0x6

    .end local v7    # "completed":Z
    .local v21, "completed":Z
    invoke-direct {v12, v7}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    move-object v0, v12

    goto :goto_1

    .line 633
    .end local v21    # "completed":Z
    .restart local v7    # "completed":Z
    :cond_5
    move/from16 v21, v7

    .line 636
    .end local v7    # "completed":Z
    .restart local v21    # "completed":Z
    :goto_1
    aget-object v7, v9, v3

    invoke-virtual {v0, v7}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    goto :goto_2

    .line 632
    .end local v21    # "completed":Z
    .restart local v7    # "completed":Z
    :cond_6
    move/from16 v21, v7

    .line 638
    .end local v7    # "completed":Z
    .restart local v21    # "completed":Z
    :goto_2
    aget-object v7, v9, v3

    invoke-static {v7, v14}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    move/from16 v22, v11

    move/from16 v7, v21

    const/4 v12, 0x5

    goto/16 :goto_6

    .line 639
    .end local v21    # "completed":Z
    .restart local v7    # "completed":Z
    :cond_7
    const/4 v12, 0x5

    if-ne v15, v12, :cond_9

    invoke-virtual {v5, v13}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 641
    aget-object v12, v9, v3

    invoke-virtual {v1, v12, v8}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 642
    if-ne v13, v10, :cond_8

    .line 643
    new-instance v12, Lorg/xbill/DNS/SetResponse;

    move-object/from16 v21, v0

    .end local v0    # "response":Lorg/xbill/DNS/SetResponse;
    .local v21, "response":Lorg/xbill/DNS/SetResponse;
    const/4 v0, 0x4

    move/from16 v22, v11

    .end local v11    # "qtype":I
    .local v22, "qtype":I
    aget-object v11, v9, v3

    invoke-direct {v12, v0, v11}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v0, v12

    .end local v21    # "response":Lorg/xbill/DNS/SetResponse;
    .restart local v0    # "response":Lorg/xbill/DNS/SetResponse;
    goto :goto_3

    .line 642
    .end local v22    # "qtype":I
    .restart local v11    # "qtype":I
    :cond_8
    move-object/from16 v21, v0

    move/from16 v22, v11

    .line 645
    .end local v11    # "qtype":I
    .restart local v22    # "qtype":I
    :goto_3
    aget-object v11, v9, v3

    invoke-virtual {v11}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v11

    check-cast v11, Lorg/xbill/DNS/CNAMERecord;

    .line 646
    .local v11, "cname":Lorg/xbill/DNS/CNAMERecord;
    invoke-virtual {v11}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v11

    .line 647
    .end local v13    # "curname":Lorg/xbill/DNS/Name;
    .local v11, "curname":Lorg/xbill/DNS/Name;
    move-object v13, v11

    const/4 v12, 0x5

    goto :goto_6

    .line 639
    .end local v22    # "qtype":I
    .local v11, "qtype":I
    .restart local v13    # "curname":Lorg/xbill/DNS/Name;
    :cond_9
    move-object/from16 v21, v0

    move/from16 v22, v11

    .line 647
    .end local v0    # "response":Lorg/xbill/DNS/SetResponse;
    .end local v11    # "qtype":I
    .restart local v21    # "response":Lorg/xbill/DNS/SetResponse;
    .restart local v22    # "qtype":I
    const/16 v0, 0x27

    if-ne v15, v0, :cond_b

    invoke-virtual {v13, v5}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 649
    aget-object v0, v9, v3

    invoke-virtual {v1, v0, v8}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 650
    if-ne v13, v10, :cond_a

    .line 651
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    aget-object v11, v9, v3

    const/4 v12, 0x5

    invoke-direct {v0, v12, v11}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object/from16 v21, v0

    .end local v21    # "response":Lorg/xbill/DNS/SetResponse;
    .restart local v0    # "response":Lorg/xbill/DNS/SetResponse;
    goto :goto_4

    .line 650
    .end local v0    # "response":Lorg/xbill/DNS/SetResponse;
    .restart local v21    # "response":Lorg/xbill/DNS/SetResponse;
    :cond_a
    const/4 v12, 0x5

    .line 653
    :goto_4
    aget-object v0, v9, v3

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/xbill/DNS/DNAMERecord;

    .line 655
    .local v11, "dname":Lorg/xbill/DNS/DNAMERecord;
    :try_start_0
    invoke-virtual {v13, v11}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v0
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v13    # "curname":Lorg/xbill/DNS/Name;
    .local v0, "curname":Lorg/xbill/DNS/Name;
    move-object v13, v0

    move-object/from16 v0, v21

    goto :goto_6

    .line 657
    .end local v0    # "curname":Lorg/xbill/DNS/Name;
    .restart local v13    # "curname":Lorg/xbill/DNS/Name;
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 658
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    move-object/from16 v0, v21

    goto :goto_7

    .line 647
    .end local v0    # "e":Lorg/xbill/DNS/NameTooLongException;
    .end local v11    # "dname":Lorg/xbill/DNS/DNAMERecord;
    :cond_b
    const/4 v12, 0x5

    .line 621
    .end local v5    # "name":Lorg/xbill/DNS/Name;
    .end local v15    # "type":I
    .end local v19    # "qclass":I
    .end local v20    # "verbose":Z
    .end local v21    # "response":Lorg/xbill/DNS/SetResponse;
    .end local v22    # "qtype":I
    .local v0, "response":Lorg/xbill/DNS/SetResponse;
    .local v8, "verbose":Z
    .local v11, "qtype":I
    .restart local v12    # "qclass":I
    :goto_5
    move-object/from16 v0, v21

    .end local v8    # "verbose":Z
    .end local v11    # "qtype":I
    .end local v12    # "qclass":I
    .restart local v19    # "qclass":I
    .restart local v20    # "verbose":Z
    .restart local v22    # "qtype":I
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v18

    move/from16 v12, v19

    move/from16 v8, v20

    move/from16 v11, v22

    const/4 v15, 0x1

    goto/16 :goto_0

    .end local v19    # "qclass":I
    .end local v20    # "verbose":Z
    .end local v22    # "qtype":I
    .restart local v8    # "verbose":Z
    .restart local v11    # "qtype":I
    .restart local v12    # "qclass":I
    :cond_c
    move-object/from16 v21, v0

    move/from16 v20, v8

    move/from16 v22, v11

    move/from16 v19, v12

    .line 663
    .end local v3    # "i":I
    .end local v8    # "verbose":Z
    .end local v11    # "qtype":I
    .end local v12    # "qclass":I
    .restart local v19    # "qclass":I
    .restart local v20    # "verbose":Z
    .restart local v22    # "qtype":I
    :goto_7
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v5

    .line 664
    .local v5, "auth":[Lorg/xbill/DNS/RRset;
    const/4 v8, 0x0

    .local v8, "soa":Lorg/xbill/DNS/RRset;
    const/4 v11, 0x0

    .line 665
    .local v11, "ns":Lorg/xbill/DNS/RRset;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    array-length v15, v5

    if-ge v12, v15, :cond_f

    .line 666
    aget-object v15, v5, v12

    invoke-virtual {v15}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v15

    const/4 v3, 0x6

    if-ne v15, v3, :cond_d

    aget-object v15, v5, v12

    .line 667
    invoke-virtual {v15}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 668
    aget-object v8, v5, v12

    goto :goto_9

    .line 669
    :cond_d
    aget-object v15, v5, v12

    invoke-virtual {v15}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v15

    const/4 v3, 0x2

    if-ne v15, v3, :cond_e

    aget-object v3, v5, v12

    .line 670
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 671
    aget-object v3, v5, v12

    move-object v11, v3

    .line 665
    :cond_e
    :goto_9
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x2

    goto :goto_8

    .line 673
    .end local v12    # "i":I
    :cond_f
    if-nez v7, :cond_17

    .line 675
    const/4 v3, 0x3

    if-ne v6, v3, :cond_10

    const/4 v12, 0x0

    goto :goto_a

    :cond_10
    move/from16 v12, v22

    .line 676
    .local v12, "cachetype":I
    :goto_a
    if-eq v6, v3, :cond_13

    if-nez v8, :cond_13

    if-nez v11, :cond_11

    goto :goto_b

    .line 694
    :cond_11
    const/4 v3, 0x2

    invoke-direct {v1, v3, v4}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v3

    .line 695
    .local v3, "cred":I
    invoke-virtual {v1, v11, v3}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 696
    invoke-static {v11, v14}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    .line 697
    if-nez v0, :cond_12

    .line 698
    new-instance v15, Lorg/xbill/DNS/SetResponse;

    move/from16 v17, v3

    const/4 v3, 0x3

    .end local v3    # "cred":I
    .local v17, "cred":I
    invoke-direct {v15, v3, v11}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v0, v15

    move/from16 v3, v17

    goto :goto_e

    .line 697
    .end local v17    # "cred":I
    .restart local v3    # "cred":I
    :cond_12
    move/from16 v17, v3

    .end local v3    # "cred":I
    .restart local v17    # "cred":I
    goto :goto_e

    .line 678
    .end local v17    # "cred":I
    :cond_13
    :goto_b
    const/4 v3, 0x2

    invoke-direct {v1, v3, v4}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v3

    .line 679
    .restart local v3    # "cred":I
    const/4 v15, 0x0

    .line 680
    .local v15, "soarec":Lorg/xbill/DNS/SOARecord;
    if-eqz v8, :cond_14

    .line 681
    invoke-virtual {v8}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Lorg/xbill/DNS/SOARecord;

    .line 682
    :cond_14
    invoke-virtual {v1, v13, v12, v15, v3}, Lorg/xbill/DNS/Cache;->addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V

    .line 683
    if-nez v0, :cond_16

    .line 685
    move/from16 v17, v3

    const/4 v3, 0x3

    .end local v3    # "cred":I
    .restart local v17    # "cred":I
    if-ne v6, v3, :cond_15

    .line 686
    const/4 v3, 0x1

    .local v3, "responseType":I
    goto :goto_c

    .line 688
    .end local v3    # "responseType":I
    :cond_15
    const/4 v3, 0x2

    .line 689
    .restart local v3    # "responseType":I
    :goto_c
    invoke-static {v3}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    goto :goto_d

    .line 683
    .end local v17    # "cred":I
    .local v3, "cred":I
    :cond_16
    move/from16 v17, v3

    .line 692
    .end local v3    # "cred":I
    .end local v15    # "soarec":Lorg/xbill/DNS/SOARecord;
    .restart local v17    # "cred":I
    :goto_d
    move/from16 v3, v17

    .line 702
    .end local v12    # "cachetype":I
    .end local v17    # "cred":I
    .restart local v3    # "cred":I
    :goto_e
    goto :goto_f

    .end local v3    # "cred":I
    :cond_17
    if-nez v6, :cond_18

    if-eqz v11, :cond_18

    .line 704
    const/4 v3, 0x2

    invoke-direct {v1, v3, v4}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v3

    .line 705
    .restart local v3    # "cred":I
    invoke-virtual {v1, v11, v3}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 706
    invoke-static {v11, v14}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    .line 709
    .end local v3    # "cred":I
    :cond_18
    :goto_f
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v12

    .line 710
    .local v12, "addl":[Lorg/xbill/DNS/RRset;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v15, v12

    if-ge v3, v15, :cond_1b

    .line 711
    aget-object v15, v12, v3

    invoke-virtual {v15}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v15

    .line 712
    .local v15, "type":I
    const/4 v2, 0x1

    if-eq v15, v2, :cond_19

    const/16 v2, 0x1c

    if-eq v15, v2, :cond_19

    const/16 v2, 0x26

    if-eq v15, v2, :cond_19

    .line 713
    move-object/from16 v16, v5

    goto :goto_11

    .line 714
    :cond_19
    aget-object v2, v12, v3

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 715
    .local v2, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {v14, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1a

    .line 716
    move-object/from16 v16, v5

    goto :goto_11

    .line 717
    :cond_1a
    move-object/from16 v17, v2

    move-object/from16 v16, v5

    const/4 v2, 0x3

    .end local v2    # "name":Lorg/xbill/DNS/Name;
    .end local v5    # "auth":[Lorg/xbill/DNS/RRset;
    .local v16, "auth":[Lorg/xbill/DNS/RRset;
    .local v17, "name":Lorg/xbill/DNS/Name;
    invoke-direct {v1, v2, v4}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v5

    .line 718
    .local v5, "cred":I
    aget-object v2, v12, v3

    invoke-virtual {v1, v2, v5}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 710
    .end local v5    # "cred":I
    .end local v15    # "type":I
    .end local v17    # "name":Lorg/xbill/DNS/Name;
    :goto_11
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p1

    move-object/from16 v5, v16

    goto :goto_10

    .end local v16    # "auth":[Lorg/xbill/DNS/RRset;
    .local v5, "auth":[Lorg/xbill/DNS/RRset;
    :cond_1b
    move-object/from16 v16, v5

    .line 720
    .end local v3    # "i":I
    .end local v5    # "auth":[Lorg/xbill/DNS/RRset;
    .restart local v16    # "auth":[Lorg/xbill/DNS/RRset;
    if-eqz v20, :cond_1c

    .line 721
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "addMessage: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 722
    :cond_1c
    return-object v0
.end method

.method public declared-synchronized addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V
    .locals 11
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "soa"    # Lorg/xbill/DNS/SOARecord;
    .param p4, "cred"    # I

    monitor-enter p0

    .line 383
    const-wide/16 v0, 0x0

    .line 384
    .local v0, "ttl":J
    if-eqz p3, :cond_0

    .line 385
    :try_start_0
    invoke-virtual {p3}, Lorg/xbill/DNS/SOARecord;->getTTL()J

    move-result-wide v2

    move-wide v0, v2

    .line 386
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v2

    .line 387
    .local v2, "element":Lorg/xbill/DNS/Cache$Element;
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 388
    if-eqz v2, :cond_3

    invoke-interface {v2, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v3

    if-gtz v3, :cond_3

    .line 389
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    goto :goto_0

    .line 391
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v3

    if-gtz v3, :cond_2

    .line 392
    const/4 v2, 0x0

    .line 393
    :cond_2
    if-nez v2, :cond_3

    .line 394
    new-instance v10, Lorg/xbill/DNS/Cache$NegativeElement;

    iget v3, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    int-to-long v8, v3

    move-object v3, v10

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v3 .. v9}, Lorg/xbill/DNS/Cache$NegativeElement;-><init>(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;IJ)V

    invoke-direct {p0, p1, v10}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 382
    .end local v0    # "ttl":J
    .end local v2    # "element":Lorg/xbill/DNS/Cache$Element;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "type":I
    .end local p3    # "soa":Lorg/xbill/DNS/SOARecord;
    .end local p4    # "cred":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRRset(Lorg/xbill/DNS/RRset;I)V
    .locals 8
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p2, "cred"    # I

    monitor-enter p0

    .line 352
    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v0

    .line 353
    .local v0, "ttl":J
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 354
    .local v2, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    .line 355
    .local v3, "type":I
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v4

    .line 356
    .local v4, "element":Lorg/xbill/DNS/Cache$Element;
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_0

    .line 357
    if-eqz v4, :cond_3

    invoke-interface {v4, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v5

    if-gtz v5, :cond_3

    .line 358
    invoke-direct {p0, v2, v3}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    goto :goto_1

    .line 360
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v5

    if-gtz v5, :cond_1

    .line 361
    const/4 v4, 0x0

    .line 362
    :cond_1
    if-nez v4, :cond_3

    .line 364
    instance-of v5, p1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v5, :cond_2

    .line 365
    move-object v5, p1

    check-cast v5, Lorg/xbill/DNS/Cache$CacheRRset;

    .local v5, "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    goto :goto_0

    .line 367
    .end local v5    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    :cond_2
    new-instance v5, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v6, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v6, v6

    invoke-direct {v5, p1, p2, v6, v7}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/RRset;IJ)V

    .line 368
    .restart local v5    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    :goto_0
    invoke-direct {p0, v2, v5}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    .end local v5    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 351
    .end local v0    # "ttl":J
    .end local v2    # "name":Lorg/xbill/DNS/Name;
    .end local v3    # "type":I
    .end local v4    # "element":Lorg/xbill/DNS/Cache$Element;
    .end local p1    # "rrset":Lorg/xbill/DNS/RRset;
    .end local p2    # "cred":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V
    .locals 6
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .param p2, "cred"    # I
    .param p3, "o"    # Ljava/lang/Object;

    monitor-enter p0

    .line 328
    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 329
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    .line 330
    .local v1, "type":I
    invoke-static {v1}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 331
    monitor-exit p0

    return-void

    .line 332
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, v1, p2}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v2

    .line 333
    .local v2, "element":Lorg/xbill/DNS/Cache$Element;
    if-nez v2, :cond_1

    .line 334
    new-instance v3, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v4, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v4, v4

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/Record;IJ)V

    .line 335
    .local v3, "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    invoke-virtual {p0, v3, p2}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 336
    .end local v3    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    goto :goto_0

    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_1
    invoke-interface {v2, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 337
    instance-of v3, v2, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v3, :cond_2

    .line 338
    move-object v3, v2

    check-cast v3, Lorg/xbill/DNS/Cache$CacheRRset;

    .line 339
    .restart local v3    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    invoke-virtual {v3, p1}, Lorg/xbill/DNS/Cache$CacheRRset;->addRR(Lorg/xbill/DNS/Record;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    .end local v3    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 327
    .end local v0    # "name":Lorg/xbill/DNS/Name;
    .end local v1    # "type":I
    .end local v2    # "element":Lorg/xbill/DNS/Cache$Element;
    .end local p1    # "r":Lorg/xbill/DNS/Record;
    .end local p2    # "cred":I
    .end local p3    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 315
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAnyRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .line 548
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public findRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .line 535
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public flushName(Lorg/xbill/DNS/Name;)V
    .locals 0
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .line 743
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->removeName(Lorg/xbill/DNS/Name;)V

    .line 744
    return-void
.end method

.method public flushSet(Lorg/xbill/DNS/Name;I)V
    .locals 0
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .line 733
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    .line 734
    return-void
.end method

.method public getDClass()I
    .locals 1

    .line 824
    iget v0, p0, Lorg/xbill/DNS/Cache;->dclass:I

    return v0
.end method

.method public getMaxCache()I
    .locals 1

    .line 780
    iget v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    return v0
.end method

.method public getMaxEntries()I
    .locals 1

    .line 799
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->getMaxSize()I

    move-result v0

    return v0
.end method

.method public getMaxNCache()I
    .locals 1

    .line 762
    iget v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 789
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->size()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .locals 18
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "minCred"    # I

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p3

    monitor-enter p0

    .line 412
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    .line 414
    .local v3, "labels":I
    move v4, v3

    .local v4, "tlabels":I
    :goto_0
    const/4 v6, 0x1

    if-lt v4, v6, :cond_11

    .line 415
    if-ne v4, v6, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 416
    .local v7, "isRoot":Z
    :goto_1
    if-ne v4, v3, :cond_1

    move v8, v6

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    .line 418
    .local v8, "isExact":Z
    :goto_2
    if-eqz v7, :cond_2

    .line 419
    sget-object v9, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    move-object/from16 v11, p1

    .local v9, "tname":Lorg/xbill/DNS/Name;
    goto :goto_3

    .line 420
    .end local v9    # "tname":Lorg/xbill/DNS/Name;
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_2
    if-eqz v8, :cond_3

    .line 421
    move-object/from16 v9, p1

    move-object/from16 v11, p1

    .restart local v9    # "tname":Lorg/xbill/DNS/Name;
    goto :goto_3

    .line 423
    .end local v9    # "tname":Lorg/xbill/DNS/Name;
    :cond_3
    new-instance v9, Lorg/xbill/DNS/Name;

    sub-int v10, v3, v4

    move-object/from16 v11, p1

    invoke-direct {v9, v11, v10}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 425
    .restart local v9    # "tname":Lorg/xbill/DNS/Name;
    :goto_3
    iget-object v10, v1, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v10, v9}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 426
    .local v10, "types":Ljava/lang/Object;
    if-nez v10, :cond_4

    .line 427
    goto/16 :goto_7

    .line 434
    :cond_4
    const/4 v13, 0x6

    if-eqz v8, :cond_a

    const/16 v14, 0xff

    if-ne v0, v14, :cond_a

    .line 435
    new-instance v14, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v14, v13}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    move-object v13, v14

    .line 436
    .local v13, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-direct {v1, v10}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v14

    .line 437
    .local v14, "elements":[Lorg/xbill/DNS/Cache$Element;
    const/4 v15, 0x0

    .line 438
    .local v15, "added":I
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "i":I
    :goto_4
    array-length v5, v14

    if-ge v6, v5, :cond_8

    .line 439
    aget-object v5, v14, v6

    .line 440
    .local v5, "element":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v5}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 441
    invoke-interface {v5}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v12

    invoke-direct {v1, v9, v12}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    .line 442
    goto :goto_5

    .line 444
    :cond_5
    instance-of v12, v5, Lorg/xbill/DNS/Cache$CacheRRset;

    if-nez v12, :cond_6

    .line 445
    goto :goto_5

    .line 446
    :cond_6
    invoke-interface {v5, v2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v12

    if-gez v12, :cond_7

    .line 447
    goto :goto_5

    .line 448
    :cond_7
    move-object v12, v5

    check-cast v12, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v13, v12}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    add-int/lit8 v15, v15, 0x1

    .line 438
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 452
    .end local v5    # "element":Lorg/xbill/DNS/Cache$Element;
    .end local v6    # "i":I
    :cond_8
    if-lez v15, :cond_9

    .line 453
    monitor-exit p0

    return-object v13

    .line 454
    .end local v14    # "elements":[Lorg/xbill/DNS/Cache$Element;
    .end local v15    # "added":I
    .restart local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_9
    goto :goto_6

    .end local v13    # "sr":Lorg/xbill/DNS/SetResponse;
    .end local p0    # "this":Lorg/xbill/DNS/Cache;
    :cond_a
    const/4 v5, 0x5

    if-eqz v8, :cond_d

    .line 455
    :try_start_1
    invoke-direct {v1, v9, v10, v0, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v6

    .line 456
    .local v6, "element":Lorg/xbill/DNS/Cache$Element;
    if-eqz v6, :cond_b

    instance-of v12, v6, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v12, :cond_b

    .line 459
    new-instance v5, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v5, v13}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 460
    .local v5, "sr":Lorg/xbill/DNS/SetResponse;
    move-object v12, v6

    check-cast v12, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v5, v12}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    monitor-exit p0

    return-object v5

    .line 462
    .end local v5    # "sr":Lorg/xbill/DNS/SetResponse;
    :cond_b
    if-eqz v6, :cond_c

    .line 463
    :try_start_2
    new-instance v5, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x2

    invoke-direct {v5, v12}, Lorg/xbill/DNS/SetResponse;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    .restart local v5    # "sr":Lorg/xbill/DNS/SetResponse;
    monitor-exit p0

    return-object v5

    .line 467
    .end local v5    # "sr":Lorg/xbill/DNS/SetResponse;
    :cond_c
    :try_start_3
    invoke-direct {v1, v9, v10, v5, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v5

    .line 468
    .end local v6    # "element":Lorg/xbill/DNS/Cache$Element;
    .local v5, "element":Lorg/xbill/DNS/Cache$Element;
    if-eqz v5, :cond_e

    instance-of v6, v5, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v6, :cond_e

    .line 471
    new-instance v6, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x4

    move-object v13, v5

    check-cast v13, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-direct {v6, v12, v13}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v6

    .line 475
    .end local v5    # "element":Lorg/xbill/DNS/Cache$Element;
    :cond_d
    const/16 v6, 0x27

    :try_start_4
    invoke-direct {v1, v9, v10, v6, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v6

    .line 476
    .restart local v6    # "element":Lorg/xbill/DNS/Cache$Element;
    if-eqz v6, :cond_e

    instance-of v12, v6, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v12, :cond_e

    .line 479
    new-instance v12, Lorg/xbill/DNS/SetResponse;

    move-object v13, v6

    check-cast v13, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-direct {v12, v5, v13}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v12

    .line 485
    .end local v6    # "element":Lorg/xbill/DNS/Cache$Element;
    :cond_e
    :goto_6
    const/4 v5, 0x2

    :try_start_5
    invoke-direct {v1, v9, v10, v5, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v5

    .line 486
    .restart local v5    # "element":Lorg/xbill/DNS/Cache$Element;
    if-eqz v5, :cond_f

    instance-of v6, v5, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v6, :cond_f

    .line 487
    new-instance v6, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x3

    move-object v13, v5

    check-cast v13, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-direct {v6, v12, v13}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v6

    .line 491
    :cond_f
    if-eqz v8, :cond_10

    .line 492
    const/4 v6, 0x0

    :try_start_6
    invoke-direct {v1, v9, v10, v6, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v6

    move-object v5, v6

    .line 493
    if-eqz v5, :cond_10

    .line 494
    const/4 v6, 0x1

    invoke-static {v6}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v6

    .line 414
    .end local v5    # "element":Lorg/xbill/DNS/Cache$Element;
    .end local v7    # "isRoot":Z
    .end local v8    # "isExact":Z
    :cond_10
    :goto_7
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 498
    .end local v9    # "tname":Lorg/xbill/DNS/Name;
    .end local v10    # "types":Ljava/lang/Object;
    :cond_11
    move-object/from16 v11, p1

    const/4 v5, 0x0

    :try_start_7
    invoke-static {v5}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v5

    .line 411
    .end local v3    # "labels":I
    .end local v4    # "tlabels":I
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "type":I
    .end local p3    # "minCred":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "minCred"    # I

    .line 513
    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    return-object v0
.end method

.method public setMaxCache(I)V
    .locals 0
    .param p1, "seconds"    # I

    .line 771
    iput p1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 772
    return-void
.end method

.method public setMaxEntries(I)V
    .locals 1
    .param p1, "entries"    # I

    .line 816
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->setMaxSize(I)V

    .line 817
    return-void
.end method

.method public setMaxNCache(I)V
    .locals 0
    .param p1, "seconds"    # I

    .line 753
    iput p1, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 754
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 832
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 833
    .local v0, "sb":Ljava/lang/StringBuffer;
    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v1}, Lorg/xbill/DNS/Cache$CacheMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 835
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 836
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v2

    .line 837
    .local v2, "elements":[Lorg/xbill/DNS/Cache$Element;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 838
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 839
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 837
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 841
    .end local v2    # "elements":[Lorg/xbill/DNS/Cache$Element;
    .end local v3    # "i":I
    :cond_0
    goto :goto_0

    .line 842
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 842
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
