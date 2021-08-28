.class public Lorg/xbill/DNS/Zone;
.super Ljava/lang/Object;
.source "Zone.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Zone$ZoneIterator;
    }
.end annotation


# static fields
.field public static final PRIMARY:I = 0x1

.field public static final SECONDARY:I = 0x2

.field private static final serialVersionUID:J = -0x7ff5d5cd9cf8a31eL


# instance fields
.field private NS:Lorg/xbill/DNS/RRset;

.field private SOA:Lorg/xbill/DNS/SOARecord;

.field private data:Ljava/util/Map;

.field private dclass:I

.field private hasWild:Z

.field private origin:Lorg/xbill/DNS/Name;

.field private originNode:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/Name;ILjava/lang/String;)V
    .locals 1
    .param p1, "zone"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "remote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Zone;->dclass:I

    .line 200
    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    .line 201
    .local v0, "xfrin":Lorg/xbill/DNS/ZoneTransferIn;
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/ZoneTransferIn;->setDClass(I)V

    .line 202
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Zone;->fromXFR(Lorg/xbill/DNS/ZoneTransferIn;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;)V
    .locals 3
    .param p1, "zone"    # Lorg/xbill/DNS/Name;
    .param p2, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Zone;->dclass:I

    .line 135
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 137
    if-eqz p1, :cond_1

    .line 139
    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p2, p1}, Lorg/xbill/DNS/Master;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 142
    .local v0, "m":Lorg/xbill/DNS/Master;
    iput-object p1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 143
    :goto_0
    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    move-object v2, v1

    .local v2, "record":Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0, v2}, Lorg/xbill/DNS/Zone;->maybeAddRecord(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lorg/xbill/DNS/Zone;->validate()V

    .line 146
    return-void

    .line 138
    .end local v0    # "m":Lorg/xbill/DNS/Master;
    .end local v2    # "record":Lorg/xbill/DNS/Record;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no zone name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;[Lorg/xbill/DNS/Record;)V
    .locals 2
    .param p1, "zone"    # Lorg/xbill/DNS/Name;
    .param p2, "records"    # [Lorg/xbill/DNS/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Zone;->dclass:I

    .line 156
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 158
    if-eqz p1, :cond_1

    .line 160
    iput-object p1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 162
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Zone;->maybeAddRecord(Lorg/xbill/DNS/Record;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lorg/xbill/DNS/Zone;->validate()V

    .line 164
    return-void

    .line 159
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no zone name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/ZoneTransferIn;)V
    .locals 1
    .param p1, "xfrin"    # Lorg/xbill/DNS/ZoneTransferIn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Zone;->dclass:I

    .line 189
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->fromXFR(Lorg/xbill/DNS/ZoneTransferIn;)V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/Zone;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/Zone;

    .line 15
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/Zone;

    .line 15
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/Zone;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 15
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/xbill/DNS/Zone;Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/Zone;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/xbill/DNS/Zone;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/Zone;

    .line 15
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method private declared-synchronized addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;)V
    .locals 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "rrset"    # Lorg/xbill/DNS/RRset;

    monitor-enter p0

    .line 274
    :try_start_0
    iget-boolean v0, p0, Lorg/xbill/DNS/Zone;->hasWild:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Zone;->hasWild:Z

    .line 276
    .end local p0    # "this":Lorg/xbill/DNS/Zone;
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 278
    iget-object v1, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 281
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    .line 282
    .local v1, "rtype":I
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_4

    .line 283
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 284
    .local v2, "list":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 285
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/RRset;

    .line 286
    .local v4, "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 287
    invoke-interface {v2, v3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 284
    .end local v4    # "set":Lorg/xbill/DNS/RRset;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    .end local v3    # "i":I
    :cond_3
    :try_start_2
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    nop

    .end local v2    # "list":Ljava/util/List;
    goto :goto_1

    .line 293
    :cond_4
    move-object v2, v0

    check-cast v2, Lorg/xbill/DNS/RRset;

    .line 294
    .local v2, "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 295
    iget-object v3, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 297
    :cond_5
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 298
    .local v3, "list":Ljava/util/LinkedList;
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v4, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    .end local v2    # "set":Lorg/xbill/DNS/RRset;
    .end local v3    # "list":Ljava/util/LinkedList;
    :goto_1
    monitor-exit p0

    return-void

    .line 273
    .end local v0    # "types":Ljava/lang/Object;
    .end local v1    # "rtype":I
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "rrset":Lorg/xbill/DNS/RRset;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;
    .locals 3
    .param p1, "types"    # Ljava/lang/Object;

    monitor-enter p0

    .line 236
    :try_start_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 237
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 238
    .local v0, "typelist":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/RRset;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/xbill/DNS/RRset;

    check-cast v1, [Lorg/xbill/DNS/RRset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 240
    .end local v0    # "typelist":Ljava/util/List;
    .end local p0    # "this":Lorg/xbill/DNS/Zone;
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/RRset;

    .line 241
    .local v0, "set":Lorg/xbill/DNS/RRset;
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/xbill/DNS/RRset;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 235
    .end local v0    # "set":Lorg/xbill/DNS/RRset;
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

    .line 231
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 231
    .end local p0    # "this":Lorg/xbill/DNS/Zone;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized findRRset(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    monitor-enter p0

    .line 266
    :try_start_0
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 268
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 269
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 265
    .end local v0    # "types":Ljava/lang/Object;
    .end local p0    # "this":Lorg/xbill/DNS/Zone;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "type":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private fromXFR(Lorg/xbill/DNS/ZoneTransferIn;)V
    .locals 3
    .param p1, "xfrin"    # Lorg/xbill/DNS/ZoneTransferIn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 170
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 171
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->run()Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, "records":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 174
    .local v2, "record":Lorg/xbill/DNS/Record;
    invoke-direct {p0, v2}, Lorg/xbill/DNS/Zone;->maybeAddRecord(Lorg/xbill/DNS/Record;)V

    .line 175
    .end local v2    # "record":Lorg/xbill/DNS/Record;
    goto :goto_0

    .line 176
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->isAXFR()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-direct {p0}, Lorg/xbill/DNS/Zone;->validate()V

    .line 180
    return-void

    .line 177
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "zones can only be created from AXFRs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized lookup(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;
    .locals 12
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 341
    invoke-static {v1}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 343
    .end local p0    # "this":Lorg/xbill/DNS/Zone;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 344
    .local v0, "labels":I
    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    .line 346
    .local v2, "olabels":I
    move v3, v2

    .local v3, "tlabels":I
    :goto_0
    const/4 v4, 0x6

    if-gt v3, v0, :cond_d

    .line 347
    const/4 v5, 0x0

    if-ne v3, v2, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v5

    .line 348
    .local v6, "isOrigin":Z
    :goto_1
    if-ne v3, v0, :cond_2

    move v5, v1

    .line 350
    .local v5, "isExact":Z
    :cond_2
    if-eqz v6, :cond_3

    .line 351
    iget-object v7, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .local v7, "tname":Lorg/xbill/DNS/Name;
    goto :goto_2

    .line 352
    .end local v7    # "tname":Lorg/xbill/DNS/Name;
    :cond_3
    if-eqz v5, :cond_4

    .line 353
    move-object v7, p1

    .restart local v7    # "tname":Lorg/xbill/DNS/Name;
    goto :goto_2

    .line 355
    .end local v7    # "tname":Lorg/xbill/DNS/Name;
    :cond_4
    new-instance v7, Lorg/xbill/DNS/Name;

    sub-int v8, v0, v3

    invoke-direct {v7, p1, v8}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 357
    .restart local v7    # "tname":Lorg/xbill/DNS/Name;
    :goto_2
    invoke-direct {p0, v7}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v8

    .line 358
    .local v8, "types":Ljava/lang/Object;
    if-nez v8, :cond_5

    .line 359
    goto :goto_4

    .line 362
    :cond_5
    const/4 v9, 0x2

    if-nez v6, :cond_6

    .line 363
    invoke-direct {p0, v8, v9}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v10

    .line 364
    .local v10, "ns":Lorg/xbill/DNS/RRset;
    if-eqz v10, :cond_6

    .line 365
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v4, 0x3

    invoke-direct {v1, v4, v10}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 370
    .end local v10    # "ns":Lorg/xbill/DNS/RRset;
    :cond_6
    if-eqz v5, :cond_8

    const/16 v10, 0xff

    if-ne p2, v10, :cond_8

    .line 371
    :try_start_2
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v1, v4}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 372
    .local v1, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-direct {p0, v8}, Lorg/xbill/DNS/Zone;->allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v4

    .line 373
    .local v4, "sets":[Lorg/xbill/DNS/RRset;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    array-length v10, v4

    if-ge v9, v10, :cond_7

    .line 374
    aget-object v10, v4, v9

    invoke-virtual {v1, v10}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 375
    .end local v9    # "i":I
    :cond_7
    monitor-exit p0

    return-object v1

    .line 382
    .end local v1    # "sr":Lorg/xbill/DNS/SetResponse;
    .end local v4    # "sets":[Lorg/xbill/DNS/RRset;
    :cond_8
    const/4 v10, 0x5

    if-eqz v5, :cond_a

    .line 383
    :try_start_3
    invoke-direct {p0, v8, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v11

    .line 384
    .local v11, "rrset":Lorg/xbill/DNS/RRset;
    if-eqz v11, :cond_9

    .line 385
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v1, v4}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 386
    .restart local v1    # "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v1, v11}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    monitor-exit p0

    return-object v1

    .line 389
    .end local v1    # "sr":Lorg/xbill/DNS/SetResponse;
    :cond_9
    :try_start_4
    invoke-direct {p0, v8, v10}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v4

    .line 390
    .end local v11    # "rrset":Lorg/xbill/DNS/RRset;
    .local v4, "rrset":Lorg/xbill/DNS/RRset;
    if-eqz v4, :cond_b

    .line 391
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v9, 0x4

    invoke-direct {v1, v9, v4}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 394
    .end local v4    # "rrset":Lorg/xbill/DNS/RRset;
    :cond_a
    const/16 v4, 0x27

    :try_start_5
    invoke-direct {p0, v8, v4}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v4

    .line 395
    .restart local v4    # "rrset":Lorg/xbill/DNS/RRset;
    if-eqz v4, :cond_b

    .line 396
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v1, v10, v4}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v1

    .line 401
    :cond_b
    if-eqz v5, :cond_c

    .line 402
    :try_start_6
    invoke-static {v9}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v1

    .line 346
    .end local v4    # "rrset":Lorg/xbill/DNS/RRset;
    .end local v5    # "isExact":Z
    .end local v6    # "isOrigin":Z
    :cond_c
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 405
    .end local v7    # "tname":Lorg/xbill/DNS/Name;
    .end local v8    # "types":Ljava/lang/Object;
    :cond_d
    :try_start_7
    iget-boolean v5, p0, Lorg/xbill/DNS/Zone;->hasWild:Z

    if-eqz v5, :cond_10

    .line 406
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    sub-int v6, v0, v2

    if-ge v5, v6, :cond_10

    .line 407
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v6

    .line 409
    .local v6, "tname":Lorg/xbill/DNS/Name;
    invoke-direct {p0, v6}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v7

    .line 410
    .local v7, "types":Ljava/lang/Object;
    if-nez v7, :cond_e

    .line 411
    goto :goto_6

    .line 413
    :cond_e
    invoke-direct {p0, v7, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v8

    .line 414
    .local v8, "rrset":Lorg/xbill/DNS/RRset;
    if-eqz v8, :cond_f

    .line 415
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v1, v4}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 416
    .restart local v1    # "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 417
    monitor-exit p0

    return-object v1

    .line 406
    .end local v1    # "sr":Lorg/xbill/DNS/SetResponse;
    .end local v8    # "rrset":Lorg/xbill/DNS/RRset;
    :cond_f
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 422
    .end local v5    # "i":I
    .end local v6    # "tname":Lorg/xbill/DNS/Name;
    .end local v7    # "types":Ljava/lang/Object;
    :cond_10
    :try_start_8
    invoke-static {v1}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v1

    .line 339
    .end local v0    # "labels":I
    .end local v2    # "olabels":I
    .end local v3    # "tlabels":I
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "type":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final maybeAddRecord(Lorg/xbill/DNS/Record;)V
    .locals 5
    .param p1, "record"    # Lorg/xbill/DNS/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    .line 116
    .local v0, "rtype":I
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 118
    .local v1, "name":Lorg/xbill/DNS/Name;
    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "SOA owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, " does not match zone origin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Zone;->addRecord(Lorg/xbill/DNS/Record;)V

    .line 125
    :cond_2
    return-void
.end method

.method private nodeToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "node"    # Ljava/lang/Object;

    .line 523
    invoke-direct {p0, p2}, Lorg/xbill/DNS/Zone;->allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 524
    .local v0, "sets":[Lorg/xbill/DNS/RRset;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 525
    aget-object v2, v0, v1

    .line 526
    .local v2, "rrset":Lorg/xbill/DNS/RRset;
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v3

    .line 527
    .local v3, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "\n"

    if-eqz v4, :cond_0

    .line 528
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 529
    :cond_0
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v3

    .line 530
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 531
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 524
    .end local v2    # "rrset":Lorg/xbill/DNS/RRset;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private declared-synchronized oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;
    .locals 4
    .param p1, "types"    # Ljava/lang/Object;
    .param p2, "type"    # I

    monitor-enter p0

    .line 247
    const/16 v0, 0xff

    if-eq p2, v0, :cond_4

    .line 249
    :try_start_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 250
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 251
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 252
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/RRset;

    .line 253
    .local v2, "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_0

    .line 254
    monitor-exit p0

    return-object v2

    .line 251
    .end local v2    # "set":Lorg/xbill/DNS/RRset;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "list":Ljava/util/List;
    .end local v1    # "i":I
    .end local p0    # "this":Lorg/xbill/DNS/Zone;
    :cond_1
    goto :goto_1

    .line 257
    :cond_2
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/RRset;

    .line 258
    .local v0, "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p2, :cond_3

    .line 259
    monitor-exit p0

    return-object v0

    .line 261
    .end local v0    # "set":Lorg/xbill/DNS/RRset;
    .restart local p0    # "this":Lorg/xbill/DNS/Zone;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 246
    .end local p0    # "this":Lorg/xbill/DNS/Zone;
    .end local p1    # "types":Ljava/lang/Object;
    .end local p2    # "type":I
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 248
    .restart local p1    # "types":Ljava/lang/Object;
    .restart local p2    # "type":I
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "oneRRset(ANY)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    .end local p1    # "types":Ljava/lang/Object;
    .end local p2    # "type":I
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeRRset(Lorg/xbill/DNS/Name;I)V
    .locals 5
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    monitor-enter p0

    .line 307
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 309
    monitor-exit p0

    return-void

    .line 311
    :cond_0
    :try_start_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 312
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 313
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 314
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/RRset;

    .line 315
    .local v3, "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 316
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 317
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 318
    iget-object v4, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    .end local p0    # "this":Lorg/xbill/DNS/Zone;
    :cond_1
    monitor-exit p0

    return-void

    .line 313
    .end local v3    # "set":Lorg/xbill/DNS/RRset;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "i":I
    :cond_3
    goto :goto_1

    .line 323
    :cond_4
    :try_start_2
    move-object v1, v0

    check-cast v1, Lorg/xbill/DNS/RRset;

    .line 324
    .local v1, "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v2, p2, :cond_5

    .line 325
    monitor-exit p0

    return-void

    .line 326
    .restart local p0    # "this":Lorg/xbill/DNS/Zone;
    :cond_5
    :try_start_3
    iget-object v2, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    .end local v1    # "set":Lorg/xbill/DNS/RRset;
    :goto_1
    monitor-exit p0

    return-void

    .line 306
    .end local v0    # "types":Ljava/lang/Object;
    .end local p0    # "this":Lorg/xbill/DNS/Zone;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "type":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private validate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    .line 98
    if-eqz v0, :cond_2

    .line 101
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 102
    .local v0, "rrset":Lorg/xbill/DNS/RRset;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 105
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .local v1, "it":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/SOARecord;

    iput-object v2, p0, Lorg/xbill/DNS/Zone;->SOA:Lorg/xbill/DNS/SOARecord;

    .line 108
    iget-object v2, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/Zone;->NS:Lorg/xbill/DNS/RRset;

    .line 109
    if-eqz v2, :cond_0

    .line 111
    return-void

    .line 110
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, ": no NS set specified"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, ": exactly 1 SOA must be specified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v0    # "rrset":Lorg/xbill/DNS/RRset;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ": no data specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public AXFR()Ljava/util/Iterator;
    .locals 2

    .line 518
    new-instance v0, Lorg/xbill/DNS/Zone$ZoneIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/xbill/DNS/Zone$ZoneIterator;-><init>(Lorg/xbill/DNS/Zone;Z)V

    return-object v0
.end method

.method public addRRset(Lorg/xbill/DNS/RRset;)V
    .locals 1
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .line 459
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 460
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Zone;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;)V

    .line 461
    return-void
.end method

.method public addRecord(Lorg/xbill/DNS/Record;)V
    .locals 4
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .line 470
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 471
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    .line 472
    .local v1, "rtype":I
    monitor-enter p0

    .line 473
    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->findRRset(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object v2

    .line 474
    .local v2, "rrset":Lorg/xbill/DNS/RRset;
    if-nez v2, :cond_0

    .line 475
    new-instance v3, Lorg/xbill/DNS/RRset;

    invoke-direct {v3, p1}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    move-object v2, v3

    .line 476
    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/Zone;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;)V

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {v2, p1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 480
    .end local v2    # "rrset":Lorg/xbill/DNS/RRset;
    :goto_0
    monitor-exit p0

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public findExactMatch(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .line 446
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v0

    .line 447
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 448
    const/4 v1, 0x0

    return-object v1

    .line 449
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v1

    return-object v1
.end method

.method public findRecords(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .line 434
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->lookup(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDClass()I
    .locals 1

    .line 226
    iget v0, p0, Lorg/xbill/DNS/Zone;->dclass:I

    return v0
.end method

.method public getNS()Lorg/xbill/DNS/RRset;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->NS:Lorg/xbill/DNS/RRset;

    return-object v0
.end method

.method public getOrigin()Lorg/xbill/DNS/Name;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getSOA()Lorg/xbill/DNS/SOARecord;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->SOA:Lorg/xbill/DNS/SOARecord;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 508
    new-instance v0, Lorg/xbill/DNS/Zone$ZoneIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/xbill/DNS/Zone$ZoneIterator;-><init>(Lorg/xbill/DNS/Zone;Z)V

    return-object v0
.end method

.method public removeRecord(Lorg/xbill/DNS/Record;)V
    .locals 5
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .line 490
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 491
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    .line 492
    .local v1, "rtype":I
    monitor-enter p0

    .line 493
    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->findRRset(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object v2

    .line 494
    .local v2, "rrset":Lorg/xbill/DNS/RRset;
    if-nez v2, :cond_0

    .line 495
    monitor-exit p0

    return-void

    .line 496
    :cond_0
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->removeRRset(Lorg/xbill/DNS/Name;I)V

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {v2, p1}, Lorg/xbill/DNS/RRset;->deleteRR(Lorg/xbill/DNS/Record;)V

    .line 500
    .end local v2    # "rrset":Lorg/xbill/DNS/RRset;
    :goto_0
    monitor-exit p0

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized toMasterFile()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 541
    .local v0, "zentries":Ljava/util/Iterator;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 542
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Zone;->nodeToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 543
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 545
    .local v2, "entry":Ljava/util/Map$Entry;
    iget-object v3, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 546
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/xbill/DNS/Zone;->nodeToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 547
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local p0    # "this":Lorg/xbill/DNS/Zone;
    :cond_0
    goto :goto_0

    .line 548
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 539
    .end local v0    # "zentries":Ljava/util/Iterator;
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 556
    invoke-virtual {p0}, Lorg/xbill/DNS/Zone;->toMasterFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
