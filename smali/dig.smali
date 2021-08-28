.class public Ldig;
.super Ljava/lang/Object;
.source "dig.java"


# static fields
.field static dclass:I

.field static name:Lorg/xbill/DNS/Name;

.field static type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x0

    sput-object v0, Ldig;->name:Lorg/xbill/DNS/Name;

    .line 12
    const/4 v0, 0x1

    sput v0, Ldig;->type:I

    sput v0, Ldig;->dclass:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doAXFR(Lorg/xbill/DNS/Message;)V
    .locals 5
    .param p0, "response"    # Lorg/xbill/DNS/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "; java dig 0.0 <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Ldig;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " axfr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isSigned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ";; TSIG "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 41
    return-void

    .line 44
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 45
    .local v1, "records":[Lorg/xbill/DNS/Record;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 46
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    .end local v2    # "i":I
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ";; done ("

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 49
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(I)V

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " records, "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(I)V

    .line 52
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " additional)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method static doQuery(Lorg/xbill/DNS/Message;J)V
    .locals 3
    .param p0, "response"    # Lorg/xbill/DNS/Message;
    .param p1, "ms"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "; java dig 0.0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 25
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ";; Query time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    .line 61
    .local v0, "server":Ljava/lang/String;
    const/4 v1, 0x0

    .line 62
    .local v1, "res":Lorg/xbill/DNS/SimpleResolver;
    const/4 v2, 0x0

    .line 65
    .local v2, "printQuery":Z
    array-length v3, p0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 66
    invoke-static {}, Ldig;->usage()V

    .line 70
    :cond_0
    const/4 v3, 0x0

    .line 71
    .local v3, "arg":I
    :try_start_0
    aget-object v5, p0, v3

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "arg":I
    .local v5, "arg":I
    aget-object v3, p0, v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move v3, v5

    .line 74
    .end local v5    # "arg":I
    .restart local v3    # "arg":I
    :cond_1
    if-eqz v0, :cond_2

    .line 75
    new-instance v5, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v5, v0}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    goto :goto_0

    .line 77
    :cond_2
    new-instance v5, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v5}, Lorg/xbill/DNS/SimpleResolver;-><init>()V

    move-object v1, v5

    .line 79
    :goto_0
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "arg":I
    .restart local v5    # "arg":I
    aget-object v3, p0, v3

    .line 80
    .local v3, "nameString":Ljava/lang/String;
    const-string v6, "-x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "arg":I
    .local v6, "arg":I
    aget-object v5, p0, v5

    invoke-static {v5}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v5

    sput-object v5, Ldig;->name:Lorg/xbill/DNS/Name;

    .line 82
    const/16 v5, 0xc

    sput v5, Ldig;->type:I

    .line 83
    sput v4, Ldig;->dclass:I

    goto :goto_2

    .line 86
    .end local v6    # "arg":I
    .restart local v5    # "arg":I
    :cond_3
    sget-object v6, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v3, v6}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v6

    sput-object v6, Ldig;->name:Lorg/xbill/DNS/Name;

    .line 87
    aget-object v6, p0, v5

    invoke-static {v6}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v6

    sput v6, Ldig;->type:I

    .line 88
    if-gez v6, :cond_4

    .line 89
    sput v4, Ldig;->type:I

    goto :goto_1

    .line 91
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 93
    :goto_1
    aget-object v6, p0, v5

    invoke-static {v6}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v6

    sput v6, Ldig;->dclass:I

    .line 94
    if-gez v6, :cond_5

    .line 95
    sput v4, Ldig;->dclass:I

    move v6, v5

    goto :goto_2

    .line 97
    :cond_5
    add-int/lit8 v6, v5, 0x1

    .line 100
    .end local v5    # "arg":I
    .restart local v6    # "arg":I
    :goto_2
    aget-object v5, p0, v6

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_16

    .line 101
    aget-object v5, p0, v6

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x62

    const/4 v8, 0x2

    if-eq v5, v7, :cond_14

    const/16 v7, 0x69

    if-eq v5, v7, :cond_13

    const/16 v7, 0x6b

    if-eq v5, v7, :cond_11

    const/16 v7, 0x74

    if-eq v5, v7, :cond_10

    const/16 v7, 0x64

    if-eq v5, v7, :cond_f

    const/16 v7, 0x65

    if-eq v5, v7, :cond_b

    const/16 v7, 0x70

    if-eq v5, v7, :cond_7

    const/16 v7, 0x71

    if-eq v5, v7, :cond_6

    .line 177
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Invalid option: "

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 178
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v7, p0, v6

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 173
    :cond_6
    const/4 v2, 0x1

    .line 174
    goto/16 :goto_9

    .line 105
    :cond_7
    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_8

    .line 106
    aget-object v5, p0, v6

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "portStr":Ljava/lang/String;
    goto :goto_3

    .line 108
    .end local v5    # "portStr":Ljava/lang/String;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    aget-object v5, p0, v6

    .line 109
    .restart local v5    # "portStr":Ljava/lang/String;
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 110
    .local v7, "port":I
    if-ltz v7, :cond_a

    const/high16 v8, 0x10000

    if-le v7, v8, :cond_9

    goto :goto_4

    .line 114
    :cond_9
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/SimpleResolver;->setPort(I)V

    .line 115
    goto/16 :goto_9

    .line 111
    :cond_a
    :goto_4
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Invalid port"

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    return-void

    .line 154
    .end local v5    # "portStr":Ljava/lang/String;
    .end local v7    # "port":I
    :cond_b
    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_c

    .line 155
    aget-object v5, p0, v6

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "ednsStr":Ljava/lang/String;
    goto :goto_5

    .line 157
    .end local v5    # "ednsStr":Ljava/lang/String;
    :cond_c
    add-int/lit8 v6, v6, 0x1

    aget-object v5, p0, v6

    .line 158
    .restart local v5    # "ednsStr":Ljava/lang/String;
    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 159
    .local v7, "edns":I
    if-ltz v7, :cond_e

    if-le v7, v4, :cond_d

    goto :goto_6

    .line 165
    :cond_d
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/SimpleResolver;->setEDNS(I)V

    .line 166
    goto :goto_9

    .line 160
    :cond_e
    :goto_6
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Unsupported EDNS level: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    return-void

    .line 169
    .end local v5    # "ednsStr":Ljava/lang/String;
    .end local v7    # "edns":I
    :cond_f
    const v5, 0x8000

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8, v5, v7}, Lorg/xbill/DNS/SimpleResolver;->setEDNS(IIILjava/util/List;)V

    .line 170
    goto :goto_9

    .line 144
    :cond_10
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/SimpleResolver;->setTCP(Z)V

    .line 145
    goto :goto_9

    .line 136
    :cond_11
    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_12

    .line 137
    aget-object v5, p0, v6

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "key":Ljava/lang/String;
    goto :goto_7

    .line 139
    .end local v5    # "key":Ljava/lang/String;
    :cond_12
    add-int/lit8 v6, v6, 0x1

    aget-object v5, p0, v6

    .line 140
    .restart local v5    # "key":Ljava/lang/String;
    :goto_7
    invoke-static {v5}, Lorg/xbill/DNS/TSIG;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/TSIG;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/SimpleResolver;->setTSIGKey(Lorg/xbill/DNS/TSIG;)V

    .line 141
    goto :goto_9

    .line 148
    .end local v5    # "key":Ljava/lang/String;
    :cond_13
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/SimpleResolver;->setIgnoreTruncation(Z)V

    .line 149
    goto :goto_9

    .line 119
    :cond_14
    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_15

    .line 120
    aget-object v5, p0, v6

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "addrStr":Ljava/lang/String;
    goto :goto_8

    .line 122
    .end local v5    # "addrStr":Ljava/lang/String;
    :cond_15
    add-int/lit8 v6, v6, 0x1

    aget-object v5, p0, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .restart local v5    # "addrStr":Ljava/lang/String;
    :goto_8
    :try_start_1
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .local v7, "addr":Ljava/net/InetAddress;
    nop

    .line 131
    :try_start_2
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/SimpleResolver;->setLocalAddress(Ljava/net/InetAddress;)V

    .line 132
    nop

    .line 180
    .end local v5    # "addrStr":Ljava/lang/String;
    .end local v7    # "addr":Ljava/net/InetAddress;
    :goto_9
    add-int/2addr v6, v4

    goto/16 :goto_2

    .line 127
    .restart local v5    # "addrStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 128
    .local v4, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Invalid address"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    return-void

    .line 187
    .end local v3    # "nameString":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "addrStr":Ljava/lang/String;
    :cond_16
    goto :goto_a

    .line 184
    .end local v6    # "arg":I
    :catch_1
    move-exception v3

    .line 185
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v4, Ldig;->name:Lorg/xbill/DNS/Name;

    if-nez v4, :cond_17

    .line 186
    invoke-static {}, Ldig;->usage()V

    .line 188
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_17
    :goto_a
    if-nez v1, :cond_18

    .line 189
    new-instance v3, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v3}, Lorg/xbill/DNS/SimpleResolver;-><init>()V

    move-object v1, v3

    .line 191
    :cond_18
    sget-object v3, Ldig;->name:Lorg/xbill/DNS/Name;

    sget v4, Ldig;->type:I

    sget v5, Ldig;->dclass:I

    invoke-static {v3, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v3

    .line 192
    .local v3, "rec":Lorg/xbill/DNS/Record;
    invoke-static {v3}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v4

    .line 193
    .local v4, "query":Lorg/xbill/DNS/Message;
    if-eqz v2, :cond_19

    .line 194
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 195
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 196
    .local v5, "startTime":J
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/SimpleResolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v7

    .line 197
    .local v7, "response":Lorg/xbill/DNS/Message;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 199
    .local v8, "endTime":J
    sget v10, Ldig;->type:I

    const/16 v11, 0xfc

    if-ne v10, v11, :cond_1a

    .line 200
    invoke-static {v7}, Ldig;->doAXFR(Lorg/xbill/DNS/Message;)V

    goto :goto_b

    .line 202
    :cond_1a
    sub-long v10, v8, v5

    invoke-static {v7, v10, v11}, Ldig;->doQuery(Lorg/xbill/DNS/Message;J)V

    .line 203
    :goto_b
    return-void
.end method

.method static usage()V
    .locals 2

    .line 16
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: dig [@server] name [<type>] [<class>] [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 19
    return-void
.end method
