.class public Ljnamed;
.super Ljava/lang/Object;
.source "jnamed.java"


# static fields
.field static final FLAG_DNSSECOK:I = 0x1

.field static final FLAG_SIGONLY:I = 0x2


# instance fields
.field TSIGs:Ljava/util/Map;

.field caches:Ljava/util/Map;

.field znames:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 13
    .param p1, "conffile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "ports":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, "addresses":Ljava/util/List;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 33
    .local v2, "fs":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 34
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .local v4, "br":Ljava/io/BufferedReader;
    nop

    .line 42
    :try_start_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Ljnamed;->caches:Ljava/util/Map;

    .line 43
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Ljnamed;->znames:Ljava/util/Map;

    .line 44
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Ljnamed;->TSIGs:Ljava/util/Map;

    .line 46
    const/4 v5, 0x0

    .line 47
    .local v5, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v6, :cond_a

    .line 48
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 49
    .local v6, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "keyword":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_1

    .line 53
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Invalid line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string/jumbo v8, "primary"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 59
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Ljnamed;->addPrimaryZone(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 60
    :cond_3
    const-string/jumbo v8, "secondary"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 61
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 61
    invoke-virtual {p0, v8, v9}, Ljnamed;->addSecondaryZone(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 63
    :cond_4
    const-string v8, "cache"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 64
    new-instance v8, Lorg/xbill/DNS/Cache;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xbill/DNS/Cache;-><init>(Ljava/lang/String;)V

    .line 65
    .local v8, "cache":Lorg/xbill/DNS/Cache;
    iget-object v9, p0, Ljnamed;->caches:Ljava/util/Map;

    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    nop

    .end local v8    # "cache":Lorg/xbill/DNS/Cache;
    goto :goto_2

    :cond_5
    const-string v8, "key"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 67
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "s1":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, "s2":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 70
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Ljnamed;->addTSIG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_6
    const-string v10, "hmac-md5"

    invoke-virtual {p0, v10, v8, v9}, Ljnamed;->addTSIG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v8    # "s1":Ljava/lang/String;
    .end local v9    # "s2":Ljava/lang/String;
    :goto_1
    goto :goto_2

    :cond_7
    const-string/jumbo v8, "port"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 74
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 75
    :cond_8
    const-string v8, "address"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 76
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "addr":Ljava/lang/String;
    invoke-static {v8}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    nop

    .end local v8    # "addr":Ljava/lang/String;
    goto :goto_2

    .line 79
    :cond_9
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "unknown keyword: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    .end local v6    # "st":Ljava/util/StringTokenizer;
    .end local v7    # "keyword":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 85
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_b

    .line 86
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x35

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_c

    .line 89
    const-string v6, "0.0.0.0"

    invoke-static {v6}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 92
    .local v6, "iaddr":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 93
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 94
    .local v7, "addr":Ljava/net/InetAddress;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 95
    .local v8, "iport":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 96
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 97
    .local v9, "port":I
    invoke-virtual {p0, v7, v9}, Ljnamed;->addUDP(Ljava/net/InetAddress;I)V

    .line 98
    invoke-virtual {p0, v7, v9}, Ljnamed;->addTCP(Ljava/net/InetAddress;I)V

    .line 99
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "jnamed: listening on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-static {v7, v9}, Ljnamed;->addrport(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 99
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    .end local v9    # "port":I
    goto :goto_4

    .line 102
    .end local v7    # "addr":Ljava/net/InetAddress;
    .end local v8    # "iport":Ljava/util/Iterator;
    :cond_d
    goto :goto_3

    .line 103
    :cond_e
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "jnamed: running"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "iaddr":Ljava/util/Iterator;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 107
    nop

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v5

    .line 36
    .end local v2    # "fs":Ljava/io/FileInputStream;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Cannot open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private final addAdditional(Lorg/xbill/DNS/Message;I)V
    .locals 1
    .param p1, "response"    # Lorg/xbill/DNS/Message;
    .param p2, "flags"    # I

    .line 250
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Ljnamed;->addAdditional2(Lorg/xbill/DNS/Message;II)V

    .line 251
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Ljnamed;->addAdditional2(Lorg/xbill/DNS/Message;II)V

    .line 252
    return-void
.end method

.method private addAdditional2(Lorg/xbill/DNS/Message;II)V
    .locals 4
    .param p1, "response"    # Lorg/xbill/DNS/Message;
    .param p2, "section"    # I
    .param p3, "flags"    # I

    .line 239
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 240
    .local v0, "records":[Lorg/xbill/DNS/Record;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 241
    aget-object v2, v0, v1

    .line 242
    .local v2, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 243
    .local v3, "glueName":Lorg/xbill/DNS/Name;
    if-eqz v3, :cond_0

    .line 244
    invoke-direct {p0, p1, v3, p3}, Ljnamed;->addGlue(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Name;I)V

    .line 240
    .end local v2    # "r":Lorg/xbill/DNS/Record;
    .end local v3    # "glueName":Lorg/xbill/DNS/Name;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private final addCacheNS(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Cache;Lorg/xbill/DNS/Name;)V
    .locals 5
    .param p1, "response"    # Lorg/xbill/DNS/Message;
    .param p2, "cache"    # Lorg/xbill/DNS/Cache;
    .param p3, "name"    # Lorg/xbill/DNS/Name;

    .line 218
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v1

    .line 219
    .local v1, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    return-void

    .line 221
    :cond_0
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->getNS()Lorg/xbill/DNS/RRset;

    move-result-object v2

    .line 222
    .local v2, "nsRecords":Lorg/xbill/DNS/RRset;
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v3

    .line 223
    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/Record;

    .line 225
    .local v4, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {p1, v4, v0}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 226
    .end local v4    # "r":Lorg/xbill/DNS/Record;
    goto :goto_0

    .line 227
    :cond_1
    return-void
.end method

.method private addGlue(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Name;I)V
    .locals 7
    .param p1, "response"    # Lorg/xbill/DNS/Message;
    .param p2, "name"    # Lorg/xbill/DNS/Name;
    .param p3, "flags"    # I

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, v0, v0}, Ljnamed;->findExactMatch(Lorg/xbill/DNS/Name;IIZ)Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 232
    .local v0, "a":Lorg/xbill/DNS/RRset;
    if-nez v0, :cond_0

    .line 233
    return-void

    .line 234
    :cond_0
    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, v0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Ljnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    .line 235
    return-void
.end method

.method private final addNS(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Zone;I)V
    .locals 7
    .param p1, "response"    # Lorg/xbill/DNS/Message;
    .param p2, "zone"    # Lorg/xbill/DNS/Zone;
    .param p3, "flags"    # I

    .line 211
    invoke-virtual {p2}, Lorg/xbill/DNS/Zone;->getNS()Lorg/xbill/DNS/RRset;

    move-result-object v6

    .line 212
    .local v6, "nsRecords":Lorg/xbill/DNS/RRset;
    invoke-virtual {v6}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v4, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    .line 214
    return-void
.end method

.method private final addSOA(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Zone;)V
    .locals 2
    .param p1, "response"    # Lorg/xbill/DNS/Message;
    .param p2, "zone"    # Lorg/xbill/DNS/Zone;

    .line 206
    invoke-virtual {p2}, Lorg/xbill/DNS/Zone;->getSOA()Lorg/xbill/DNS/SOARecord;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 207
    return-void
.end method

.method private static addrport(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I

    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 619
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 620
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "usage: jnamed [conf]"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 626
    :cond_0
    :try_start_0
    array-length v0, p0

    if-ne v0, v2, :cond_1

    .line 627
    aget-object v0, p0, v1

    .local v0, "conf":Ljava/lang/String;
    goto :goto_0

    .line 629
    .end local v0    # "conf":Ljava/lang/String;
    :cond_1
    const-string v0, "jnamed.conf"

    .line 630
    .restart local v0    # "conf":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljnamed;

    invoke-direct {v1, v0}, Ljnamed;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xbill/DNS/ZoneTransferException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 637
    .local v0, "s":Ljnamed;
    goto :goto_1

    .line 635
    .end local v0    # "s":Ljnamed;
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Lorg/xbill/DNS/ZoneTransferException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 632
    .end local v0    # "e":Lorg/xbill/DNS/ZoneTransferException;
    :catch_1
    move-exception v0

    .line 633
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 637
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 638
    :goto_1
    return-void
.end method


# virtual methods
.method public TCPclient(Ljava/net/Socket;)V
    .locals 7
    .param p1, "s"    # Ljava/net/Socket;

    .line 500
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 501
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 502
    .local v1, "dataIn":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 503
    .local v2, "inLength":I
    new-array v3, v2, [B

    .line 504
    .local v3, "in":[B
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    const/4 v4, 0x0

    .line 509
    .local v4, "response":[B
    :try_start_1
    new-instance v5, Lorg/xbill/DNS/Message;

    invoke-direct {v5, v3}, Lorg/xbill/DNS/Message;-><init>([B)V

    .line 510
    .local v5, "query":Lorg/xbill/DNS/Message;
    array-length v6, v3

    invoke-virtual {p0, v5, v3, v6, p1}, Ljnamed;->generateReply(Lorg/xbill/DNS/Message;[BILjava/net/Socket;)[B

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v6

    .line 511
    if-nez v4, :cond_0

    .line 529
    :try_start_2
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 531
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0

    .line 512
    :goto_1
    return-void

    .line 516
    :cond_0
    goto :goto_2

    .line 514
    .end local v5    # "query":Lorg/xbill/DNS/Message;
    :catch_1
    move-exception v5

    .line 515
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0, v3}, Ljnamed;->formerrMessage([B)[B

    move-result-object v6

    move-object v4, v6

    .line 517
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 518
    .local v5, "dataOut":Ljava/io/DataOutputStream;
    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 519
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 529
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "dataIn":Ljava/io/DataInputStream;
    .end local v2    # "inLength":I
    .end local v3    # "in":[B
    .end local v4    # "response":[B
    .end local v5    # "dataOut":Ljava/io/DataOutputStream;
    :try_start_4
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 528
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 521
    :catch_2
    move-exception v0

    .line 522
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "TCPclient("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 524
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    .line 523
    invoke-static {v3, v4}, Ljnamed;->addrport(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 529
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 531
    :goto_3
    goto :goto_4

    :catch_3
    move-exception v0

    .line 532
    nop

    .line 533
    :goto_4
    return-void

    .line 529
    :goto_5
    :try_start_7
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 531
    :goto_6
    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :goto_7
    throw v0
.end method

.method addAnswer(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Name;IIII)B
    .locals 24
    .param p1, "response"    # Lorg/xbill/DNS/Message;
    .param p2, "name"    # Lorg/xbill/DNS/Name;
    .param p3, "type"    # I
    .param p4, "dclass"    # I
    .param p5, "iterations"    # I
    .param p6, "flags"    # I

    .line 259
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move/from16 v0, p3

    move/from16 v14, p4

    move/from16 v11, p5

    const/16 v20, 0x0

    .line 261
    .local v20, "rcode":B
    const/4 v7, 0x6

    if-le v11, v7, :cond_0

    .line 262
    const/4 v1, 0x0

    return v1

    .line 264
    :cond_0
    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v9, p6

    move v10, v0

    goto :goto_1

    .line 265
    :cond_2
    :goto_0
    const/16 v0, 0xff

    .line 266
    .end local p3    # "type":I
    .local v0, "type":I
    or-int/lit8 v1, p6, 0x2

    move v10, v0

    move v9, v1

    .line 269
    .end local v0    # "type":I
    .end local p6    # "flags":I
    .local v9, "flags":I
    .local v10, "type":I
    :goto_1
    invoke-virtual {v12, v15}, Ljnamed;->findBestZone(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Zone;

    move-result-object v8

    .line 270
    .local v8, "zone":Lorg/xbill/DNS/Zone;
    const/4 v0, 0x3

    if-eqz v8, :cond_3

    .line 271
    invoke-virtual {v8, v15, v10}, Lorg/xbill/DNS/Zone;->findRecords(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;

    move-result-object v1

    move-object/from16 v21, v1

    .local v1, "sr":Lorg/xbill/DNS/SetResponse;
    goto :goto_2

    .line 273
    .end local v1    # "sr":Lorg/xbill/DNS/SetResponse;
    :cond_3
    invoke-virtual {v12, v14}, Ljnamed;->getCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v1

    .line 274
    .local v1, "cache":Lorg/xbill/DNS/Cache;
    invoke-virtual {v1, v15, v10, v0}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v2

    move-object/from16 v21, v2

    .line 277
    .end local v1    # "cache":Lorg/xbill/DNS/Cache;
    .local v21, "sr":Lorg/xbill/DNS/SetResponse;
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/SetResponse;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 278
    invoke-virtual {v12, v14}, Ljnamed;->getCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v1

    invoke-direct {v12, v13, v1, v15}, Ljnamed;->addCacheNS(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Cache;Lorg/xbill/DNS/Name;)V

    .line 280
    :cond_4
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v1

    const/4 v6, 0x5

    if-eqz v1, :cond_6

    .line 281
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Header;->setRcode(I)V

    .line 282
    if-eqz v8, :cond_5

    .line 283
    invoke-direct {v12, v13, v8}, Ljnamed;->addSOA(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Zone;)V

    .line 284
    if-nez v11, :cond_5

    .line 285
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 287
    :cond_5
    const/16 v20, 0x3

    move/from16 v22, v10

    move-object v10, v8

    move-object/from16 v23, v15

    move v15, v14

    move-object/from16 v14, v23

    goto/16 :goto_4

    .line 289
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 290
    if-eqz v8, :cond_8

    .line 291
    invoke-direct {v12, v13, v8}, Ljnamed;->addSOA(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Zone;)V

    .line 292
    if-nez v11, :cond_7

    .line 293
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/Header;->setFlag(I)V

    move/from16 v22, v10

    move-object v10, v8

    move-object/from16 v23, v15

    move v15, v14

    move-object/from16 v14, v23

    goto/16 :goto_4

    .line 292
    :cond_7
    move/from16 v22, v10

    move-object v10, v8

    move-object/from16 v23, v15

    move v15, v14

    move-object/from16 v14, v23

    goto/16 :goto_4

    .line 290
    :cond_8
    move/from16 v22, v10

    move-object v10, v8

    move-object/from16 v23, v15

    move v15, v14

    move-object/from16 v14, v23

    goto/16 :goto_4

    .line 296
    :cond_9
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 297
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/SetResponse;->getNS()Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 298
    .local v0, "nsRecords":Lorg/xbill/DNS/RRset;
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v4, v0

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Ljnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    .line 300
    .end local v0    # "nsRecords":Lorg/xbill/DNS/RRset;
    move/from16 v22, v10

    move-object v10, v8

    move-object/from16 v23, v15

    move v15, v14

    move-object/from16 v14, v23

    goto/16 :goto_4

    .line 301
    :cond_a
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 302
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/SetResponse;->getCNAME()Lorg/xbill/DNS/CNAMERecord;

    move-result-object v0

    .line 303
    .local v0, "cname":Lorg/xbill/DNS/CNAMERecord;
    new-instance v4, Lorg/xbill/DNS/RRset;

    invoke-direct {v4, v0}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 304
    .local v4, "rrset":Lorg/xbill/DNS/RRset;
    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move v7, v6

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Ljnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    .line 305
    if-eqz v8, :cond_b

    if-nez v11, :cond_b

    .line 306
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 307
    :cond_b
    invoke-virtual {v0}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v7

    add-int/lit8 v1, v11, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v3, v8

    .end local v8    # "zone":Lorg/xbill/DNS/Zone;
    .local v3, "zone":Lorg/xbill/DNS/Zone;
    move v8, v10

    move v2, v9

    .end local v9    # "flags":I
    .local v2, "flags":I
    move/from16 v9, p4

    move/from16 v22, v10

    .end local v10    # "type":I
    .local v22, "type":I
    move v10, v1

    move v11, v2

    invoke-virtual/range {v5 .. v11}, Ljnamed;->addAnswer(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Name;IIII)B

    move-result v20

    .line 309
    .end local v0    # "cname":Lorg/xbill/DNS/CNAMERecord;
    .end local v4    # "rrset":Lorg/xbill/DNS/RRset;
    move v9, v2

    move-object v10, v3

    move-object/from16 v23, v15

    move v15, v14

    move-object/from16 v14, v23

    goto/16 :goto_4

    .line 310
    .end local v2    # "flags":I
    .end local v3    # "zone":Lorg/xbill/DNS/Zone;
    .end local v22    # "type":I
    .restart local v8    # "zone":Lorg/xbill/DNS/Zone;
    .restart local v9    # "flags":I
    .restart local v10    # "type":I
    :cond_c
    move v0, v6

    move-object v3, v8

    move v2, v9

    move/from16 v22, v10

    .end local v8    # "zone":Lorg/xbill/DNS/Zone;
    .end local v9    # "flags":I
    .end local v10    # "type":I
    .restart local v2    # "flags":I
    .restart local v3    # "zone":Lorg/xbill/DNS/Zone;
    .restart local v22    # "type":I
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 311
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/SetResponse;->getDNAME()Lorg/xbill/DNS/DNAMERecord;

    move-result-object v11

    .line 312
    .local v11, "dname":Lorg/xbill/DNS/DNAMERecord;
    new-instance v4, Lorg/xbill/DNS/RRset;

    invoke-direct {v4, v11}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 313
    .restart local v4    # "rrset":Lorg/xbill/DNS/RRset;
    const/4 v5, 0x1

    move-object/from16 v1, p0

    move v10, v2

    .end local v2    # "flags":I
    .local v10, "flags":I
    move-object/from16 v2, p2

    move-object v9, v3

    .end local v3    # "zone":Lorg/xbill/DNS/Zone;
    .local v9, "zone":Lorg/xbill/DNS/Zone;
    move-object/from16 v3, p1

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Ljnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    .line 316
    :try_start_0
    invoke-virtual {v15, v11}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v19
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .local v19, "newname":Lorg/xbill/DNS/Name;
    nop

    .line 321
    new-instance v1, Lorg/xbill/DNS/RRset;

    new-instance v2, Lorg/xbill/DNS/CNAMERecord;

    const-wide/16 v17, 0x0

    move v8, v14

    move-object v14, v2

    move-object v7, v15

    move-object/from16 v15, p2

    move/from16 v16, p4

    invoke-direct/range {v14 .. v19}, Lorg/xbill/DNS/CNAMERecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V

    invoke-direct {v1, v2}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    move-object v4, v1

    .line 322
    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Ljnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    .line 323
    if-eqz v9, :cond_d

    if-nez p5, :cond_d

    .line 324
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 325
    :cond_d
    add-int/lit8 v0, p5, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v14, v7

    move-object/from16 v7, v19

    move v15, v8

    move/from16 v8, v22

    move-object v3, v9

    .end local v9    # "zone":Lorg/xbill/DNS/Zone;
    .restart local v3    # "zone":Lorg/xbill/DNS/Zone;
    move/from16 v9, p4

    move v2, v10

    .end local v10    # "flags":I
    .restart local v2    # "flags":I
    move v10, v0

    move-object v1, v11

    .end local v11    # "dname":Lorg/xbill/DNS/DNAMERecord;
    .local v1, "dname":Lorg/xbill/DNS/DNAMERecord;
    move v11, v2

    invoke-virtual/range {v5 .. v11}, Ljnamed;->addAnswer(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Name;IIII)B

    move-result v20

    .line 327
    .end local v1    # "dname":Lorg/xbill/DNS/DNAMERecord;
    .end local v4    # "rrset":Lorg/xbill/DNS/RRset;
    .end local v19    # "newname":Lorg/xbill/DNS/Name;
    move v9, v2

    move-object v10, v3

    goto/16 :goto_4

    .line 318
    .end local v2    # "flags":I
    .end local v3    # "zone":Lorg/xbill/DNS/Zone;
    .restart local v4    # "rrset":Lorg/xbill/DNS/RRset;
    .restart local v9    # "zone":Lorg/xbill/DNS/Zone;
    .restart local v10    # "flags":I
    .restart local v11    # "dname":Lorg/xbill/DNS/DNAMERecord;
    :catch_0
    move-exception v0

    move-object v3, v9

    move v2, v10

    move-object v1, v11

    move-object/from16 v23, v15

    move v15, v14

    move-object/from16 v14, v23

    move-object v5, v0

    .end local v9    # "zone":Lorg/xbill/DNS/Zone;
    .end local v10    # "flags":I
    .end local v11    # "dname":Lorg/xbill/DNS/DNAMERecord;
    .restart local v1    # "dname":Lorg/xbill/DNS/DNAMERecord;
    .restart local v2    # "flags":I
    .restart local v3    # "zone":Lorg/xbill/DNS/Zone;
    move-object v0, v5

    .line 319
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    return v7

    .line 328
    .end local v0    # "e":Lorg/xbill/DNS/NameTooLongException;
    .end local v1    # "dname":Lorg/xbill/DNS/DNAMERecord;
    .end local v4    # "rrset":Lorg/xbill/DNS/RRset;
    :cond_e
    move-object/from16 v23, v15

    move v15, v14

    move-object/from16 v14, v23

    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 329
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v7

    .line 330
    .local v7, "rrsets":[Lorg/xbill/DNS/RRset;
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_3
    array-length v1, v7

    if-ge v8, v1, :cond_f

    .line 331
    aget-object v4, v7, v8

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move v9, v2

    .end local v2    # "flags":I
    .local v9, "flags":I
    move-object/from16 v2, p2

    move-object v10, v3

    .end local v3    # "zone":Lorg/xbill/DNS/Zone;
    .local v10, "zone":Lorg/xbill/DNS/Zone;
    move-object/from16 v3, p1

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Ljnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    .line 330
    add-int/lit8 v8, v8, 0x1

    move v2, v9

    move-object v3, v10

    goto :goto_3

    .end local v9    # "flags":I
    .end local v10    # "zone":Lorg/xbill/DNS/Zone;
    .restart local v2    # "flags":I
    .restart local v3    # "zone":Lorg/xbill/DNS/Zone;
    :cond_f
    move v9, v2

    move-object v10, v3

    .line 333
    .end local v2    # "flags":I
    .end local v3    # "zone":Lorg/xbill/DNS/Zone;
    .end local v8    # "i":I
    .restart local v9    # "flags":I
    .restart local v10    # "zone":Lorg/xbill/DNS/Zone;
    if-eqz v10, :cond_10

    .line 334
    invoke-direct {v12, v13, v10, v9}, Ljnamed;->addNS(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Zone;I)V

    .line 335
    if-nez p5, :cond_12

    .line 336
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Header;->setFlag(I)V

    goto :goto_4

    .line 339
    :cond_10
    invoke-virtual {v12, v15}, Ljnamed;->getCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v0

    invoke-direct {v12, v13, v0, v14}, Ljnamed;->addCacheNS(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Cache;Lorg/xbill/DNS/Name;)V

    goto :goto_4

    .line 328
    .end local v7    # "rrsets":[Lorg/xbill/DNS/RRset;
    .end local v9    # "flags":I
    .end local v10    # "zone":Lorg/xbill/DNS/Zone;
    .restart local v2    # "flags":I
    .restart local v3    # "zone":Lorg/xbill/DNS/Zone;
    :cond_11
    move v9, v2

    move-object v10, v3

    .line 341
    .end local v2    # "flags":I
    .end local v3    # "zone":Lorg/xbill/DNS/Zone;
    .restart local v9    # "flags":I
    .restart local v10    # "zone":Lorg/xbill/DNS/Zone;
    :cond_12
    :goto_4
    return v20
.end method

.method public addPrimaryZone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "zname"    # Ljava/lang/String;
    .param p2, "zonefile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "origin":Lorg/xbill/DNS/Name;
    if-eqz p1, :cond_0

    .line 114
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 115
    :cond_0
    new-instance v1, Lorg/xbill/DNS/Zone;

    invoke-direct {v1, v0, p2}, Lorg/xbill/DNS/Zone;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 116
    .local v1, "newzone":Lorg/xbill/DNS/Zone;
    iget-object v2, p0, Ljnamed;->znames:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/xbill/DNS/Zone;->getOrigin()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V
    .locals 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "response"    # Lorg/xbill/DNS/Message;
    .param p3, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p4, "section"    # I
    .param p5, "flags"    # I

    .line 181
    const/4 v0, 0x1

    .local v0, "s":I
    :goto_0
    if-gt v0, p4, :cond_1

    .line 182
    invoke-virtual {p3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    return-void

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "s":I
    :cond_1
    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_3

    .line 185
    invoke-virtual {p3}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    .line 186
    .local v0, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 188
    .local v1, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/Record;->withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 190
    :cond_2
    invoke-virtual {p2, v1, p4}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 191
    .end local v1    # "r":Lorg/xbill/DNS/Record;
    goto :goto_1

    .line 193
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_3
    and-int/lit8 v0, p5, 0x3

    if-eqz v0, :cond_5

    .line 194
    invoke-virtual {p3}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v0

    .line 195
    .restart local v0    # "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 197
    .restart local v1    # "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v2

    if-nez v2, :cond_4

    .line 198
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/Record;->withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 199
    :cond_4
    invoke-virtual {p2, v1, p4}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 200
    .end local v1    # "r":Lorg/xbill/DNS/Record;
    goto :goto_2

    .line 202
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public addSecondaryZone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "zone"    # Ljava/lang/String;
    .param p2, "remote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 123
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 124
    .local v0, "zname":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Zone;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p2}, Lorg/xbill/DNS/Zone;-><init>(Lorg/xbill/DNS/Name;ILjava/lang/String;)V

    .line 125
    .local v1, "newzone":Lorg/xbill/DNS/Zone;
    iget-object v2, p0, Ljnamed;->znames:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public addTCP(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 605
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljnamed$2;

    invoke-direct {v1, p0, p1, p2}, Ljnamed$2;-><init>(Ljnamed;Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 607
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 608
    return-void
.end method

.method public addTSIG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "algstr"    # Ljava/lang/String;
    .param p2, "namestr"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p2, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 131
    .local v0, "name":Lorg/xbill/DNS/Name;
    iget-object v1, p0, Ljnamed;->TSIGs:Ljava/util/Map;

    new-instance v2, Lorg/xbill/DNS/TSIG;

    invoke-direct {v2, p1, p2, p3}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public addUDP(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 613
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljnamed$3;

    invoke-direct {v1, p0, p1, p2}, Ljnamed$3;-><init>(Ljnamed;Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 615
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 616
    return-void
.end method

.method buildErrorMessage(Lorg/xbill/DNS/Header;ILorg/xbill/DNS/Record;)[B
    .locals 3
    .param p1, "header"    # Lorg/xbill/DNS/Header;
    .param p2, "rcode"    # I
    .param p3, "question"    # Lorg/xbill/DNS/Record;

    .line 464
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    .line 465
    .local v0, "response":Lorg/xbill/DNS/Message;
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Message;->setHeader(Lorg/xbill/DNS/Header;)V

    .line 466
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 467
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->removeAllRecords(I)V

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 469
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 470
    :cond_1
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Header;->setRcode(I)V

    .line 471
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v1

    return-object v1
.end method

.method doAXFR(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;Ljava/net/Socket;)[B
    .locals 19
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "query"    # Lorg/xbill/DNS/Message;
    .param p3, "tsig"    # Lorg/xbill/DNS/TSIG;
    .param p4, "qtsig"    # Lorg/xbill/DNS/TSIGRecord;
    .param p5, "s"    # Ljava/net/Socket;

    .line 346
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    iget-object v0, v7, Ljnamed;->znames:Ljava/util/Map;

    move-object/from16 v9, p1

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/xbill/DNS/Zone;

    .line 347
    .local v10, "zone":Lorg/xbill/DNS/Zone;
    const/4 v1, 0x1

    .line 348
    .local v1, "first":Z
    const/4 v0, 0x5

    if-nez v10, :cond_0

    .line 349
    move-object/from16 v11, p2

    invoke-virtual {v7, v11, v0}, Ljnamed;->errorMessage(Lorg/xbill/DNS/Message;I)[B

    move-result-object v0

    return-object v0

    .line 350
    :cond_0
    move-object/from16 v11, p2

    invoke-virtual {v10}, Lorg/xbill/DNS/Zone;->AXFR()Ljava/util/Iterator;

    move-result-object v12

    .line 353
    .local v12, "it":Ljava/util/Iterator;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual/range {p5 .. p5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v13, v2

    .line 354
    .local v13, "dataOut":Ljava/io/DataOutputStream;
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move v14, v2

    move-object/from16 v15, p4

    move v6, v1

    .line 355
    .end local v1    # "first":Z
    .end local p4    # "qtsig":Lorg/xbill/DNS/TSIGRecord;
    .local v6, "first":Z
    .local v14, "id":I
    .local v15, "qtsig":Lorg/xbill/DNS/TSIGRecord;
    :goto_0
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/xbill/DNS/RRset;

    .line 357
    .local v4, "rrset":Lorg/xbill/DNS/RRset;
    new-instance v1, Lorg/xbill/DNS/Message;

    invoke-direct {v1, v14}, Lorg/xbill/DNS/Message;-><init>(I)V

    move-object v5, v1

    .line 358
    .local v5, "response":Lorg/xbill/DNS/Message;
    invoke-virtual {v5}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    move-object v3, v1

    .line 359
    .local v3, "header":Lorg/xbill/DNS/Header;
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 360
    invoke-virtual {v3, v0}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 361
    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v18, v3

    .end local v3    # "header":Lorg/xbill/DNS/Header;
    .local v18, "header":Lorg/xbill/DNS/Header;
    move-object v3, v5

    move-object v0, v5

    .end local v5    # "response":Lorg/xbill/DNS/Message;
    .local v0, "response":Lorg/xbill/DNS/Message;
    move/from16 v5, v16

    move v7, v6

    .end local v6    # "first":Z
    .local v7, "first":Z
    move/from16 v6, v17

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Ljnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    .line 363
    if-eqz v8, :cond_1

    .line 364
    invoke-virtual {v8, v0, v15, v7}, Lorg/xbill/DNS/TSIG;->applyStream(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;Z)V

    .line 365
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v15, v1

    .line 367
    :cond_1
    const/4 v6, 0x0

    .line 368
    .end local v7    # "first":Z
    .restart local v6    # "first":Z
    :try_start_3
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v1

    .line 369
    .local v1, "out":[B
    array-length v2, v1

    invoke-virtual {v13, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 370
    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 371
    .end local v0    # "response":Lorg/xbill/DNS/Message;
    .end local v1    # "out":[B
    .end local v4    # "rrset":Lorg/xbill/DNS/RRset;
    .end local v18    # "header":Lorg/xbill/DNS/Header;
    const/4 v0, 0x5

    move-object/from16 v7, p0

    goto :goto_0

    .line 373
    .end local v13    # "dataOut":Ljava/io/DataOutputStream;
    .end local v14    # "id":I
    :catch_0
    move-exception v0

    move v1, v6

    goto :goto_1

    .end local v6    # "first":Z
    .restart local v7    # "first":Z
    :catch_1
    move-exception v0

    move v1, v7

    goto :goto_1

    .line 355
    .end local v7    # "first":Z
    .restart local v6    # "first":Z
    .restart local v13    # "dataOut":Ljava/io/DataOutputStream;
    .restart local v14    # "id":I
    :cond_2
    move v7, v6

    .line 375
    .end local v6    # "first":Z
    .end local v13    # "dataOut":Ljava/io/DataOutputStream;
    .end local v14    # "id":I
    .restart local v7    # "first":Z
    goto :goto_2

    .line 373
    .end local v7    # "first":Z
    .restart local v6    # "first":Z
    :catch_2
    move-exception v0

    move v7, v6

    move v1, v7

    .end local v6    # "first":Z
    .restart local v7    # "first":Z
    goto :goto_1

    .end local v7    # "first":Z
    .end local v15    # "qtsig":Lorg/xbill/DNS/TSIGRecord;
    .local v1, "first":Z
    .restart local p4    # "qtsig":Lorg/xbill/DNS/TSIGRecord;
    :catch_3
    move-exception v0

    move-object/from16 v15, p4

    .line 374
    .end local p4    # "qtsig":Lorg/xbill/DNS/TSIGRecord;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v15    # "qtsig":Lorg/xbill/DNS/TSIGRecord;
    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "AXFR failed"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v6, v1

    .line 377
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "first":Z
    .restart local v6    # "first":Z
    :goto_2
    :try_start_4
    invoke-virtual/range {p5 .. p5}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 380
    goto :goto_3

    .line 379
    :catch_4
    move-exception v0

    .line 381
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public errorMessage(Lorg/xbill/DNS/Message;I)[B
    .locals 2
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .param p2, "rcode"    # I

    .line 488
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    .line 489
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 488
    invoke-virtual {p0, v0, p2, v1}, Ljnamed;->buildErrorMessage(Lorg/xbill/DNS/Header;ILorg/xbill/DNS/Record;)[B

    move-result-object v0

    return-object v0
.end method

.method public findBestZone(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Zone;
    .locals 5
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "foundzone":Lorg/xbill/DNS/Zone;
    iget-object v1, p0, Ljnamed;->znames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/xbill/DNS/Zone;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    return-object v0

    .line 150
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 151
    .local v1, "labels":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 152
    new-instance v3, Lorg/xbill/DNS/Name;

    invoke-direct {v3, p1, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 153
    .local v3, "tname":Lorg/xbill/DNS/Name;
    iget-object v4, p0, Ljnamed;->znames:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/xbill/DNS/Zone;

    .line 154
    if-eqz v0, :cond_1

    .line 155
    return-object v0

    .line 151
    .end local v3    # "tname":Lorg/xbill/DNS/Name;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public findExactMatch(Lorg/xbill/DNS/Name;IIZ)Lorg/xbill/DNS/RRset;
    .locals 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "glue"    # Z

    .line 162
    invoke-virtual {p0, p1}, Ljnamed;->findBestZone(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Zone;

    move-result-object v0

    .line 163
    .local v0, "zone":Lorg/xbill/DNS/Zone;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1, p2}, Lorg/xbill/DNS/Zone;->findExactMatch(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object v1

    return-object v1

    .line 167
    :cond_0
    invoke-virtual {p0, p3}, Ljnamed;->getCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v1

    .line 168
    .local v1, "cache":Lorg/xbill/DNS/Cache;
    if-eqz p4, :cond_1

    .line 169
    invoke-virtual {v1, p1, p2}, Lorg/xbill/DNS/Cache;->findAnyRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;

    move-result-object v2

    .local v2, "rrsets":[Lorg/xbill/DNS/RRset;
    goto :goto_0

    .line 171
    .end local v2    # "rrsets":[Lorg/xbill/DNS/RRset;
    :cond_1
    invoke-virtual {v1, p1, p2}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;

    move-result-object v2

    .line 172
    .restart local v2    # "rrsets":[Lorg/xbill/DNS/RRset;
    :goto_0
    if-nez v2, :cond_2

    .line 173
    const/4 v3, 0x0

    return-object v3

    .line 175
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v2, v3

    return-object v3
.end method

.method public formerrMessage([B)[B
    .locals 3
    .param p1, "in"    # [B

    .line 478
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/xbill/DNS/Header;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/Header;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .local v1, "header":Lorg/xbill/DNS/Header;
    nop

    .line 483
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Ljnamed;->buildErrorMessage(Lorg/xbill/DNS/Header;ILorg/xbill/DNS/Record;)[B

    move-result-object v0

    return-object v0

    .line 480
    .end local v1    # "header":Lorg/xbill/DNS/Header;
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method generateReply(Lorg/xbill/DNS/Message;[BILjava/net/Socket;)[B
    .locals 25
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .param p2, "in"    # [B
    .param p3, "length"    # I
    .param p4, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v0, 0x0

    .line 398
    .local v0, "flags":I
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v10

    .line 399
    .local v10, "header":Lorg/xbill/DNS/Header;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 400
    return-object v2

    .line 401
    :cond_0
    invoke-virtual {v10}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    .line 402
    invoke-virtual {v7, v8, v12}, Ljnamed;->errorMessage(Lorg/xbill/DNS/Message;I)[B

    move-result-object v1

    return-object v1

    .line 403
    :cond_1
    invoke-virtual {v10}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_2

    .line 404
    invoke-virtual {v7, v8, v3}, Ljnamed;->errorMessage(Lorg/xbill/DNS/Message;I)[B

    move-result-object v1

    return-object v1

    .line 406
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v13

    .line 408
    .local v13, "queryRecord":Lorg/xbill/DNS/Record;
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v14

    .line 409
    .local v14, "queryTSIG":Lorg/xbill/DNS/TSIGRecord;
    const/4 v1, 0x0

    .line 410
    .local v1, "tsig":Lorg/xbill/DNS/TSIG;
    if-eqz v14, :cond_5

    .line 411
    iget-object v4, v7, Ljnamed;->TSIGs:Ljava/util/Map;

    invoke-virtual {v14}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lorg/xbill/DNS/TSIG;

    .line 412
    if-eqz v1, :cond_4

    .line 413
    move/from16 v15, p3

    invoke-virtual {v1, v8, v9, v15, v2}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v6, v1

    goto :goto_1

    .line 412
    :cond_4
    move/from16 v15, p3

    .line 414
    :goto_0
    invoke-virtual {v7, v9}, Ljnamed;->formerrMessage([B)[B

    move-result-object v2

    return-object v2

    .line 410
    :cond_5
    move/from16 v15, p3

    move-object v6, v1

    .line 417
    .end local v1    # "tsig":Lorg/xbill/DNS/TSIG;
    .local v6, "tsig":Lorg/xbill/DNS/TSIG;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v16

    .line 418
    .local v16, "queryOPT":Lorg/xbill/DNS/OPTRecord;
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Lorg/xbill/DNS/OPTRecord;->getVersion()I

    move-result v1

    if-lez v1, :cond_6

    .line 421
    :cond_6
    if-eqz p4, :cond_7

    .line 422
    const v1, 0xffff

    move v5, v1

    .local v1, "maxLength":I
    goto :goto_2

    .line 423
    .end local v1    # "maxLength":I
    :cond_7
    if-eqz v16, :cond_8

    .line 424
    invoke-virtual/range {v16 .. v16}, Lorg/xbill/DNS/OPTRecord;->getPayloadSize()I

    move-result v1

    const/16 v2, 0x200

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    .restart local v1    # "maxLength":I
    goto :goto_2

    .line 426
    .end local v1    # "maxLength":I
    :cond_8
    const/16 v1, 0x200

    move v5, v1

    .line 428
    .local v5, "maxLength":I
    :goto_2
    const v17, 0x8000

    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Lorg/xbill/DNS/OPTRecord;->getFlags()I

    move-result v1

    and-int v1, v1, v17

    if-eqz v1, :cond_9

    .line 429
    const/4 v0, 0x1

    move v4, v0

    goto :goto_3

    .line 431
    :cond_9
    move v4, v0

    .end local v0    # "flags":I
    .local v4, "flags":I
    :goto_3
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Message;-><init>(I)V

    move-object v2, v0

    .line 432
    .local v2, "response":Lorg/xbill/DNS/Message;
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 433
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 434
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 435
    :cond_a
    invoke-virtual {v2, v13, v11}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 437
    invoke-virtual {v13}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v18

    .line 438
    .local v18, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {v13}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    .line 439
    .local v1, "type":I
    invoke-virtual {v13}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v19

    .line 440
    .local v19, "dclass":I
    const/16 v0, 0xfc

    if-ne v1, v0, :cond_b

    if-eqz p4, :cond_b

    .line 441
    move-object/from16 v0, p0

    move v11, v1

    .end local v1    # "type":I
    .local v11, "type":I
    move-object/from16 v1, v18

    move-object v12, v2

    .end local v2    # "response":Lorg/xbill/DNS/Message;
    .local v12, "response":Lorg/xbill/DNS/Message;
    move-object/from16 v2, p1

    move-object v3, v6

    move/from16 v20, v4

    .end local v4    # "flags":I
    .local v20, "flags":I
    move-object v4, v14

    move/from16 v21, v5

    .end local v5    # "maxLength":I
    .local v21, "maxLength":I
    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Ljnamed;->doAXFR(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;Ljava/net/Socket;)[B

    move-result-object v0

    return-object v0

    .line 440
    .end local v11    # "type":I
    .end local v12    # "response":Lorg/xbill/DNS/Message;
    .end local v20    # "flags":I
    .end local v21    # "maxLength":I
    .restart local v1    # "type":I
    .restart local v2    # "response":Lorg/xbill/DNS/Message;
    .restart local v4    # "flags":I
    .restart local v5    # "maxLength":I
    :cond_b
    move/from16 v20, v4

    move/from16 v21, v5

    move v4, v1

    move-object v5, v2

    .line 442
    .end local v1    # "type":I
    .end local v2    # "response":Lorg/xbill/DNS/Message;
    .local v4, "type":I
    .local v5, "response":Lorg/xbill/DNS/Message;
    .restart local v20    # "flags":I
    .restart local v21    # "maxLength":I
    invoke-static {v4}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xff

    if-eq v4, v0, :cond_c

    .line 443
    invoke-virtual {v7, v8, v3}, Ljnamed;->errorMessage(Lorg/xbill/DNS/Message;I)[B

    move-result-object v0

    return-object v0

    .line 445
    :cond_c
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v18

    move v3, v4

    move/from16 v23, v4

    .end local v4    # "type":I
    .local v23, "type":I
    move/from16 v4, v19

    move-object v11, v5

    .end local v5    # "response":Lorg/xbill/DNS/Message;
    .local v11, "response":Lorg/xbill/DNS/Message;
    move/from16 v5, v22

    move-object/from16 v24, v6

    .end local v6    # "tsig":Lorg/xbill/DNS/TSIG;
    .local v24, "tsig":Lorg/xbill/DNS/TSIG;
    move/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Ljnamed;->addAnswer(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Name;IIII)B

    move-result v0

    .line 446
    .local v0, "rcode":B
    const/4 v1, 0x3

    if-eqz v0, :cond_d

    if-eq v0, v1, :cond_d

    .line 447
    invoke-virtual {v7, v8, v0}, Ljnamed;->errorMessage(Lorg/xbill/DNS/Message;I)[B

    move-result-object v1

    return-object v1

    .line 449
    :cond_d
    move/from16 v2, v20

    .end local v20    # "flags":I
    .local v2, "flags":I
    invoke-direct {v7, v11, v2}, Ljnamed;->addAdditional(Lorg/xbill/DNS/Message;I)V

    .line 451
    if-eqz v16, :cond_f

    .line 452
    if-ne v2, v12, :cond_e

    goto :goto_4

    :cond_e
    const/16 v17, 0x0

    :goto_4
    move/from16 v3, v17

    .line 453
    .local v3, "optflags":I
    new-instance v4, Lorg/xbill/DNS/OPTRecord;

    const/16 v5, 0x1000

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6, v3}, Lorg/xbill/DNS/OPTRecord;-><init>(IIII)V

    .line 455
    .local v4, "opt":Lorg/xbill/DNS/OPTRecord;
    invoke-virtual {v11, v4, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_5

    .line 451
    .end local v3    # "optflags":I
    .end local v4    # "opt":Lorg/xbill/DNS/OPTRecord;
    :cond_f
    const/4 v6, 0x0

    .line 458
    :goto_5
    move-object/from16 v1, v24

    .end local v24    # "tsig":Lorg/xbill/DNS/TSIG;
    .local v1, "tsig":Lorg/xbill/DNS/TSIG;
    invoke-virtual {v11, v1, v6, v14}, Lorg/xbill/DNS/Message;->setTSIG(Lorg/xbill/DNS/TSIG;ILorg/xbill/DNS/TSIGRecord;)V

    .line 459
    move/from16 v3, v21

    .end local v21    # "maxLength":I
    .local v3, "maxLength":I
    invoke-virtual {v11, v3}, Lorg/xbill/DNS/Message;->toWire(I)[B

    move-result-object v4

    return-object v4
.end method

.method public getCache(I)Lorg/xbill/DNS/Cache;
    .locals 3
    .param p1, "dclass"    # I

    .line 136
    iget-object v0, p0, Ljnamed;->caches:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Cache;

    .line 137
    .local v0, "c":Lorg/xbill/DNS/Cache;
    if-nez v0, :cond_0

    .line 138
    new-instance v1, Lorg/xbill/DNS/Cache;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/Cache;-><init>(I)V

    move-object v0, v1

    .line 139
    iget-object v1, p0, Ljnamed;->caches:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    return-object v0
.end method

.method public serveTCP(Ljava/net/InetAddress;I)V
    .locals 4
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 538
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/16 v1, 0x80

    invoke-direct {v0, p2, v1, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 540
    :goto_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 542
    .local v1, "s":Ljava/net/Socket;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ljnamed$1;

    invoke-direct {v3, p0, v1}, Ljnamed$1;-><init>(Ljnamed;Ljava/net/Socket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 544
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v1    # "s":Ljava/net/Socket;
    .end local v2    # "t":Ljava/lang/Thread;
    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "serveTCP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Ljnamed;->addrport(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 551
    .end local v0    # "e":Ljava/io/IOException;
    return-void
.end method

.method public serveUDP(Ljava/net/InetAddress;I)V
    .locals 9
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 556
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, p2, p1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 557
    .local v0, "sock":Ljava/net/DatagramSocket;
    nop

    .line 558
    const/16 v1, 0x200

    new-array v1, v1, [B

    .line 559
    .end local v0    # "sock":Ljava/net/DatagramSocket;
    .local v1, "in":[B
    new-instance v2, Ljava/net/DatagramPacket;

    .end local v1    # "in":[B
    array-length v3, v1

    invoke-direct {v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 560
    .local v2, "indp":Ljava/net/DatagramPacket;
    const/4 v3, 0x0

    .line 562
    .end local v2    # "indp":Ljava/net/DatagramPacket;
    .local v3, "outdp":Ljava/net/DatagramPacket;
    :goto_0
    array-length v4, v1

    invoke-virtual {v2, v4}, Ljava/net/DatagramPacket;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 564
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 568
    nop

    .line 570
    const/4 v4, 0x0

    .line 572
    .local v4, "response":[B
    :try_start_2
    new-instance v5, Lorg/xbill/DNS/Message;

    invoke-direct {v5, v1}, Lorg/xbill/DNS/Message;-><init>([B)V

    .line 573
    .local v5, "query":Lorg/xbill/DNS/Message;
    nop

    .line 574
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    const/4 v7, 0x0

    .line 573
    invoke-virtual {p0, v5, v1, v6, v7}, Ljnamed;->generateReply(Lorg/xbill/DNS/Message;[BILjava/net/Socket;)[B

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v6

    .line 576
    if-nez v4, :cond_0

    .line 577
    goto :goto_0

    .line 581
    :cond_0
    goto :goto_1

    .line 579
    .end local v5    # "query":Lorg/xbill/DNS/Message;
    :catch_0
    move-exception v5

    .line 580
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0, v1}, Ljnamed;->formerrMessage([B)[B

    move-result-object v6

    move-object v4, v6

    .line 582
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    if-nez v3, :cond_1

    .line 583
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v4

    .line 585
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 586
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v8

    invoke-direct {v5, v4, v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    move-object v3, v5

    goto :goto_2

    .line 588
    :cond_1
    invoke-virtual {v3, v4}, Ljava/net/DatagramPacket;->setData([B)V

    .line 589
    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 590
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 591
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 593
    :goto_2
    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 594
    .end local v4    # "response":[B
    goto :goto_0

    .line 566
    :catch_1
    move-exception v4

    .line 567
    .local v4, "e":Ljava/io/InterruptedIOException;
    goto :goto_0

    .line 596
    .end local v3    # "outdp":Ljava/net/DatagramPacket;
    .end local v4    # "e":Ljava/io/InterruptedIOException;
    :catch_2
    move-exception v0

    .line 597
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "serveUDP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Ljnamed;->addrport(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 600
    .end local v0    # "e":Ljava/io/IOException;
    return-void
.end method
