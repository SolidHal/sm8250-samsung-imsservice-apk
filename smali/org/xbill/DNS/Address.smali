.class public final Lorg/xbill/DNS/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field public static final IPv4:I = 0x1

.field public static final IPv6:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 265
    instance-of v0, p1, Lorg/xbill/DNS/ARecord;

    if-eqz v0, :cond_0

    .line 266
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "addr":Ljava/net/InetAddress;
    goto :goto_0

    .line 268
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/AAAARecord;

    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 270
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {p0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static addressLength(I)I
    .locals 2
    .param p0, "family"    # I

    .line 385
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 386
    const/4 v0, 0x4

    return v0

    .line 387
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 388
    const/16 v0, 0x10

    return v0

    .line 389
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static familyOf(Ljava/net/InetAddress;)I
    .locals 2
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 371
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x1

    return v0

    .line 373
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 374
    const/4 v0, 0x2

    return v0

    .line 375
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 299
    .local v1, "addr":Ljava/net/InetAddress;
    new-array v2, v0, [Ljava/net/InetAddress;

    const/4 v3, 0x0

    aput-object v1, v2, v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 300
    .end local v1    # "addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->lookupHostName(Ljava/lang/String;Z)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 302
    .local v0, "records":[Lorg/xbill/DNS/Record;
    array-length v2, v0

    new-array v2, v2, [Ljava/net/InetAddress;

    .line 303
    .local v2, "addrs":[Ljava/net/InetAddress;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 304
    aget-object v4, v0, v3

    invoke-static {p0, v4}, Lorg/xbill/DNS/Address;->addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v2, v3

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public static getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 320
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 321
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 322
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    .line 324
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 325
    :cond_1
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 4
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "family"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 343
    .local v0, "bytes":[B
    if-eqz v0, :cond_2

    .line 344
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 345
    :cond_2
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 282
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->lookupHostName(Ljava/lang/String;Z)[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 285
    .local v2, "records":[Lorg/xbill/DNS/Record;
    aget-object v1, v2, v1

    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static getHostName(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 4
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 356
    invoke-static {p0}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 357
    .local v0, "name":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Lookup;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 358
    .local v1, "records":[Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_0

    .line 360
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lorg/xbill/DNS/PTRRecord;

    .line 361
    .local v2, "ptr":Lorg/xbill/DNS/PTRRecord;
    invoke-virtual {v2}, Lorg/xbill/DNS/PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 359
    .end local v2    # "ptr":Lorg/xbill/DNS/PTRRecord;
    :cond_0
    new-instance v2, Ljava/net/UnknownHostException;

    const-string/jumbo v3, "unknown address"

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isDottedQuad(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 209
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v1

    .line 210
    .local v1, "address":[B
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lookupHostName(Ljava/lang/String;Z)[Lorg/xbill/DNS/Record;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "all"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 237
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Lookup;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    .line 238
    .local v0, "lookup":Lorg/xbill/DNS/Lookup;
    invoke-virtual {v0}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 239
    .local v1, "a":[Lorg/xbill/DNS/Record;
    const/16 v2, 0x1c

    if-nez v1, :cond_1

    .line 240
    invoke-virtual {v0}, Lorg/xbill/DNS/Lookup;->getResult()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 241
    new-instance v3, Lorg/xbill/DNS/Lookup;

    invoke-direct {v3, p0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 242
    .local v2, "aaaa":[Lorg/xbill/DNS/Record;
    if-eqz v2, :cond_0

    .line 243
    return-object v2

    .line 245
    .end local v2    # "aaaa":[Lorg/xbill/DNS/Record;
    :cond_0
    new-instance v2, Ljava/net/UnknownHostException;

    const-string/jumbo v3, "unknown host"

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "all":Z
    throw v2

    .line 247
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "all":Z
    :cond_1
    if-nez p1, :cond_2

    .line 248
    return-object v1

    .line 249
    :cond_2
    new-instance v3, Lorg/xbill/DNS/Lookup;

    invoke-direct {v3, p0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 250
    .restart local v2    # "aaaa":[Lorg/xbill/DNS/Record;
    if-nez v2, :cond_3

    .line 251
    return-object v1

    .line 252
    :cond_3
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Lorg/xbill/DNS/Record;

    .line 253
    .local v3, "merged":[Lorg/xbill/DNS/Record;
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    array-length v4, v1

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    return-object v3

    .line 257
    .end local v0    # "lookup":Lorg/xbill/DNS/Lookup;
    .end local v1    # "a":[Lorg/xbill/DNS/Record;
    .end local v2    # "aaaa":[Lorg/xbill/DNS/Record;
    .end local v3    # "merged":[Lorg/xbill/DNS/Record;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "invalid name"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseV4(Ljava/lang/String;)[B
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 29
    .local v0, "values":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 31
    .local v1, "length":I
    const/4 v2, 0x0

    .line 32
    .local v2, "currentOctet":I
    const/4 v3, 0x0

    .line 33
    .local v3, "currentValue":I
    const/4 v4, 0x0

    .line 34
    .local v4, "numDigits":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ge v5, v1, :cond_7

    .line 35
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 36
    .local v8, "c":C
    const/16 v9, 0x30

    if-lt v8, v9, :cond_2

    const/16 v9, 0x39

    if-gt v8, v9, :cond_2

    .line 38
    if-ne v4, v6, :cond_0

    .line 39
    return-object v7

    .line 41
    :cond_0
    if-lez v4, :cond_1

    if-nez v3, :cond_1

    .line 42
    return-object v7

    .line 43
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 44
    mul-int/lit8 v3, v3, 0xa

    .line 45
    add-int/lit8 v6, v8, -0x30

    add-int/2addr v3, v6

    .line 47
    const/16 v6, 0xff

    if-le v3, v6, :cond_5

    .line 48
    return-object v7

    .line 49
    :cond_2
    const/16 v9, 0x2e

    if-ne v8, v9, :cond_6

    .line 51
    if-ne v2, v6, :cond_3

    .line 52
    return-object v7

    .line 54
    :cond_3
    if-nez v4, :cond_4

    .line 55
    return-object v7

    .line 56
    :cond_4
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "currentOctet":I
    .local v6, "currentOctet":I
    int-to-byte v7, v3

    aput-byte v7, v0, v2

    .line 57
    const/4 v2, 0x0

    .line 58
    .end local v3    # "currentValue":I
    .local v2, "currentValue":I
    const/4 v3, 0x0

    move v4, v3

    move v3, v2

    move v2, v6

    .line 34
    .end local v6    # "currentOctet":I
    .end local v8    # "c":C
    .local v2, "currentOctet":I
    .restart local v3    # "currentValue":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 60
    .restart local v8    # "c":C
    :cond_6
    return-object v7

    .line 63
    .end local v5    # "i":I
    .end local v8    # "c":C
    :cond_7
    if-eq v2, v6, :cond_8

    .line 64
    return-object v7

    .line 66
    :cond_8
    if-nez v4, :cond_9

    .line 67
    return-object v7

    .line 68
    :cond_9
    int-to-byte v5, v3

    aput-byte v5, v0, v2

    .line 69
    return-object v0
.end method

.method private static parseV6(Ljava/lang/String;)[B
    .locals 14
    .param p0, "s"    # Ljava/lang/String;

    .line 74
    const/4 v0, -0x1

    .line 75
    .local v0, "range":I
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 77
    .local v2, "data":[B
    const-string v3, ":"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "tokens":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 80
    .local v4, "first":I
    array-length v5, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 82
    .local v5, "last":I
    const/4 v7, 0x0

    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_1

    .line 86
    sub-int v8, v5, v4

    if-lez v8, :cond_0

    aget-object v8, v3, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-object v9

    .line 92
    :cond_1
    :goto_0
    aget-object v8, v3, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 96
    sub-int v8, v5, v4

    if-lez v8, :cond_2

    add-int/lit8 v8, v5, -0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 97
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 99
    :cond_2
    return-object v9

    .line 102
    :cond_3
    :goto_1
    sub-int v8, v5, v4

    add-int/2addr v8, v6

    const/16 v10, 0x8

    if-le v8, v10, :cond_4

    .line 103
    return-object v9

    .line 106
    :cond_4
    move v8, v4

    .local v8, "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    if-gt v8, v5, :cond_10

    .line 107
    aget-object v11, v3, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_6

    .line 108
    if-ltz v0, :cond_5

    .line 109
    return-object v9

    .line 110
    :cond_5
    move v0, v10

    .line 111
    goto :goto_5

    .line 114
    :cond_6
    aget-object v11, v3, v8

    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_b

    .line 116
    if-ge v8, v5, :cond_7

    .line 117
    return-object v9

    .line 119
    :cond_7
    const/4 v11, 0x6

    if-le v8, v11, :cond_8

    .line 120
    return-object v9

    .line 121
    :cond_8
    aget-object v11, v3, v8

    invoke-static {v11, v6}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v6

    .line 122
    .local v6, "v4addr":[B
    if-nez v6, :cond_9

    .line 123
    return-object v9

    .line 124
    :cond_9
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_3
    const/4 v12, 0x4

    if-ge v11, v12, :cond_a

    .line 125
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "j":I
    .local v12, "j":I
    aget-byte v13, v6, v11

    aput-byte v13, v2, v10

    .line 124
    add-int/lit8 v11, v11, 0x1

    move v10, v12

    goto :goto_3

    .line 126
    .end local v11    # "k":I
    .end local v12    # "j":I
    .restart local v10    # "j":I
    :cond_a
    goto :goto_8

    .line 130
    .end local v6    # "v4addr":[B
    :cond_b
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_4
    :try_start_0
    aget-object v12, v3, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_d

    .line 131
    aget-object v12, v3, v8

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 132
    .local v12, "c":C
    invoke-static {v12, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    if-gez v13, :cond_c

    .line 133
    return-object v9

    .line 130
    .end local v12    # "c":C
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 135
    .end local v11    # "k":I
    :cond_d
    aget-object v11, v3, v8

    invoke-static {v11, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .local v11, "x":I
    const v12, 0xffff

    if-gt v11, v12, :cond_f

    if-gez v11, :cond_e

    goto :goto_6

    .line 138
    :cond_e
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "j":I
    .local v12, "j":I
    ushr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    :try_start_1
    aput-byte v13, v2, v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    add-int/lit8 v10, v12, 0x1

    .end local v12    # "j":I
    .restart local v10    # "j":I
    and-int/lit16 v13, v11, 0xff

    int-to-byte v13, v13

    :try_start_2
    aput-byte v13, v2, v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    .end local v11    # "x":I
    nop

    .line 106
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 141
    .end local v10    # "j":I
    .restart local v12    # "j":I
    :catch_0
    move-exception v1

    move v10, v12

    goto :goto_7

    .line 137
    .end local v12    # "j":I
    .restart local v10    # "j":I
    .restart local v11    # "x":I
    :cond_f
    :goto_6
    return-object v9

    .line 141
    .end local v11    # "x":I
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/NumberFormatException;
    :goto_7
    return-object v9

    .line 146
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_10
    :goto_8
    if-ge v10, v1, :cond_11

    if-gez v0, :cond_11

    .line 147
    return-object v9

    .line 149
    :cond_11
    if-ltz v0, :cond_12

    .line 150
    rsub-int/lit8 v1, v10, 0x10

    .line 151
    .local v1, "empty":I
    add-int v6, v0, v1

    sub-int v9, v10, v0

    invoke-static {v2, v0, v2, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    move v6, v0

    move v8, v6

    :goto_9
    add-int v6, v0, v1

    if-ge v8, v6, :cond_12

    .line 153
    aput-byte v7, v2, v8

    .line 152
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 156
    .end local v1    # "empty":I
    :cond_12
    return-object v2
.end method

.method public static toArray(Ljava/lang/String;)[I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 183
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toArray(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Ljava/lang/String;I)[I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "family"    # I

    .line 167
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 168
    .local v0, "byteArray":[B
    if-nez v0, :cond_0

    .line 169
    const/4 v1, 0x0

    return-object v1

    .line 170
    :cond_0
    array-length v1, v0

    new-array v1, v1, [I

    .line 171
    .local v1, "intArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 172
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static toByteArray(Ljava/lang/String;I)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "family"    # I

    .line 194
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 195
    invoke-static {p0}, Lorg/xbill/DNS/Address;->parseV4(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 197
    invoke-static {p0}, Lorg/xbill/DNS/Address;->parseV6(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toDottedQuad([B)Ljava/lang/String;
    .locals 3
    .param p0, "addr"    # [B

    .line 220
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toDottedQuad([I)Ljava/lang/String;
    .locals 3
    .param p0, "addr"    # [I

    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    aget v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 8
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "maskLength"    # I

    .line 401
    invoke-static {p0}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    .line 402
    .local v0, "family":I
    invoke-static {v0}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    .line 403
    .local v1, "maxMaskLength":I
    if-ltz p1, :cond_3

    if-gt p1, v1, :cond_3

    .line 405
    if-ne p1, v1, :cond_0

    .line 406
    return-object p0

    .line 407
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 408
    .local v2, "bytes":[B
    div-int/lit8 v3, p1, 0x8

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 409
    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    .end local v3    # "i":I
    :cond_1
    rem-int/lit8 v3, p1, 0x8

    .line 411
    .local v3, "maskBits":I
    const/4 v5, 0x0

    .line 412
    .local v5, "bitmask":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 413
    rsub-int/lit8 v7, v6, 0x7

    shl-int v7, v4, v7

    or-int/2addr v5, v7

    .line 412
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 414
    .end local v6    # "i":I
    :cond_2
    div-int/lit8 v4, p1, 0x8

    aget-byte v6, v2, v4

    and-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 416
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 417
    :catch_0
    move-exception v4

    .line 418
    .local v4, "e":Ljava/net/UnknownHostException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "invalid address"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 404
    .end local v2    # "bytes":[B
    .end local v3    # "maskBits":I
    .end local v4    # "e":Ljava/net/UnknownHostException;
    .end local v5    # "bitmask":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid mask length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
