.class public Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;
.super Ljava/lang/Object;
.source "BASE64MailboxDecoder.java"


# static fields
.field static final pem_array:[C

.field private static final pem_convert_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 178
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 179
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 184
    nop

    .line 185
    nop

    .line 186
    nop

    .line 178
    sput-object v0, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C

    .line 189
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xff

    if-lt v0, v1, :cond_1

    .line 194
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 55
    .end local v0    # "i":I
    return-void

    .line 195
    .restart local v0    # "i":I
    :cond_0
    sget-object v2, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    aget-char v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_1
    sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static base64decode([CILjava/text/CharacterIterator;)I
    .locals 16
    .param p0, "buffer"    # [C
    .param p1, "offset"    # I
    .param p2, "iter"    # Ljava/text/CharacterIterator;

    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, "firsttime":Z
    const/4 v1, -0x1

    .line 91
    .local v1, "leftover":I
    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p1

    .line 95
    .end local p1    # "offset":I
    .local v0, "offset":I
    .local v1, "firsttime":Z
    .local v2, "leftover":I
    .local v3, "testing":C
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/text/CharacterIterator;->next()C

    move-result v4

    int-to-byte v4, v4

    .line 96
    .local v4, "orig_0":B
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    goto/16 :goto_3

    .line 97
    :cond_0
    const/16 v6, 0x2d

    if-ne v4, v6, :cond_1

    .line 98
    if-eqz v1, :cond_a

    .line 100
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "offset":I
    .local v5, "offset":I
    const/16 v6, 0x26

    aput-char v6, p0, v0

    .line 103
    move v0, v5

    goto/16 :goto_3

    .line 105
    .end local v5    # "offset":I
    .restart local v0    # "offset":I
    :cond_1
    const/4 v1, 0x0

    .line 108
    invoke-interface/range {p2 .. p2}, Ljava/text/CharacterIterator;->next()C

    move-result v7

    int-to-byte v7, v7

    .line 109
    .local v7, "orig_1":B
    if-eq v7, v5, :cond_a

    if-ne v7, v6, :cond_2

    .line 110
    goto/16 :goto_3

    .line 113
    :cond_2
    sget-object v8, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    and-int/lit16 v9, v4, 0xff

    aget-byte v9, v8, v9

    .line 114
    .local v9, "a":B
    and-int/lit16 v10, v7, 0xff

    aget-byte v8, v8, v10

    .line 116
    .local v8, "b":B
    shl-int/lit8 v10, v9, 0x2

    and-int/lit16 v10, v10, 0xfc

    ushr-int/lit8 v11, v8, 0x4

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    int-to-byte v10, v10

    .line 119
    .local v10, "current":B
    if-eq v2, v5, :cond_3

    .line 120
    add-int/lit8 v11, v0, 0x1

    .end local v0    # "offset":I
    .local v11, "offset":I
    shl-int/lit8 v12, v2, 0x8

    and-int/lit16 v13, v10, 0xff

    or-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, p0, v0

    .line 121
    const/4 v0, -0x1

    move v2, v0

    move v0, v11

    .end local v2    # "leftover":I
    .local v0, "leftover":I
    goto :goto_1

    .line 123
    .end local v11    # "offset":I
    .local v0, "offset":I
    .restart local v2    # "leftover":I
    :cond_3
    and-int/lit16 v2, v10, 0xff

    .line 126
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/text/CharacterIterator;->next()C

    move-result v11

    int-to-byte v11, v11

    .line 127
    .local v11, "orig_2":B
    const/16 v12, 0x3d

    if-ne v11, v12, :cond_4

    .line 128
    goto :goto_0

    .line 129
    :cond_4
    if-eq v11, v5, :cond_a

    if-ne v11, v6, :cond_5

    .line 130
    goto :goto_3

    .line 134
    :cond_5
    move v9, v8

    .line 135
    sget-object v13, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    and-int/lit16 v14, v11, 0xff

    aget-byte v8, v13, v14

    .line 136
    shl-int/lit8 v13, v9, 0x4

    and-int/lit16 v13, v13, 0xf0

    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v10, v13

    .line 139
    if-eq v2, v5, :cond_6

    .line 140
    add-int/lit8 v13, v0, 0x1

    .end local v0    # "offset":I
    .local v13, "offset":I
    shl-int/lit8 v14, v2, 0x8

    and-int/lit16 v15, v10, 0xff

    or-int/2addr v14, v15

    int-to-char v14, v14

    aput-char v14, p0, v0

    .line 141
    const/4 v0, -0x1

    move v2, v0

    move v0, v13

    .end local v2    # "leftover":I
    .local v0, "leftover":I
    goto :goto_2

    .line 143
    .end local v13    # "offset":I
    .local v0, "offset":I
    .restart local v2    # "leftover":I
    :cond_6
    and-int/lit16 v2, v10, 0xff

    .line 146
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/text/CharacterIterator;->next()C

    move-result v13

    int-to-byte v13, v13

    .line 147
    .local v13, "orig_3":B
    if-ne v13, v12, :cond_7

    .line 148
    goto/16 :goto_0

    .line 149
    :cond_7
    if-eq v13, v5, :cond_a

    if-ne v13, v6, :cond_8

    .line 150
    goto :goto_3

    .line 154
    :cond_8
    move v6, v8

    .line 155
    .end local v9    # "a":B
    .local v6, "a":B
    sget-object v9, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    and-int/lit16 v12, v13, 0xff

    aget-byte v8, v9, v12

    .line 156
    shl-int/lit8 v9, v6, 0x6

    and-int/lit16 v9, v9, 0xc0

    and-int/lit8 v12, v8, 0x3f

    or-int/2addr v9, v12

    int-to-byte v9, v9

    .line 159
    .end local v10    # "current":B
    .local v9, "current":B
    if-eq v2, v5, :cond_9

    .line 160
    shl-int/lit8 v5, v2, 0x8

    and-int/lit16 v10, v9, 0xff

    or-int/2addr v5, v10

    int-to-char v3, v5

    .line 161
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "offset":I
    .restart local v5    # "offset":I
    shl-int/lit8 v10, v2, 0x8

    and-int/lit16 v12, v9, 0xff

    or-int/2addr v10, v12

    int-to-char v10, v10

    aput-char v10, p0, v0

    .line 162
    const/4 v2, -0x1

    move v0, v5

    goto/16 :goto_0

    .line 164
    .end local v5    # "offset":I
    .restart local v0    # "offset":I
    :cond_9
    and-int/lit16 v2, v9, 0xff

    .line 93
    .end local v4    # "orig_0":B
    .end local v6    # "a":B
    .end local v7    # "orig_1":B
    .end local v8    # "b":B
    .end local v9    # "current":B
    .end local v11    # "orig_2":B
    .end local v13    # "orig_3":B
    goto/16 :goto_0

    .line 168
    :cond_a
    :goto_3
    return v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "original"    # Ljava/lang/String;

    .line 58
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    .local v0, "changedString":Z
    const/4 v1, 0x0

    .line 64
    .local v1, "copyTo":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [C

    .line 65
    .local v2, "chars":[C
    new-instance v3, Ljava/text/StringCharacterIterator;

    invoke-direct {v3, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, "iter":Ljava/text/StringCharacterIterator;
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->first()C

    move-result v4

    .local v4, "c":C
    :goto_0
    const v5, 0xffff

    if-ne v4, v5, :cond_2

    .line 79
    .end local v4    # "c":C
    if-eqz v0, :cond_1

    .line 80
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 82
    :cond_1
    return-object p0

    .line 70
    .restart local v4    # "c":C
    :cond_2
    const/16 v5, 0x26

    if-ne v4, v5, :cond_3

    .line 71
    const/4 v0, 0x1

    .line 72
    invoke-static {v2, v1, v3}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->base64decode([CILjava/text/CharacterIterator;)I

    move-result v1

    goto :goto_1

    .line 74
    :cond_3
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "copyTo":I
    .local v5, "copyTo":I
    aput-char v4, v2, v1

    move v1, v5

    .line 68
    .end local v5    # "copyTo":I
    .restart local v1    # "copyTo":I
    :goto_1
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->next()C

    move-result v4

    goto :goto_0

    .line 59
    .end local v0    # "changedString":Z
    .end local v1    # "copyTo":I
    .end local v2    # "chars":[C
    .end local v3    # "iter":Ljava/text/StringCharacterIterator;
    .end local v4    # "c":C
    :cond_4
    :goto_2
    return-object p0
.end method
