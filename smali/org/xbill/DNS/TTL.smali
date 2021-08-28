.class public final Lorg/xbill/DNS/TTL;
.super Ljava/lang/Object;
.source "TTL.java"


# static fields
.field public static final MAX_VALUE:J = 0x7fffffffL


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static check(J)V
    .locals 2
    .param p0, "i"    # J

    .line 22
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 24
    return-void

    .line 23
    :cond_0
    new-instance v0, Lorg/xbill/DNS/InvalidTTLException;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/InvalidTTLException;-><init>(J)V

    throw v0
.end method

.method public static format(J)Ljava/lang/String;
    .locals 16
    .param p0, "ttl"    # J

    .line 88
    invoke-static/range {p0 .. p1}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v1, 0x3c

    rem-long v3, p0, v1

    .line 92
    .local v3, "secs":J
    div-long v5, p0, v1

    .line 93
    .end local p0    # "ttl":J
    .local v5, "ttl":J
    rem-long v7, v5, v1

    .line 94
    .local v7, "mins":J
    div-long/2addr v5, v1

    .line 95
    const-wide/16 v1, 0x18

    rem-long v9, v5, v1

    .line 96
    .local v9, "hours":J
    div-long/2addr v5, v1

    .line 97
    const-wide/16 v1, 0x7

    rem-long v11, v5, v1

    .line 98
    .local v11, "days":J
    div-long/2addr v5, v1

    .line 99
    move-wide v1, v5

    .line 100
    .local v1, "weeks":J
    const-wide/16 v13, 0x0

    cmp-long v15, v1, v13

    if-lez v15, :cond_0

    .line 101
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v13, "W"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_0
    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_1

    .line 103
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v14, "D"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_1
    const-wide/16 v13, 0x0

    cmp-long v15, v9, v13

    if-lez v15, :cond_2

    .line 105
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v14, "H"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_2
    const-wide/16 v13, 0x0

    cmp-long v15, v7, v13

    if-lez v15, :cond_3

    .line 107
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v14, "M"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_3
    const-wide/16 v13, 0x0

    cmp-long v15, v3, v13

    if-gtz v15, :cond_4

    cmp-long v15, v1, v13

    if-nez v15, :cond_5

    cmp-long v15, v11, v13

    if-nez v15, :cond_5

    cmp-long v15, v9, v13

    if-nez v15, :cond_5

    cmp-long v13, v7, v13

    if-nez v13, :cond_5

    .line 109
    :cond_4
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v14, "S"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public static parse(Ljava/lang/String;Z)J
    .locals 14
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "clamp"    # Z

    .line 38
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 40
    const-wide/16 v0, 0x0

    .line 41
    .local v0, "value":J
    const-wide/16 v2, 0x0

    .line 42
    .local v2, "ttl":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const-wide v6, 0xffffffffL

    if-ge v4, v5, :cond_8

    .line 43
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 44
    .local v5, "c":C
    move-wide v8, v0

    .line 45
    .local v8, "oldvalue":J
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 46
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v0

    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v6, v10

    .line 47
    .end local v0    # "value":J
    .local v6, "value":J
    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    move-wide v0, v6

    goto :goto_2

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 50
    .end local v6    # "value":J
    .restart local v0    # "value":J
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    const/16 v11, 0x44

    const-wide/16 v12, 0x3c

    if-eq v10, v11, :cond_3

    const/16 v11, 0x48

    if-eq v10, v11, :cond_4

    const/16 v11, 0x4d

    if-eq v10, v11, :cond_5

    const/16 v11, 0x53

    if-eq v10, v11, :cond_6

    const/16 v11, 0x57

    if-ne v10, v11, :cond_2

    .line 51
    const-wide/16 v10, 0x7

    mul-long/2addr v0, v10

    goto :goto_1

    .line 56
    :cond_2
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6}, Ljava/lang/NumberFormatException;-><init>()V

    throw v6

    .line 52
    :cond_3
    :goto_1
    const-wide/16 v10, 0x18

    mul-long/2addr v0, v10

    .line 53
    :cond_4
    mul-long/2addr v0, v12

    .line 54
    :cond_5
    mul-long/2addr v0, v12

    .line 55
    :cond_6
    nop

    .line 58
    add-long/2addr v2, v0

    .line 59
    const-wide/16 v0, 0x0

    .line 60
    cmp-long v6, v2, v6

    if-gtz v6, :cond_7

    .line 42
    .end local v5    # "c":C
    .end local v8    # "oldvalue":J
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    .restart local v5    # "c":C
    .restart local v8    # "oldvalue":J
    :cond_7
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6}, Ljava/lang/NumberFormatException;-><init>()V

    throw v6

    .line 64
    .end local v4    # "i":I
    .end local v5    # "c":C
    .end local v8    # "oldvalue":J
    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_9

    .line 65
    move-wide v2, v0

    .line 67
    :cond_9
    cmp-long v4, v2, v6

    if-gtz v4, :cond_b

    .line 69
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_a

    if-eqz p1, :cond_a

    .line 70
    const-wide/32 v2, 0x7fffffff

    .line 71
    :cond_a
    return-wide v2

    .line 68
    :cond_b
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 39
    .end local v0    # "value":J
    .end local v2    # "ttl":J
    :cond_c
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method public static parseTTL(Ljava/lang/String;)J
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/TTL;->parse(Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method
