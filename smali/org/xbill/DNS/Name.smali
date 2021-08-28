.class public Lorg/xbill/DNS/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final LABEL_COMPRESSION:I = 0xc0

.field private static final LABEL_MASK:I = 0xc0

.field private static final LABEL_NORMAL:I = 0x0

.field private static final MAXLABEL:I = 0x3f

.field private static final MAXLABELS:I = 0x80

.field private static final MAXNAME:I = 0xff

.field private static final MAXOFFSETS:I = 0x7

.field private static final byteFormat:Ljava/text/DecimalFormat;

.field public static final empty:Lorg/xbill/DNS/Name;

.field private static final emptyLabel:[B

.field private static final lowercase:[B

.field public static final root:Lorg/xbill/DNS/Name;

.field private static final serialVersionUID:J = -0x64b61d2fdd88b60cL

.field private static final wild:Lorg/xbill/DNS/Name;

.field private static final wildLabel:[B


# instance fields
.field private hashcode:I

.field private name:[B

.field private offsets:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    sput-object v1, Lorg/xbill/DNS/Name;->emptyLabel:[B

    .line 36
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/xbill/DNS/Name;->wildLabel:[B

    .line 57
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    .line 60
    const/16 v3, 0x100

    new-array v3, v3, [B

    sput-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    .line 66
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 68
    const/16 v4, 0x41

    if-lt v1, v4, :cond_1

    const/16 v4, 0x5a

    if-le v1, v4, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    add-int/lit8 v4, v1, -0x41

    add-int/lit8 v4, v4, 0x61

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_2

    .line 69
    :cond_1
    :goto_1
    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    .line 67
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    .line 74
    sget-object v3, Lorg/xbill/DNS/Name;->emptyLabel:[B

    invoke-direct {v1, v3, v2, v0}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 75
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    .line 76
    new-array v3, v2, [B

    iput-object v3, v1, Lorg/xbill/DNS/Name;->name:[B

    .line 77
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    .line 78
    sget-object v3, Lorg/xbill/DNS/Name;->wildLabel:[B

    invoke-direct {v1, v3, v2, v0}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 79
    return-void

    :array_0
    .array-data 1
        0x1t
        0x2at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 16
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 208
    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    if-nez v2, :cond_0

    .line 210
    sget-object v3, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    invoke-static {v3, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {v2, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 213
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    sget-object v3, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v3, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 216
    return-void

    .line 218
    :cond_2
    const/4 v3, -0x1

    .line 219
    .local v3, "labelstart":I
    const/4 v4, 0x1

    .line 220
    .local v4, "pos":I
    const/16 v5, 0x40

    new-array v5, v5, [B

    .line 221
    .local v5, "label":[B
    const/4 v6, 0x0

    .line 222
    .local v6, "escaped":Z
    const/4 v7, 0x0

    .line 223
    .local v7, "digits":I
    const/4 v8, 0x0

    .line 224
    .local v8, "intval":I
    const/4 v9, 0x0

    .line 225
    .local v9, "absolute":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const-string v13, "bad escape"

    const/4 v14, 0x3

    if-ge v10, v11, :cond_f

    .line 226
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    .line 227
    .local v11, "b":B
    const-string v15, "label too long"

    if-eqz v6, :cond_9

    .line 228
    const/16 v12, 0x30

    if-lt v11, v12, :cond_5

    const/16 v12, 0x39

    if-gt v11, v12, :cond_5

    if-ge v7, v14, :cond_5

    .line 229
    add-int/lit8 v7, v7, 0x1

    .line 230
    mul-int/lit8 v8, v8, 0xa

    .line 231
    add-int/lit8 v12, v11, -0x30

    add-int/2addr v8, v12

    .line 232
    const/16 v12, 0xff

    if-gt v8, v12, :cond_4

    .line 234
    if-ge v7, v14, :cond_3

    .line 235
    goto :goto_3

    .line 236
    :cond_3
    int-to-byte v11, v8

    goto :goto_2

    .line 233
    :cond_4
    invoke-static {v1, v13}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v12

    throw v12

    .line 238
    :cond_5
    if-lez v7, :cond_7

    if-lt v7, v14, :cond_6

    goto :goto_2

    .line 239
    :cond_6
    invoke-static {v1, v13}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v12

    throw v12

    .line 240
    :cond_7
    :goto_2
    const/16 v12, 0x3f

    if-gt v4, v12, :cond_8

    .line 242
    move v3, v4

    .line 243
    add-int/lit8 v12, v4, 0x1

    .end local v4    # "pos":I
    .local v12, "pos":I
    aput-byte v11, v5, v4

    .line 244
    const/4 v4, 0x0

    move v6, v4

    move v4, v12

    .end local v6    # "escaped":Z
    .local v4, "escaped":Z
    goto :goto_3

    .line 241
    .end local v12    # "pos":I
    .local v4, "pos":I
    .restart local v6    # "escaped":Z
    :cond_8
    invoke-static {v1, v15}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v12

    throw v12

    .line 245
    :cond_9
    const/16 v12, 0x5c

    if-ne v11, v12, :cond_a

    .line 246
    const/4 v6, 0x1

    .line 247
    const/4 v7, 0x0

    .line 248
    const/4 v8, 0x0

    goto :goto_3

    .line 249
    :cond_a
    const/16 v12, 0x2e

    if-ne v11, v12, :cond_c

    .line 250
    const/4 v12, -0x1

    if-eq v3, v12, :cond_b

    .line 252
    add-int/lit8 v12, v4, -0x1

    int-to-byte v12, v12

    const/4 v13, 0x0

    aput-byte v12, v5, v13

    .line 253
    const/4 v12, 0x1

    invoke-direct {v0, v1, v5, v13, v12}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 254
    const/4 v3, -0x1

    .line 255
    const/4 v4, 0x1

    goto :goto_3

    .line 251
    :cond_b
    const-string v12, "invalid empty label"

    invoke-static {v1, v12}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v12

    throw v12

    .line 257
    :cond_c
    const/4 v12, -0x1

    if-ne v3, v12, :cond_d

    .line 258
    move v3, v10

    .line 259
    :cond_d
    const/16 v12, 0x3f

    if-gt v4, v12, :cond_e

    .line 261
    add-int/lit8 v12, v4, 0x1

    .end local v4    # "pos":I
    .restart local v12    # "pos":I
    aput-byte v11, v5, v4

    move v4, v12

    .line 225
    .end local v11    # "b":B
    .end local v12    # "pos":I
    .restart local v4    # "pos":I
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 260
    .restart local v11    # "b":B
    :cond_e
    invoke-static {v1, v15}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v12

    throw v12

    .line 264
    .end local v10    # "i":I
    .end local v11    # "b":B
    :cond_f
    if-lez v7, :cond_11

    if-lt v7, v14, :cond_10

    goto :goto_4

    .line 265
    :cond_10
    invoke-static {v1, v13}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 266
    :cond_11
    :goto_4
    if-nez v6, :cond_14

    .line 268
    const/4 v10, -0x1

    if-ne v3, v10, :cond_12

    .line 269
    sget-object v10, Lorg/xbill/DNS/Name;->emptyLabel:[B

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v0, v1, v10, v11, v12}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 270
    const/4 v9, 0x1

    goto :goto_5

    .line 272
    :cond_12
    const/4 v11, 0x0

    const/4 v12, 0x1

    add-int/lit8 v10, v4, -0x1

    int-to-byte v10, v10

    aput-byte v10, v5, v11

    .line 273
    invoke-direct {v0, v1, v5, v11, v12}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 275
    :goto_5
    if-eqz v2, :cond_13

    if-nez v9, :cond_13

    .line 276
    iget-object v10, v2, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {v2, v11}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v11

    .line 277
    invoke-direct/range {p2 .. p2}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v12

    .line 276
    invoke-direct {v0, v1, v10, v11, v12}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 278
    :cond_13
    return-void

    .line 267
    :cond_14
    invoke-static {v1, v13}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 207
    .end local v3    # "labelstart":I
    .end local v4    # "pos":I
    .end local v5    # "label":[B
    .end local v6    # "escaped":Z
    .end local v7    # "digits":I
    .end local v8    # "intval":I
    .end local v9    # "absolute":Z
    :cond_15
    const-string v3, "empty name"

    invoke-static {v1, v3}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3
.end method

.method public constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .locals 9
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "done":Z
    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 349
    .local v1, "label":[B
    const/4 v2, 0x0

    .line 351
    .local v2, "savedState":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_8

    .line 352
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 353
    .local v3, "len":I
    and-int/lit16 v4, v3, 0xc0

    if-eqz v4, :cond_5

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_4

    .line 367
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 368
    .local v4, "pos":I
    and-int/lit16 v5, v3, -0xc1

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    .line 369
    const-string/jumbo v5, "verbosecompression"

    invoke-static {v5}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 370
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "currently "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, ", pointer to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ge v4, v6, :cond_3

    .line 375
    if-nez v2, :cond_2

    .line 376
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->save()V

    .line 377
    const/4 v2, 0x1

    .line 379
    :cond_2
    invoke-virtual {p1, v4}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 380
    invoke-static {v5}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 381
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "current name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v7, "\', seeking to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_3
    new-instance v5, Lorg/xbill/DNS/WireParseException;

    const-string v6, "bad compression"

    invoke-direct {v5, v6}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 385
    .end local v4    # "pos":I
    :cond_4
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "bad label type"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 355
    :cond_5
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_7

    .line 357
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_6

    .line 358
    sget-object v6, Lorg/xbill/DNS/Name;->emptyLabel:[B

    invoke-direct {p0, v6, v5, v4}, Lorg/xbill/DNS/Name;->append([BII)V

    .line 359
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 361
    :cond_6
    int-to-byte v6, v3

    aput-byte v6, v1, v5

    .line 362
    invoke-virtual {p1, v1, v4, v3}, Lorg/xbill/DNS/DNSInput;->readByteArray([BII)V

    .line 363
    invoke-direct {p0, v1, v5, v4}, Lorg/xbill/DNS/Name;->append([BII)V

    .line 365
    goto/16 :goto_0

    .line 356
    :cond_7
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v5, "too many labels"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 388
    .end local v3    # "len":I
    :cond_8
    if-eqz v2, :cond_9

    .line 389
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->restore()V

    .line 391
    :cond_9
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 3
    .param p1, "src"    # Lorg/xbill/DNS/Name;
    .param p2, "n"    # I

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 410
    .local v0, "slabels":I
    if-gt p2, v0, :cond_1

    .line 413
    iget-object v1, p1, Lorg/xbill/DNS/Name;->name:[B

    iput-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 414
    sub-int v1, v0, p2

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 415
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    sub-int v2, v0, p2

    if-ge v1, v2, :cond_0

    .line 416
    add-int v2, v1, p2

    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 411
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempted to remove too many labels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 400
    return-void
.end method

.method private final append([BII)V
    .locals 9
    .param p1, "array"    # [B
    .param p2, "start"    # I
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 142
    .local v0, "length":I
    :goto_0
    const/4 v2, 0x0

    .line 143
    .local v2, "alength":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v4, p2

    .local v4, "pos":I
    :goto_1
    if-ge v3, p3, :cond_2

    .line 144
    aget-byte v5, p1, v4

    .line 145
    .local v5, "len":I
    const/16 v6, 0x3f

    if-gt v5, v6, :cond_1

    .line 147
    add-int/lit8 v5, v5, 0x1

    .line 148
    add-int/2addr v4, v5

    .line 149
    add-int/2addr v2, v5

    .line 143
    .end local v5    # "len":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    .restart local v5    # "len":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v6, "invalid label"

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    .end local v3    # "i":I
    .end local v4    # "pos":I
    .end local v5    # "len":I
    :cond_2
    add-int v3, v0, v2

    .line 152
    .local v3, "newlength":I
    const/16 v4, 0xff

    if-gt v3, v4, :cond_6

    .line 154
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v4

    .line 155
    .local v4, "labels":I
    add-int v5, v4, p3

    .line 156
    .local v5, "newlabels":I
    const/16 v6, 0x80

    if-gt v5, v6, :cond_5

    .line 158
    new-array v6, v3, [B

    .line 159
    .local v6, "newname":[B
    if-eqz v0, :cond_3

    .line 160
    iget-object v7, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v8

    invoke-static {v7, v8, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_3
    invoke-static {p1, p2, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput-object v6, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    move v7, v0

    .local v7, "pos":I
    :goto_2
    if-ge v1, p3, :cond_4

    .line 164
    add-int v8, v4, v1

    invoke-direct {p0, v8, v7}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 165
    aget-byte v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 167
    .end local v1    # "i":I
    .end local v7    # "pos":I
    :cond_4
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 168
    return-void

    .line 157
    .end local v6    # "newname":[B
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "too many labels"

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    .end local v4    # "labels":I
    .end local v5    # "newlabels":I
    :cond_6
    new-instance v1, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {v1}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw v1
.end method

.method private final appendFromString(Ljava/lang/String;[BII)V
    .locals 2
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "array"    # [B
    .param p3, "start"    # I
    .param p4, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 180
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    nop

    .line 185
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    const-string v1, "Name too long"

    invoke-static {p1, v1}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method private final appendSafe([BII)V
    .locals 1
    .param p1, "array"    # [B
    .param p2, "start"    # I
    .param p3, "n"    # I

    .line 190
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 194
    :goto_0
    return-void
.end method

.method private byteString([BI)Ljava/lang/String;
    .locals 7
    .param p1, "array"    # [B
    .param p2, "pos"    # I

    .line 592
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 593
    .local v0, "sb":Ljava/lang/StringBuffer;
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "pos":I
    .local v1, "pos":I
    aget-byte p2, p1, p2

    .line 594
    .local p2, "len":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    add-int v3, v1, p2

    if-ge v2, v3, :cond_4

    .line 595
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 596
    .local v3, "b":I
    const/16 v4, 0x20

    const/16 v5, 0x5c

    if-le v3, v4, :cond_3

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_0

    goto :goto_2

    .line 600
    :cond_0
    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    const/16 v4, 0x28

    if-eq v3, v4, :cond_2

    const/16 v4, 0x29

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_2

    const/16 v4, 0x40

    if-eq v3, v4, :cond_2

    const/16 v4, 0x24

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 607
    :cond_1
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 603
    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 604
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 597
    :cond_3
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 598
    sget-object v4, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    .end local v3    # "b":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 4
    .param p0, "prefix"    # Lorg/xbill/DNS/Name;
    .param p1, "suffix"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    return-object p0

    .line 430
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 431
    .local v0, "newname":Lorg/xbill/DNS/Name;
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 432
    iget-object v1, p1, Lorg/xbill/DNS/Name;->name:[B

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p1}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/Name;->append([BII)V

    .line 433
    return-object v0
.end method

.method private static final copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 6
    .param p0, "src"    # Lorg/xbill/DNS/Name;
    .param p1, "dst"    # Lorg/xbill/DNS/Name;

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    iput-object v0, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 126
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    iput-wide v0, p1, Lorg/xbill/DNS/Name;->offsets:J

    goto :goto_1

    .line 128
    :cond_0
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .line 129
    .local v1, "offset0":I
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 130
    .local v2, "namelen":I
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    .line 131
    .local v3, "labels":I
    new-array v4, v2, [B

    iput-object v4, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 132
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v5, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    const/4 v4, 0x7

    if-ge v0, v4, :cond_1

    .line 134
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {p1, v0, v4}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p1, v3}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 137
    .end local v1    # "offset0":I
    .end local v2    # "namelen":I
    .end local v3    # "labels":I
    :goto_1
    return-void
.end method

.method private final equals([BI)Z
    .locals 9
    .param p1, "b"    # [B
    .param p2, "bpos"    # I

    .line 772
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 773
    .local v0, "labels":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    .local v3, "pos":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 774
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v5, v4, v3

    aget-byte v6, p1, p2

    if-eq v5, v6, :cond_0

    .line 775
    return v2

    .line 776
    :cond_0
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "pos":I
    .local v5, "pos":I
    aget-byte v3, v4, v3

    .line 777
    .local v3, "len":I
    add-int/lit8 p2, p2, 0x1

    .line 778
    const/16 v4, 0x3f

    if-gt v3, v4, :cond_3

    .line 780
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 781
    sget-object v6, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v7, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos":I
    .local v8, "pos":I
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v6, v5

    add-int/lit8 v7, p2, 0x1

    .end local p2    # "bpos":I
    .local v7, "bpos":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    aget-byte p2, v6, p2

    if-eq v5, p2, :cond_1

    .line 783
    return v2

    .line 780
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move p2, v7

    move v5, v8

    goto :goto_1

    .line 773
    .end local v3    # "len":I
    .end local v4    # "j":I
    .end local v7    # "bpos":I
    .end local v8    # "pos":I
    .restart local v5    # "pos":I
    .restart local p2    # "bpos":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_0

    .line 779
    .restart local v3    # "len":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "invalid label"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 785
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v5    # "pos":I
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public static fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 332
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 320
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 302
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 303
    return-object p1

    .line 304
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    return-object v0

    .line 307
    :cond_1
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    return-object v0
.end method

.method private final getlabels()I
    .locals 4

    .line 119
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private final offset(I)I
    .locals 3
    .param p1, "n"    # I

    .line 96
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    if-ltz p1, :cond_3

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 100
    const/4 v0, 0x7

    if-ge p1, v0, :cond_1

    .line 101
    rsub-int/lit8 v0, p1, 0x7

    mul-int/lit8 v0, v0, 0x8

    .line 102
    .local v0, "shift":I
    iget-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    ushr-long/2addr v1, v0

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 104
    .end local v0    # "shift":I
    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    .line 105
    .local v0, "pos":I
    const/4 v1, 0x6

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 106
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 99
    .end local v0    # "pos":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 172
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final setlabels(I)V
    .locals 4
    .param p1, "labels"    # I

    .line 113
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, -0x100

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 114
    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 115
    return-void
.end method

.method private final setoffset(II)V
    .locals 5
    .param p1, "n"    # I
    .param p2, "offset"    # I

    .line 87
    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    .line 88
    return-void

    .line 89
    :cond_0
    rsub-int/lit8 v0, p1, 0x7

    mul-int/lit8 v0, v0, 0x8

    .line 90
    .local v0, "shift":I
    iget-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v3, 0xff

    shl-long/2addr v3, v0

    not-long v3, v3

    and-long/2addr v1, v3

    iput-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 91
    int-to-long v3, p2

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 92
    return-void
.end method


# virtual methods
.method public canonicalize()Lorg/xbill/DNS/Name;
    .locals 6

    .line 483
    const/4 v0, 0x1

    .line 484
    .local v0, "canonical":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 485
    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    .line 486
    const/4 v0, 0x0

    .line 487
    goto :goto_1

    .line 484
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 491
    return-object p0

    .line 493
    :cond_2
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    .line 494
    .local v1, "newname":Lorg/xbill/DNS/Name;
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 495
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, v1, Lorg/xbill/DNS/Name;->name:[B

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 496
    sget-object v4, Lorg/xbill/DNS/Name;->lowercase:[B

    aget-byte v5, v3, v2

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    aput-byte v4, v3, v2

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 498
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 834
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/Name;

    .line 836
    .local v0, "arg":Lorg/xbill/DNS/Name;
    if-ne p0, v0, :cond_0

    .line 837
    const/4 v1, 0x0

    return v1

    .line 839
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 840
    .local v1, "labels":I
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    .line 841
    .local v2, "alabels":I
    if-le v1, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 843
    .local v3, "compares":I
    :goto_0
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-gt v4, v3, :cond_5

    .line 844
    sub-int v5, v1, v4

    invoke-direct {p0, v5}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v5

    .line 845
    .local v5, "start":I
    sub-int v6, v2, v4

    invoke-direct {v0, v6}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v6

    .line 846
    .local v6, "astart":I
    iget-object v7, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v7, v7, v5

    .line 847
    .local v7, "length":I
    iget-object v8, v0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v8, v8, v6

    .line 848
    .local v8, "alength":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v7, :cond_3

    if-ge v9, v8, :cond_3

    .line 849
    sget-object v10, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v11, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int v12, v9, v5

    add-int/lit8 v12, v12, 0x1

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v10, v11

    iget-object v12, v0, Lorg/xbill/DNS/Name;->name:[B

    add-int v13, v9, v6

    add-int/lit8 v13, v13, 0x1

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    sub-int/2addr v11, v10

    .line 851
    .local v11, "n":I
    if-eqz v11, :cond_2

    .line 852
    return v11

    .line 848
    .end local v11    # "n":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 854
    .end local v9    # "j":I
    :cond_3
    if-eq v7, v8, :cond_4

    .line 855
    sub-int v9, v7, v8

    return v9

    .line 843
    .end local v5    # "start":I
    .end local v6    # "astart":I
    .end local v7    # "length":I
    .end local v8    # "alength":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 857
    .end local v4    # "i":I
    :cond_5
    sub-int v4, v1, v2

    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    .line 793
    if-ne p1, p0, :cond_0

    .line 794
    const/4 v0, 0x1

    return v0

    .line 795
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    instance-of v1, p1, Lorg/xbill/DNS/Name;

    if-nez v1, :cond_1

    goto :goto_0

    .line 797
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/xbill/DNS/Name;

    .line 798
    .local v1, "d":Lorg/xbill/DNS/Name;
    iget v2, v1, Lorg/xbill/DNS/Name;->hashcode:I

    if-nez v2, :cond_2

    .line 799
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->hashCode()I

    .line 800
    :cond_2
    iget v2, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-nez v2, :cond_3

    .line 801
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->hashCode()I

    .line 802
    :cond_3
    iget v2, v1, Lorg/xbill/DNS/Name;->hashcode:I

    iget v3, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-eq v2, v3, :cond_4

    .line 803
    return v0

    .line 804
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 805
    return v0

    .line 806
    :cond_5
    iget-object v2, v1, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {v1, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result v0

    return v0

    .line 796
    .end local v1    # "d":Lorg/xbill/DNS/Name;
    :cond_6
    :goto_0
    return v0
.end method

.method public fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;
    .locals 11
    .param p1, "dname"    # Lorg/xbill/DNS/DNAMERecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .line 509
    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 510
    .local v0, "dnameowner":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 511
    .local v1, "dnametarget":Lorg/xbill/DNS/Name;
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    const/4 v2, 0x0

    return-object v2

    .line 514
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    sub-int/2addr v2, v3

    .line 515
    .local v2, "plabels":I
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v3

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v4

    sub-int/2addr v3, v4

    .line 516
    .local v3, "plength":I
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v5

    .line 518
    .local v5, "pstart":I
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v6

    .line 519
    .local v6, "dlabels":I
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v7

    .line 521
    .local v7, "dlength":I
    add-int v8, v3, v7

    const/16 v9, 0xff

    if-gt v8, v9, :cond_2

    .line 524
    new-instance v8, Lorg/xbill/DNS/Name;

    invoke-direct {v8}, Lorg/xbill/DNS/Name;-><init>()V

    .line 525
    .local v8, "newname":Lorg/xbill/DNS/Name;
    add-int v9, v2, v6

    invoke-direct {v8, v9}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 526
    add-int v9, v3, v7

    new-array v9, v9, [B

    iput-object v9, v8, Lorg/xbill/DNS/Name;->name:[B

    .line 527
    iget-object v10, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v10, v5, v9, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    iget-object v9, v1, Lorg/xbill/DNS/Name;->name:[B

    iget-object v10, v8, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v9, v4, v10, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v9, 0x0

    .local v9, "pos":I
    :goto_0
    const/4 v10, 0x7

    if-ge v4, v10, :cond_1

    add-int v10, v2, v6

    if-ge v4, v10, :cond_1

    .line 531
    invoke-direct {v8, v4, v9}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 532
    iget-object v10, v8, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v10, v10, v9

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    .line 530
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 534
    .end local v4    # "i":I
    .end local v9    # "pos":I
    :cond_1
    return-object v8

    .line 522
    .end local v8    # "newname":Lorg/xbill/DNS/Name;
    :cond_2
    new-instance v4, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {v4}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw v4
.end method

.method public getLabel(I)[B
    .locals 5
    .param p1, "n"    # I

    .line 658
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    .line 659
    .local v0, "pos":I
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    .line 660
    .local v2, "len":B
    new-array v3, v2, [B

    .line 661
    .local v3, "label":[B
    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 662
    return-object v3
.end method

.method public getLabelString(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .line 672
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    .line 673
    .local v0, "pos":I
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 5

    .line 814
    iget v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-eqz v0, :cond_0

    .line 815
    return v0

    .line 816
    :cond_0
    const/4 v0, 0x0

    .line 817
    .local v0, "code":I
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 818
    shl-int/lit8 v3, v0, 0x3

    sget-object v4, Lorg/xbill/DNS/Name;->lowercase:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v4, v2

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 819
    .end local v1    # "i":I
    :cond_1
    iput v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    .line 820
    return v0
.end method

.method public isAbsolute()Z
    .locals 4

    .line 552
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 553
    .local v0, "nlabels":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 554
    return v1

    .line 555
    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    aget-byte v2, v2, v3

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isWild()Z
    .locals 4

    .line 542
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 543
    return v1

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    aget-byte v0, v0, v3

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public labels()I
    .locals 1

    .line 573
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    return v0
.end method

.method public length()S
    .locals 2

    .line 563
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 564
    return v1

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v0, v0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public relativize(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 7
    .param p1, "origin"    # Lorg/xbill/DNS/Name;

    .line 444
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 447
    .local v0, "newname":Lorg/xbill/DNS/Name;
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 448
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->length()S

    move-result v2

    sub-int/2addr v1, v2

    .line 449
    .local v1, "length":I
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    sub-int/2addr v2, v3

    .line 450
    .local v2, "labels":I
    invoke-direct {v0, v2}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 451
    new-array v3, v1, [B

    iput-object v3, v0, Lorg/xbill/DNS/Name;->name:[B

    .line 452
    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v5

    iget-object v6, v0, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v3, v5, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    return-object v0

    .line 445
    .end local v0    # "newname":Lorg/xbill/DNS/Name;
    .end local v1    # "length":I
    .end local v2    # "labels":I
    :cond_1
    :goto_0
    return-object p0
.end method

.method public subdomain(Lorg/xbill/DNS/Name;)Z
    .locals 4
    .param p1, "domain"    # Lorg/xbill/DNS/Name;

    .line 581
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 582
    .local v0, "labels":I
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 583
    .local v1, "dlabels":I
    if-le v1, v0, :cond_0

    .line 584
    const/4 v2, 0x0

    return v2

    .line 585
    :cond_0
    if-ne v1, v0, :cond_1

    .line 586
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 587
    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    sub-int v3, v0, v1

    invoke-direct {p0, v3}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    invoke-direct {p1, v2, v3}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result v2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 648
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Name;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 7
    .param p1, "omitFinalDot"    # Z

    .line 619
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 620
    .local v0, "labels":I
    if-nez v0, :cond_0

    .line 621
    const-string v1, "@"

    return-object v1

    .line 622
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    aget-byte v2, v2, v3

    if-nez v2, :cond_1

    .line 623
    const-string v1, "."

    return-object v1

    .line 624
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .local v1, "pos":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 626
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v1

    .line 627
    .local v4, "len":I
    const/16 v5, 0x3f

    if-gt v4, v5, :cond_4

    .line 629
    const/16 v5, 0x2e

    if-nez v4, :cond_2

    .line 630
    if-nez p1, :cond_5

    .line 631
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 634
    :cond_2
    if-lez v3, :cond_3

    .line 635
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 636
    :cond_3
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v5, v1}, Lorg/xbill/DNS/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    add-int/lit8 v5, v4, 0x1

    add-int/2addr v1, v5

    .line 625
    .end local v4    # "len":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 628
    .restart local v4    # "len":I
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "invalid label"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 639
    .end local v1    # "pos":I
    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V
    .locals 7
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;

    .line 684
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 688
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 689
    .local v0, "labels":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 691
    if-nez v1, :cond_0

    .line 692
    move-object v2, p0

    .local v2, "tname":Lorg/xbill/DNS/Name;
    goto :goto_1

    .line 694
    .end local v2    # "tname":Lorg/xbill/DNS/Name;
    :cond_0
    new-instance v2, Lorg/xbill/DNS/Name;

    invoke-direct {v2, p0, v1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 695
    .restart local v2    # "tname":Lorg/xbill/DNS/Name;
    :goto_1
    const/4 v3, -0x1

    .line 696
    .local v3, "pos":I
    if-eqz p2, :cond_1

    .line 697
    invoke-virtual {p2, v2}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v3

    .line 698
    :cond_1
    if-ltz v3, :cond_2

    .line 699
    const v4, 0xc000

    or-int/2addr v3, v4

    .line 700
    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 701
    return-void

    .line 703
    :cond_2
    if-eqz p2, :cond_3

    .line 704
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v4

    invoke-virtual {p2, v4, v2}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 705
    :cond_3
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v4

    .line 706
    .local v4, "off":I
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v6, v5, v4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v5, v4, v6}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 689
    .end local v2    # "tname":Lorg/xbill/DNS/Name;
    .end local v3    # "pos":I
    .end local v4    # "off":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 710
    return-void

    .line 685
    .end local v0    # "labels":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toWire() called on non-absolute name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 764
    if-eqz p3, :cond_0

    .line 765
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    goto :goto_0

    .line 767
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 768
    :goto_0
    return-void
.end method

.method public toWire()[B
    .locals 2

    .line 718
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 719
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 720
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;

    .line 729
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v0

    .line 730
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 731
    return-void
.end method

.method public toWireCanonical()[B
    .locals 11

    .line 739
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 740
    .local v0, "labels":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 741
    new-array v1, v1, [B

    return-object v1

    .line 742
    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 743
    .local v2, "b":[B
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .local v1, "spos":I
    const/4 v4, 0x0

    .local v4, "dpos":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 744
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v6, v5, v1

    .line 745
    .local v6, "len":I
    const/16 v7, 0x3f

    if-gt v6, v7, :cond_2

    .line 747
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "dpos":I
    .local v7, "dpos":I
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "spos":I
    .local v8, "spos":I
    aget-byte v1, v5, v1

    aput-byte v1, v2, v4

    .line 748
    const/4 v1, 0x0

    move v4, v7

    .end local v7    # "dpos":I
    .local v1, "j":I
    .restart local v4    # "dpos":I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 749
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dpos":I
    .local v5, "dpos":I
    sget-object v7, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v9, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v10, v8, 0x1

    .end local v8    # "spos":I
    .local v10, "spos":I
    aget-byte v8, v9, v8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    aput-byte v7, v2, v4

    .line 748
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    move v8, v10

    goto :goto_1

    .line 743
    .end local v1    # "j":I
    .end local v5    # "dpos":I
    .end local v6    # "len":I
    .end local v10    # "spos":I
    .restart local v4    # "dpos":I
    .restart local v8    # "spos":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v1, v8

    goto :goto_0

    .line 746
    .end local v8    # "spos":I
    .local v1, "spos":I
    .restart local v6    # "len":I
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v7, "invalid label"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 751
    .end local v1    # "spos":I
    .end local v3    # "i":I
    .end local v4    # "dpos":I
    .end local v6    # "len":I
    :cond_3
    return-object v2
.end method

.method public wild(I)Lorg/xbill/DNS/Name;
    .locals 4
    .param p1, "n"    # I

    .line 462
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 466
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 467
    .local v0, "newname":Lorg/xbill/DNS/Name;
    sget-object v1, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    invoke-static {v1, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 468
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    return-object v0

    .line 471
    .end local v0    # "newname":Lorg/xbill/DNS/Name;
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Name.wild: concatenate failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    .end local v0    # "e":Lorg/xbill/DNS/NameTooLongException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must replace 1 or more labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
