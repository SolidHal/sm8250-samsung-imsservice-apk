.class public Lorg/xbill/DNS/utils/base64;
.super Ljava/lang/Object;
.source "base64.java"


# static fields
.field private static final Base64:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatString([BILjava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B
    .param p1, "lineLength"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "addClose"    # Z

    .line 71
    invoke-static {p0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 74
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    add-int v3, v2, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    if-eqz p3, :cond_1

    .line 78
    const-string v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 81
    :cond_0
    add-int v3, v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :cond_1
    :goto_1
    add-int/2addr v2, p1

    goto :goto_0

    .line 85
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static fromString(Ljava/lang/String;)[B
    .locals 15
    .param p0, "str"    # Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v0, "bs":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 98
    .local v1, "raw":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 99
    aget-byte v3, v1, v2

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    aget-byte v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 103
    .local v2, "in":[B
    array-length v3, v2

    const/4 v4, 0x4

    rem-int/2addr v3, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 104
    return-object v5

    .line 107
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 108
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 110
    .local v3, "ds":Ljava/io/DataOutputStream;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v2

    const/4 v8, 0x3

    add-int/2addr v7, v8

    div-int/2addr v7, v4

    if-ge v6, v7, :cond_9

    .line 111
    new-array v7, v4, [S

    .line 112
    .local v7, "s":[S
    new-array v9, v8, [S

    .line 114
    .local v9, "t":[S
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    if-ge v10, v4, :cond_3

    .line 115
    mul-int/lit8 v11, v6, 0x4

    add-int/2addr v11, v10

    aget-byte v11, v2, v11

    const-string v12, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    int-to-short v11, v11

    aput-short v11, v7, v10

    .line 114
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 117
    .end local v10    # "j":I
    :cond_3
    const/4 v10, 0x0

    aget-short v11, v7, v10

    const/4 v12, 0x2

    shl-int/2addr v11, v12

    const/4 v13, 0x1

    aget-short v14, v7, v13

    shr-int/2addr v14, v4

    add-int/2addr v11, v14

    int-to-short v11, v11

    aput-short v11, v9, v10

    .line 118
    aget-short v10, v7, v12

    const/4 v11, -0x1

    const/16 v14, 0x40

    if-ne v10, v14, :cond_4

    .line 119
    aput-short v11, v9, v12

    aput-short v11, v9, v13

    .line 120
    aget-short v10, v7, v13

    and-int/lit8 v10, v10, 0xf

    if-eqz v10, :cond_6

    .line 121
    return-object v5

    .line 123
    :cond_4
    aget-short v10, v7, v8

    if-ne v10, v14, :cond_5

    .line 124
    aget-short v10, v7, v13

    shl-int/2addr v10, v4

    aget-short v14, v7, v12

    shr-int/2addr v14, v12

    add-int/2addr v10, v14

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    aput-short v10, v9, v13

    .line 125
    aput-short v11, v9, v12

    .line 126
    aget-short v10, v7, v12

    and-int/2addr v10, v8

    if-eqz v10, :cond_6

    .line 127
    return-object v5

    .line 130
    :cond_5
    aget-short v10, v7, v13

    shl-int/2addr v10, v4

    aget-short v11, v7, v12

    shr-int/2addr v11, v12

    add-int/2addr v10, v11

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    aput-short v10, v9, v13

    .line 131
    aget-short v10, v7, v12

    shl-int/lit8 v10, v10, 0x6

    aget-short v11, v7, v8

    add-int/2addr v10, v11

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    aput-short v10, v9, v12

    .line 135
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_3
    if-ge v10, v8, :cond_8

    .line 136
    :try_start_0
    aget-short v11, v9, v10

    if-ltz v11, :cond_7

    .line 137
    aget-short v11, v9, v10

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 139
    .end local v10    # "j":I
    :catch_0
    move-exception v8

    goto :goto_4

    .line 140
    :cond_8
    nop

    .line 110
    .end local v7    # "s":[S
    .end local v9    # "t":[S
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 142
    .end local v6    # "i":I
    :cond_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 11
    .param p0, "b"    # [B

    .line 28
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    const/4 v3, 0x2

    add-int/2addr v2, v3

    const/4 v4, 0x3

    div-int/2addr v2, v4

    if-ge v1, v2, :cond_6

    .line 31
    new-array v2, v4, [S

    .line 32
    .local v2, "s":[S
    const/4 v5, 0x4

    new-array v6, v5, [S

    .line 33
    .local v6, "t":[S
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    const/4 v8, -0x1

    if-ge v7, v4, :cond_1

    .line 34
    mul-int/lit8 v9, v1, 0x3

    add-int/2addr v9, v7

    array-length v10, p0

    if-ge v9, v10, :cond_0

    .line 35
    mul-int/lit8 v8, v1, 0x3

    add-int/2addr v8, v7

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    aput-short v8, v2, v7

    goto :goto_2

    .line 37
    :cond_0
    aput-short v8, v2, v7

    .line 33
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 40
    .end local v7    # "j":I
    :cond_1
    const/4 v7, 0x0

    aget-short v9, v2, v7

    shr-int/2addr v9, v3

    int-to-short v9, v9

    aput-short v9, v6, v7

    .line 41
    const/4 v9, 0x1

    aget-short v10, v2, v9

    if-ne v10, v8, :cond_2

    .line 42
    aget-short v7, v2, v7

    and-int/2addr v7, v4

    shl-int/2addr v7, v5

    int-to-short v7, v7

    aput-short v7, v6, v9

    goto :goto_3

    .line 44
    :cond_2
    aget-short v7, v2, v7

    and-int/2addr v7, v4

    shl-int/2addr v7, v5

    aget-short v10, v2, v9

    shr-int/2addr v10, v5

    add-int/2addr v7, v10

    int-to-short v7, v7

    aput-short v7, v6, v9

    .line 45
    :goto_3
    aget-short v7, v2, v9

    const/16 v10, 0x40

    if-ne v7, v8, :cond_3

    .line 46
    aput-short v10, v6, v4

    aput-short v10, v6, v3

    goto :goto_4

    .line 47
    :cond_3
    aget-short v7, v2, v3

    if-ne v7, v8, :cond_4

    .line 48
    aget-short v7, v2, v9

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v3

    int-to-short v7, v7

    aput-short v7, v6, v3

    .line 49
    aput-short v10, v6, v4

    goto :goto_4

    .line 52
    :cond_4
    aget-short v7, v2, v9

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v3

    aget-short v8, v2, v3

    shr-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v6, v3

    .line 53
    aget-short v3, v2, v3

    and-int/lit8 v3, v3, 0x3f

    int-to-short v3, v3

    aput-short v3, v6, v4

    .line 55
    :goto_4
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5
    if-ge v3, v5, :cond_5

    .line 56
    aget-short v4, v6, v3

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 30
    .end local v2    # "s":[S
    .end local v3    # "j":I
    .end local v6    # "t":[S
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 58
    .end local v1    # "i":I
    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
