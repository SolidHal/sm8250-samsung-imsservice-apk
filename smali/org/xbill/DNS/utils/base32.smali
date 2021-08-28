.class public Lorg/xbill/DNS/utils/base32;
.super Ljava/lang/Object;
.source "base32.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/utils/base32$Alphabet;
    }
.end annotation


# instance fields
.field private alphabet:Ljava/lang/String;

.field private lowercase:Z

.field private padding:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "alphabet"    # Ljava/lang/String;
    .param p2, "padding"    # Z
    .param p3, "lowercase"    # Z

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/xbill/DNS/utils/base32;->alphabet:Ljava/lang/String;

    .line 39
    iput-boolean p2, p0, Lorg/xbill/DNS/utils/base32;->padding:Z

    .line 40
    iput-boolean p3, p0, Lorg/xbill/DNS/utils/base32;->lowercase:Z

    .line 41
    return-void
.end method

.method private static blockLenToPadding(I)I
    .locals 3
    .param p0, "blocklen"    # I

    .line 45
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 57
    const/4 v0, -0x1

    return v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_1
    return v0

    .line 51
    :cond_2
    return v1

    .line 49
    :cond_3
    return v2

    .line 47
    :cond_4
    const/4 v0, 0x6

    return v0
.end method

.method private static paddingToBlockLen(I)I
    .locals 3
    .param p0, "padlen"    # I

    .line 63
    if-eqz p0, :cond_4

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    .line 75
    const/4 v0, -0x1

    return v0

    .line 65
    :cond_0
    return v1

    .line 67
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 69
    :cond_2
    return v2

    .line 71
    :cond_3
    return v0

    .line 73
    :cond_4
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)[B
    .locals 20
    .param p1, "str"    # Ljava/lang/String;

    .line 149
    move-object/from16 v1, p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 150
    .local v2, "bs":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 151
    .local v3, "raw":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 153
    aget-byte v4, v3, v0

    int-to-char v4, v4

    .line 154
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 155
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 156
    int-to-byte v5, v4

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 151
    .end local v4    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_1
    iget-boolean v0, v1, Lorg/xbill/DNS/utils/base32;->padding:Z

    const/16 v4, 0x3d

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    rem-int/2addr v0, v6

    if-eqz v0, :cond_3

    .line 162
    return-object v5

    .line 164
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    rem-int/2addr v0, v6

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 170
    .local v7, "in":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 171
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v0

    .line 173
    .local v8, "ds":Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_2
    array-length v0, v7

    div-int/2addr v0, v6

    if-ge v9, v0, :cond_9

    .line 174
    new-array v10, v6, [S

    .line 175
    .local v10, "s":[S
    const/4 v0, 0x5

    new-array v11, v0, [I

    .line 177
    .local v11, "t":[I
    const/16 v12, 0x8

    .line 178
    .local v12, "padlen":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v6, :cond_6

    .line 179
    mul-int/lit8 v14, v9, 0x8

    add-int/2addr v14, v13

    aget-byte v14, v7, v14

    int-to-char v14, v14

    .line 180
    .local v14, "c":C
    if-ne v14, v4, :cond_4

    .line 181
    goto :goto_4

    .line 182
    :cond_4
    iget-object v15, v1, Lorg/xbill/DNS/utils/base32;->alphabet:Ljava/lang/String;

    mul-int/lit8 v16, v9, 0x8

    add-int v16, v16, v13

    aget-byte v4, v7, v16

    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v10, v13

    .line 183
    aget-short v4, v10, v13

    if-gez v4, :cond_5

    .line 184
    return-object v5

    .line 185
    :cond_5
    nop

    .end local v14    # "c":C
    add-int/lit8 v12, v12, -0x1

    .line 178
    add-int/lit8 v13, v13, 0x1

    const/16 v4, 0x3d

    goto :goto_3

    .line 187
    .end local v13    # "j":I
    :cond_6
    :goto_4
    invoke-static {v12}, Lorg/xbill/DNS/utils/base32;->paddingToBlockLen(I)I

    move-result v4

    .line 188
    .local v4, "blocklen":I
    if-gez v4, :cond_7

    .line 189
    return-object v5

    .line 192
    :cond_7
    const/4 v13, 0x0

    aget-short v14, v10, v13

    const/4 v15, 0x3

    shl-int/2addr v14, v15

    const/16 v16, 0x1

    aget-short v17, v10, v16

    const/16 v18, 0x2

    shr-int/lit8 v17, v17, 0x2

    or-int v14, v14, v17

    aput v14, v11, v13

    .line 194
    aget-short v13, v10, v16

    and-int/2addr v13, v15

    const/4 v14, 0x6

    shl-int/2addr v13, v14

    aget-short v17, v10, v18

    shl-int/lit8 v17, v17, 0x1

    or-int v13, v13, v17

    aget-short v17, v10, v15

    const/16 v19, 0x4

    shr-int/lit8 v17, v17, 0x4

    or-int v13, v13, v17

    aput v13, v11, v16

    .line 196
    aget-short v13, v10, v15

    and-int/lit8 v13, v13, 0xf

    shl-int/lit8 v13, v13, 0x4

    aget-short v17, v10, v19

    shr-int/lit8 v16, v17, 0x1

    and-int/lit8 v16, v16, 0xf

    or-int v13, v13, v16

    aput v13, v11, v18

    .line 198
    aget-short v13, v10, v19

    const/16 v16, 0x7

    shl-int/lit8 v13, v13, 0x7

    aget-short v17, v10, v0

    shl-int/lit8 v17, v17, 0x2

    or-int v13, v13, v17

    aget-short v17, v10, v14

    shr-int/lit8 v17, v17, 0x3

    or-int v13, v13, v17

    aput v13, v11, v15

    .line 200
    aget-short v13, v10, v14

    and-int/lit8 v13, v13, 0x7

    shl-int/lit8 v0, v13, 0x5

    aget-short v13, v10, v16

    or-int/2addr v0, v13

    aput v0, v11, v19

    .line 203
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_5
    if-ge v0, v4, :cond_8

    .line 204
    :try_start_0
    aget v13, v11, v0

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 206
    .end local v0    # "j":I
    :catch_0
    move-exception v0

    goto :goto_6

    .line 207
    :cond_8
    nop

    .line 173
    .end local v4    # "blocklen":I
    .end local v10    # "s":[S
    .end local v11    # "t":[I
    .end local v12    # "padlen":I
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/16 v4, 0x3d

    goto/16 :goto_2

    .line 210
    .end local v9    # "i":I
    :cond_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString([B)Ljava/lang/String;
    .locals 17
    .param p1, "b"    # [B

    .line 87
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x4

    add-int/2addr v4, v5

    const/4 v6, 0x5

    div-int/2addr v4, v6

    if-ge v3, v4, :cond_5

    .line 90
    new-array v4, v6, [S

    .line 91
    .local v4, "s":[S
    const/16 v7, 0x8

    new-array v7, v7, [I

    .line 93
    .local v7, "t":[I
    const/4 v8, 0x5

    .line 94
    .local v8, "blocklen":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    const/4 v10, 0x0

    if-ge v9, v6, :cond_1

    .line 95
    mul-int/lit8 v11, v3, 0x5

    add-int/2addr v11, v9

    array-length v12, v1

    if-ge v11, v12, :cond_0

    .line 96
    mul-int/lit8 v10, v3, 0x5

    add-int/2addr v10, v9

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    aput-short v10, v4, v9

    goto :goto_2

    .line 98
    :cond_0
    aput-short v10, v4, v9

    .line 99
    add-int/lit8 v8, v8, -0x1

    .line 94
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 102
    .end local v9    # "j":I
    :cond_1
    invoke-static {v8}, Lorg/xbill/DNS/utils/base32;->blockLenToPadding(I)I

    move-result v9

    .line 107
    .local v9, "padlen":I
    aget-short v11, v4, v10

    const/4 v12, 0x3

    shr-int/2addr v11, v12

    and-int/lit8 v11, v11, 0x1f

    int-to-byte v11, v11

    aput v11, v7, v10

    .line 109
    aget-short v10, v4, v10

    const/4 v11, 0x7

    and-int/2addr v10, v11

    const/4 v13, 0x2

    shl-int/2addr v10, v13

    const/4 v14, 0x1

    aget-short v15, v4, v14

    const/16 v16, 0x6

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v12

    or-int/2addr v10, v15

    int-to-byte v10, v10

    aput v10, v7, v14

    .line 111
    aget-short v10, v4, v14

    shr-int/2addr v10, v14

    and-int/lit8 v10, v10, 0x1f

    int-to-byte v10, v10

    aput v10, v7, v13

    .line 113
    aget-short v10, v4, v14

    and-int/2addr v10, v14

    shl-int/2addr v10, v5

    aget-short v15, v4, v13

    shr-int/2addr v15, v5

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v10, v15

    int-to-byte v10, v10

    aput v10, v7, v12

    .line 115
    aget-short v10, v4, v13

    and-int/lit8 v10, v10, 0xf

    shl-int/2addr v10, v14

    aget-short v15, v4, v12

    shr-int/2addr v15, v11

    and-int/2addr v14, v15

    or-int/2addr v10, v14

    int-to-byte v10, v10

    aput v10, v7, v5

    .line 117
    aget-short v10, v4, v12

    shr-int/2addr v10, v13

    and-int/lit8 v10, v10, 0x1f

    int-to-byte v10, v10

    aput v10, v7, v6

    .line 119
    aget-short v10, v4, v12

    and-int/2addr v10, v12

    shl-int/2addr v10, v12

    aget-short v12, v4, v5

    shr-int/lit8 v6, v12, 0x5

    and-int/2addr v6, v11

    or-int/2addr v6, v10

    int-to-byte v6, v6

    aput v6, v7, v16

    .line 121
    aget-short v5, v4, v5

    and-int/lit8 v5, v5, 0x1f

    int-to-byte v5, v5

    aput v5, v7, v11

    .line 124
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    array-length v6, v7

    sub-int/2addr v6, v9

    if-ge v5, v6, :cond_3

    .line 125
    iget-object v6, v0, Lorg/xbill/DNS/utils/base32;->alphabet:Ljava/lang/String;

    aget v10, v7, v5

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 126
    .local v6, "c":C
    iget-boolean v10, v0, Lorg/xbill/DNS/utils/base32;->lowercase:Z

    if-eqz v10, :cond_2

    .line 127
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 128
    :cond_2
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 124
    .end local v6    # "c":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 132
    .end local v5    # "j":I
    :cond_3
    iget-boolean v5, v0, Lorg/xbill/DNS/utils/base32;->padding:Z

    if-eqz v5, :cond_4

    .line 133
    array-length v5, v7

    sub-int/2addr v5, v9

    .restart local v5    # "j":I
    :goto_4
    array-length v6, v7

    if-ge v5, v6, :cond_4

    .line 134
    const/16 v6, 0x3d

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 89
    .end local v4    # "s":[S
    .end local v5    # "j":I
    .end local v7    # "t":[I
    .end local v8    # "blocklen":I
    .end local v9    # "padlen":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 138
    .end local v3    # "i":I
    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method
