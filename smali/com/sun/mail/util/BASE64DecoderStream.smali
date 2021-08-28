.class public Lcom/sun/mail/util/BASE64DecoderStream;
.super Ljava/io/FilterInputStream;
.source "BASE64DecoderStream.java"


# static fields
.field private static final pem_array:[C

.field private static final pem_convert_array:[B


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private ignoreErrors:Z

.field private index:I

.field private input_buffer:[B

.field private input_len:I

.field private input_pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 198
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 199
    nop

    .line 200
    nop

    .line 201
    nop

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 198
    sput-object v0, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    .line 209
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xff

    if-lt v0, v1, :cond_1

    .line 214
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 55
    .end local v0    # "i":I
    return-void

    .line 215
    .restart local v0    # "i":I
    :cond_0
    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    aget-char v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_1
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 212
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
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 78
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 59
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 63
    const/16 v1, 0x1ffe

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    .line 64
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    .line 65
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    .line 67
    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 80
    :try_start_0
    const-string v1, "mail.mime.base64.ignoreerrors"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 86
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "ignoreErrors"    # Z

    .line 95
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 59
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 63
    const/16 v1, 0x1ffe

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    .line 64
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    .line 65
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    .line 67
    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 96
    iput-boolean p2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 97
    return-void
.end method

.method private decode([BII)I
    .locals 11
    .param p1, "outbuf"    # [B
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    move v0, p2

    .line 234
    .local v0, "pos0":I
    nop

    :goto_0
    const/4 v1, 0x3

    if-ge p3, v1, :cond_0

    .line 334
    sub-int v1, p2, v0

    return v1

    .line 240
    :cond_0
    const/4 v1, 0x0

    .line 241
    .local v1, "got":I
    const/4 v2, 0x0

    .line 242
    .local v2, "val":I
    nop

    :goto_1
    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    .line 326
    add-int/lit8 v3, p2, 0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 327
    shr-int/lit8 v2, v2, 0x8

    .line 328
    add-int/lit8 v3, p2, 0x1

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 329
    shr-int/lit8 v2, v2, 0x8

    .line 330
    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 331
    add-int/lit8 p3, p3, -0x3

    .line 332
    add-int/lit8 p2, p2, 0x3

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v4

    .line 244
    .local v4, "i":I
    const/4 v5, -0x2

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    if-ne v4, v5, :cond_2

    goto :goto_2

    .line 319
    :cond_2
    shl-int/lit8 v2, v2, 0x6

    .line 320
    add-int/lit8 v1, v1, 0x1

    .line 321
    or-int/2addr v2, v4

    goto :goto_1

    .line 246
    :cond_3
    :goto_2
    const/4 v7, 0x2

    if-ne v4, v6, :cond_6

    .line 247
    if-nez v1, :cond_4

    .line 248
    sub-int v3, p2, v0

    return v3

    .line 249
    :cond_4
    iget-boolean v8, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-eqz v8, :cond_5

    .line 254
    const/4 v8, 0x1

    .local v8, "atEOF":Z
    goto :goto_4

    .line 250
    .end local v8    # "atEOF":Z
    :cond_5
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in encoded stream: needed 4 valid base64 characters but only got "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " before EOF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_6
    if-ge v1, v7, :cond_8

    iget-boolean v8, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-eqz v8, :cond_7

    goto :goto_3

    .line 259
    :cond_7
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const-string v6, " before padding character (=)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_8
    :goto_3
    if-nez v1, :cond_9

    .line 267
    sub-int v3, p2, v0

    return v3

    .line 268
    :cond_9
    const/4 v8, 0x0

    .line 275
    .restart local v8    # "atEOF":Z
    :goto_4
    add-int/lit8 v9, v1, -0x1

    .line 276
    .local v9, "size":I
    if-nez v9, :cond_a

    .line 277
    const/4 v9, 0x1

    .line 280
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 281
    shl-int/lit8 v2, v2, 0x6

    .line 283
    nop

    :goto_5
    if-lt v1, v3, :cond_c

    .line 309
    shr-int/lit8 v2, v2, 0x8

    .line 310
    if-ne v9, v7, :cond_b

    .line 311
    add-int/lit8 v3, p2, 0x1

    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 312
    :cond_b
    shr-int/lit8 v2, v2, 0x8

    .line 313
    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 315
    add-int/2addr p2, v9

    .line 316
    sub-int v3, p2, v0

    return v3

    .line 284
    :cond_c
    if-nez v8, :cond_10

    .line 287
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v4

    .line 288
    if-ne v4, v6, :cond_e

    .line 289
    iget-boolean v10, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-eqz v10, :cond_d

    goto :goto_6

    .line 290
    :cond_d
    new-instance v3, Ljava/io/IOException;

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in encoded stream: hit EOF while looking for padding characters (=)"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 290
    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 295
    :cond_e
    if-eq v4, v5, :cond_10

    .line 296
    iget-boolean v10, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-eqz v10, :cond_f

    goto :goto_6

    .line 297
    :cond_f
    new-instance v3, Ljava/io/IOException;

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in encoded stream: found valid base64 character after a padding character (=)"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 297
    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    :cond_10
    :goto_6
    shl-int/lit8 v2, v2, 0x6

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static decode([B)[B
    .locals 11
    .param p0, "inbuf"    # [B

    .line 409
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 410
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 411
    return-object p0

    .line 413
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, p0, v1

    const/4 v3, 0x2

    const/16 v4, 0x3d

    if-ne v1, v4, :cond_1

    .line 414
    add-int/lit8 v0, v0, -0x1

    .line 415
    array-length v1, p0

    sub-int/2addr v1, v3

    aget-byte v1, p0, v1

    if-ne v1, v4, :cond_1

    .line 416
    add-int/lit8 v0, v0, -0x1

    .line 418
    :cond_1
    new-array v1, v0, [B

    .line 420
    .local v1, "outbuf":[B
    const/4 v5, 0x0

    .local v5, "inpos":I
    const/4 v6, 0x0

    .line 421
    .local v6, "outpos":I
    array-length v0, p0

    .line 422
    nop

    :goto_0
    if-gtz v0, :cond_2

    .line 448
    return-object v1

    .line 424
    :cond_2
    const/4 v7, 0x3

    .line 425
    .local v7, "osize":I
    sget-object v8, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "inpos":I
    .local v9, "inpos":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v8, v5

    .line 426
    .local v5, "val":I
    shl-int/lit8 v5, v5, 0x6

    .line 427
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "inpos":I
    .local v10, "inpos":I
    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v8, v9

    or-int/2addr v5, v9

    .line 428
    shl-int/lit8 v5, v5, 0x6

    .line 429
    aget-byte v9, p0, v10

    if-eq v9, v4, :cond_3

    .line 430
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "inpos":I
    .restart local v9    # "inpos":I
    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v8, v8, v10

    or-int/2addr v5, v8

    move v10, v9

    goto :goto_1

    .line 432
    .end local v9    # "inpos":I
    .restart local v10    # "inpos":I
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 433
    :goto_1
    shl-int/lit8 v5, v5, 0x6

    .line 434
    aget-byte v8, p0, v10

    if-eq v8, v4, :cond_4

    .line 435
    sget-object v8, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "inpos":I
    .restart local v9    # "inpos":I
    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v8, v8, v10

    or-int/2addr v5, v8

    goto :goto_2

    .line 437
    .end local v9    # "inpos":I
    .restart local v10    # "inpos":I
    :cond_4
    add-int/lit8 v7, v7, -0x1

    move v9, v10

    .line 438
    .end local v10    # "inpos":I
    .restart local v9    # "inpos":I
    :goto_2
    if-le v7, v3, :cond_5

    .line 439
    add-int/lit8 v8, v6, 0x2

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    .line 440
    :cond_5
    shr-int/lit8 v5, v5, 0x8

    .line 441
    if-le v7, v2, :cond_6

    .line 442
    add-int/lit8 v8, v6, 0x1

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    .line 443
    :cond_6
    shr-int/lit8 v5, v5, 0x8

    .line 444
    and-int/lit16 v8, v5, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v6

    .line 445
    add-int/2addr v6, v7

    .line 446
    add-int/lit8 v0, v0, -0x4

    move v5, v9

    goto :goto_0
.end method

.method private getByte()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    :goto_0
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    if-gtz v0, :cond_0

    .line 355
    return v2

    .line 356
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "ex":Ljava/io/EOFException;
    return v2

    .line 359
    .end local v0    # "ex":Ljava/io/EOFException;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 361
    .local v0, "c":I
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_2

    .line 362
    const/4 v1, -0x2

    return v1

    .line 364
    :cond_2
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    aget-byte v0, v1, v0

    .line 366
    if-eq v0, v2, :cond_3

    .line 367
    return v0

    .line 366
    :cond_3
    goto :goto_0
.end method

.method private recentChars()Ljava/lang/String;
    .locals 7

    .line 376
    const-string v0, ""

    .line 377
    .local v0, "errstr":Ljava/lang/String;
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    move v1, v2

    .line 378
    .local v1, "nc":I
    :cond_0
    if-lez v1, :cond_6

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    const-string v4, " most recent characters were: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    sub-int/2addr v3, v1

    .local v3, "k":I
    :goto_0
    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    if-lt v3, v4, :cond_1

    .line 394
    .end local v3    # "k":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 382
    .restart local v3    # "k":I
    :cond_1
    iget-object v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 383
    .local v4, "c":C
    const/16 v5, 0x9

    if-eq v4, v5, :cond_5

    if-eq v4, v2, :cond_4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3

    .line 388
    const/16 v5, 0x20

    if-lt v4, v5, :cond_2

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_2

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 391
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 384
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\\r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 385
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 386
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    .end local v4    # "c":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 396
    .end local v3    # "k":I
    :cond_6
    :goto_2
    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-lt v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 115
    if-gtz v0, :cond_0

    .line 116
    const/4 v0, -0x1

    return v0

    .line 117
    :cond_0
    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    move v0, p2

    .line 139
    .local v0, "off0":I
    nop

    :goto_0
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-ge v1, v2, :cond_1

    if-gtz p3, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    iget-object v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v1, v3, v1

    aput-byte v1, p1, p2

    .line 141
    add-int/lit8 p3, p3, -0x1

    move p2, v2

    goto :goto_0

    .line 143
    .end local v2    # "off":I
    .restart local p2    # "off":I
    :cond_1
    :goto_1
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-lt v1, v2, :cond_2

    .line 144
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 146
    :cond_2
    div-int/lit8 v1, p3, 0x3

    mul-int/lit8 v1, v1, 0x3

    .line 147
    .local v1, "bsize":I
    const/4 v2, -0x1

    if-lez v1, :cond_4

    .line 148
    invoke-direct {p0, p1, p2, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v3

    .line 149
    .local v3, "size":I
    add-int/2addr p2, v3

    .line 150
    sub-int/2addr p3, v3

    .line 152
    if-eq v3, v1, :cond_4

    .line 153
    if-ne p2, v0, :cond_3

    .line 154
    return v2

    .line 156
    :cond_3
    sub-int v2, p2, v0

    return v2

    .line 161
    .end local v3    # "size":I
    :cond_4
    :goto_2
    if-gtz p3, :cond_5

    goto :goto_3

    .line 162
    :cond_5
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->read()I

    move-result v3

    .line 163
    .local v3, "c":I
    if-ne v3, v2, :cond_7

    .line 164
    nop

    .line 168
    .end local v3    # "c":I
    :goto_3
    if-ne p2, v0, :cond_6

    .line 169
    return v2

    .line 171
    :cond_6
    sub-int v2, p2, v0

    return v2

    .line 165
    .restart local v3    # "c":I
    :cond_7
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "off":I
    .local v4, "off":I
    int-to-byte v5, v3

    aput-byte v5, p1, p2

    .line 161
    .end local v3    # "c":I
    add-int/lit8 p3, p3, -0x1

    move p2, v4

    goto :goto_2
.end method
