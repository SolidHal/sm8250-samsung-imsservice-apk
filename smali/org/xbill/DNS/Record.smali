.class public abstract Lorg/xbill/DNS/Record;
.super Ljava/lang/Object;
.source "Record.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final byteFormat:Ljava/text/DecimalFormat;

.field private static final serialVersionUID:J = 0x25663ac63c372e5aL


# instance fields
.field protected dclass:I

.field protected name:Lorg/xbill/DNS/Name;

.field protected ttl:J

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    .line 28
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 29
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/Name;IIJ)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 38
    invoke-static {p3}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 39
    invoke-static {p4, p5}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 40
    iput-object p1, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 41
    iput p2, p0, Lorg/xbill/DNS/Record;->type:I

    .line 42
    iput p3, p0, Lorg/xbill/DNS/Record;->dclass:I

    .line 43
    iput-wide p4, p0, Lorg/xbill/DNS/Record;->ttl:J

    .line 44
    return-void

    .line 36
    :cond_0
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0
.end method

.method protected static byteArrayFromString(Ljava/lang/String;)[B
    .locals 14
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 340
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 341
    .local v1, "escaped":Z
    const/4 v2, 0x0

    .line 343
    .local v2, "hasEscapes":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    const/16 v5, 0x5c

    if-ge v3, v4, :cond_1

    .line 344
    aget-byte v4, v0, v3

    if-ne v4, v5, :cond_0

    .line 345
    const/4 v2, 0x1

    .line 346
    goto :goto_1

    .line 343
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    .end local v3    # "i":I
    :cond_1
    :goto_1
    const-string/jumbo v3, "text string too long"

    const/16 v4, 0xff

    if-nez v2, :cond_3

    .line 350
    array-length v5, v0

    if-gt v5, v4, :cond_2

    .line 353
    return-object v0

    .line 351
    :cond_2
    new-instance v4, Lorg/xbill/DNS/TextParseException;

    invoke-direct {v4, v3}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 356
    :cond_3
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 358
    .local v6, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 359
    .local v7, "digits":I
    const/4 v8, 0x0

    .line 360
    .local v8, "intval":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v10, v0

    const-string v11, "bad escape"

    const/4 v12, 0x3

    if-ge v9, v10, :cond_b

    .line 361
    aget-byte v10, v0, v9

    .line 362
    .local v10, "b":B
    if-eqz v1, :cond_9

    .line 363
    const/16 v13, 0x30

    if-lt v10, v13, :cond_6

    const/16 v13, 0x39

    if-gt v10, v13, :cond_6

    if-ge v7, v12, :cond_6

    .line 364
    add-int/lit8 v7, v7, 0x1

    .line 365
    mul-int/lit8 v8, v8, 0xa

    .line 366
    add-int/lit8 v13, v10, -0x30

    add-int/2addr v8, v13

    .line 367
    if-gt v8, v4, :cond_5

    .line 370
    if-ge v7, v12, :cond_4

    .line 371
    goto :goto_4

    .line 372
    :cond_4
    int-to-byte v10, v8

    goto :goto_3

    .line 368
    :cond_5
    new-instance v3, Lorg/xbill/DNS/TextParseException;

    invoke-direct {v3, v11}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    :cond_6
    if-lez v7, :cond_8

    if-lt v7, v12, :cond_7

    goto :goto_3

    .line 375
    :cond_7
    new-instance v3, Lorg/xbill/DNS/TextParseException;

    invoke-direct {v3, v11}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    :cond_8
    :goto_3
    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 377
    const/4 v1, 0x0

    goto :goto_4

    .line 379
    :cond_9
    aget-byte v11, v0, v9

    if-ne v11, v5, :cond_a

    .line 380
    const/4 v1, 0x1

    .line 381
    const/4 v7, 0x0

    .line 382
    const/4 v8, 0x0

    goto :goto_4

    .line 385
    :cond_a
    aget-byte v11, v0, v9

    invoke-virtual {v6, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 360
    .end local v10    # "b":B
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 387
    .end local v9    # "i":I
    :cond_b
    if-lez v7, :cond_d

    if-lt v7, v12, :cond_c

    goto :goto_5

    .line 388
    :cond_c
    new-instance v3, Lorg/xbill/DNS/TextParseException;

    invoke-direct {v3, v11}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    :cond_d
    :goto_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 390
    array-length v5, v0

    if-gt v5, v4, :cond_e

    .line 394
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 391
    :cond_e
    new-instance v4, Lorg/xbill/DNS/TextParseException;

    invoke-direct {v4, v3}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected static byteArrayToString([BZ)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [B
    .param p1, "quote"    # Z

    .line 402
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/16 v1, 0x22

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 405
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 406
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 407
    .local v3, "b":I
    const/16 v4, 0x20

    const/16 v5, 0x5c

    if-lt v3, v4, :cond_4

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_1

    goto :goto_2

    .line 410
    :cond_1
    if-eq v3, v1, :cond_3

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 414
    :cond_2
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 411
    :cond_3
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 412
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 408
    :cond_4
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 409
    sget-object v4, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    .end local v3    # "b":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    .end local v2    # "i":I
    :cond_5
    if-eqz p1, :cond_6

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 418
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static checkByteArrayLength(Ljava/lang/String;[BI)[B
    .locals 3
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "array"    # [B
    .param p2, "maxLength"    # I

    .line 727
    array-length v0, p1

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 731
    array-length v0, p1

    new-array v0, v0, [B

    .line 732
    .local v0, "out":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 733
    return-object v0

    .line 728
    .end local v0    # "out":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\" array must have no more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " elements"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .line 720
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    return-object p1

    .line 721
    :cond_0
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0
.end method

.method static checkU16(Ljava/lang/String;I)I
    .locals 3
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "val"    # I

    .line 700
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 704
    return p1

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " must be an unsigned 16 bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkU32(Ljava/lang/String;J)J
    .locals 3
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "val"    # J

    .line 710
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 714
    return-wide p1

    .line 711
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " must be an unsigned 32 bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkU8(Ljava/lang/String;I)I
    .locals 3
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "val"    # I

    .line 690
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 694
    return p1

    .line 691
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " must be an unsigned 8 bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;
    .locals 7
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "s"    # Ljava/lang/String;
    .param p6, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    new-instance v5, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v5, p5}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;
    .locals 11
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p6, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    move-object/from16 v0, p5

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 453
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 454
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 455
    invoke-static {p3, p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 457
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    .line 458
    .local v1, "t":Lorg/xbill/DNS/Tokenizer$Token;
    iget v2, v1, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    const-string v3, "\\#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v2

    .line 460
    .local v2, "length":I
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->getHex()[B

    move-result-object v3

    .line 461
    .local v3, "data":[B
    if-nez v3, :cond_0

    .line 462
    const/4 v4, 0x0

    new-array v3, v4, [B

    move-object v10, v3

    goto :goto_0

    .line 461
    :cond_0
    move-object v10, v3

    .line 464
    .end local v3    # "data":[B
    .local v10, "data":[B
    :goto_0
    array-length v3, v10

    if-ne v2, v3, :cond_1

    .line 467
    new-instance v9, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v9, v10}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 468
    .local v9, "in":Lorg/xbill/DNS/DNSInput;
    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move v8, v2

    invoke-static/range {v3 .. v9}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;

    move-result-object v3

    return-object v3

    .line 465
    .end local v9    # "in":Lorg/xbill/DNS/DNSInput;
    :cond_1
    const-string v3, "invalid unknown RR encoding: length mismatch"

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 470
    .end local v2    # "length":I
    .end local v10    # "data":[B
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 471
    const/4 v9, 0x1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-static/range {v4 .. v9}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 472
    .local v2, "rec":Lorg/xbill/DNS/Record;
    move-object/from16 v3, p6

    invoke-virtual {v2, v0, v3}, Lorg/xbill/DNS/Record;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 473
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    .line 474
    iget v4, v1, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    iget v4, v1, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v4, :cond_3

    goto :goto_1

    .line 475
    :cond_3
    const-string/jumbo v4, "unexpected tokens at end of record"

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v4

    throw v4

    .line 477
    :cond_4
    :goto_1
    return-object v2

    .line 452
    .end local v1    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .end local v2    # "rec":Lorg/xbill/DNS/Record;
    :cond_5
    move-object/from16 v3, p6

    new-instance v1, Lorg/xbill/DNS/RelativeNameException;

    move-object v2, p0

    invoke-direct {v1, p0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v1
.end method

.method static fromWire(Lorg/xbill/DNS/DNSInput;I)Lorg/xbill/DNS/Record;
    .locals 1
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .param p1, "section"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method static fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;
    .locals 13
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .param p1, "section"    # I
    .param p2, "isUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 184
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v8

    .line 185
    .local v8, "type":I
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v9

    .line 187
    .local v9, "dclass":I
    if-nez p1, :cond_0

    .line 188
    invoke-static {v0, v8, v9}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v1

    return-object v1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v10

    .line 191
    .local v10, "ttl":J
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v12

    .line 192
    .local v12, "length":I
    if-nez v12, :cond_2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 194
    :cond_1
    invoke-static {v0, v8, v9, v10, v11}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v1

    return-object v1

    .line 195
    :cond_2
    move-object v1, v0

    move v2, v8

    move v3, v9

    move-wide v4, v10

    move v6, v12

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 196
    .local v1, "rec":Lorg/xbill/DNS/Record;
    return-object v1
.end method

.method public static fromWire([BI)Lorg/xbill/DNS/Record;
    .locals 2
    .param p0, "b"    # [B
    .param p1, "section"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method private static final getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;
    .locals 2
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "hasData"    # Z

    .line 56
    if-eqz p5, :cond_1

    .line 57
    invoke-static {p1}, Lorg/xbill/DNS/Type;->getProto(I)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 58
    .local v0, "proto":Lorg/xbill/DNS/Record;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .local v1, "rec":Lorg/xbill/DNS/Record;
    goto :goto_0

    .line 61
    .end local v1    # "rec":Lorg/xbill/DNS/Record;
    :cond_0
    new-instance v1, Lorg/xbill/DNS/UNKRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/UNKRecord;-><init>()V

    .restart local v1    # "rec":Lorg/xbill/DNS/Record;
    goto :goto_0

    .line 63
    .end local v0    # "proto":Lorg/xbill/DNS/Record;
    .end local v1    # "rec":Lorg/xbill/DNS/Record;
    :cond_1
    new-instance v0, Lorg/xbill/DNS/EmptyRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/EmptyRecord;-><init>()V

    move-object v1, v0

    .line 64
    .restart local v1    # "rec":Lorg/xbill/DNS/Record;
    :goto_0
    iput-object p0, v1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 65
    iput p1, v1, Lorg/xbill/DNS/Record;->type:I

    .line 66
    iput p2, v1, Lorg/xbill/DNS/Record;->dclass:I

    .line 67
    iput-wide p3, v1, Lorg/xbill/DNS/Record;->ttl:J

    .line 68
    return-object v1
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;
    .locals 2
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I

    .line 172
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;
    .locals 7
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J

    .line 152
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 155
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 156
    invoke-static {p3, p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 158
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0
.end method

.method private static newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;
    .locals 7
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "length"    # I
    .param p6, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 83
    .local v0, "rec":Lorg/xbill/DNS/Record;
    if-eqz p6, :cond_3

    .line 84
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    if-lt v1, p5, :cond_2

    .line 86
    invoke-virtual {p6, p5}, Lorg/xbill/DNS/DNSInput;->setActive(I)V

    .line 88
    invoke-virtual {v0, p6}, Lorg/xbill/DNS/Record;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 90
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    if-gtz v1, :cond_1

    .line 92
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->clearActive()V

    goto :goto_1

    .line 91
    :cond_1
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "invalid record length"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_2
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v2, "truncated record"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;
    .locals 8
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "length"    # I
    .param p6, "data"    # [B

    .line 109
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 112
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 113
    invoke-static {p3, p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 116
    if-eqz p6, :cond_0

    .line 117
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p6}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    goto :goto_0

    .line 119
    .end local v0    # "in":Lorg/xbill/DNS/DNSInput;
    :cond_0
    const/4 v0, 0x0

    .line 121
    .restart local v0    # "in":Lorg/xbill/DNS/DNSInput;
    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, v0

    :try_start_0
    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2

    .line 110
    .end local v0    # "in":Lorg/xbill/DNS/DNSInput;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;
    .locals 7
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "data"    # [B

    .line 139
    array-length v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method private toWireCanonical(Lorg/xbill/DNS/DNSOutput;Z)V
    .locals 3
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "noTTL"    # Z

    .line 239
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 240
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 241
    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 242
    if-eqz p2, :cond_0

    .line 243
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    goto :goto_0

    .line 245
    :cond_0
    iget-wide v0, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 247
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    .line 248
    .local v0, "lengthPosition":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 249
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 250
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 251
    .local v1, "rrlength":I
    invoke-virtual {p1, v1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    .line 252
    return-void
.end method

.method private toWireCanonical(Z)[B
    .locals 2
    .param p1, "noTTL"    # Z

    .line 260
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 261
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Record;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;Z)V

    .line 262
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected static unknownToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .line 426
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 427
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "\\# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 429
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    invoke-static {p0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method cloneRecord()Lorg/xbill/DNS/Record;
    .locals 2

    .line 601
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 651
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 653
    .local v0, "arg":Lorg/xbill/DNS/Record;
    if-ne p0, v0, :cond_0

    .line 654
    const/4 v1, 0x0

    return v1

    .line 656
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v2, v0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 657
    .local v1, "n":I
    if-eqz v1, :cond_1

    .line 658
    return v1

    .line 659
    :cond_1
    iget v2, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v3, v0, Lorg/xbill/DNS/Record;->dclass:I

    sub-int/2addr v2, v3

    .line 660
    .end local v1    # "n":I
    .local v2, "n":I
    if-eqz v2, :cond_2

    .line 661
    return v2

    .line 662
    :cond_2
    iget v1, p0, Lorg/xbill/DNS/Record;->type:I

    iget v3, v0, Lorg/xbill/DNS/Record;->type:I

    sub-int/2addr v1, v3

    .line 663
    .end local v2    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_3

    .line 664
    return v1

    .line 665
    :cond_3
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v2

    .line 666
    .local v2, "rdata1":[B
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v3

    .line 667
    .local v3, "rdata2":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_5

    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 668
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v3, v4

    and-int/lit16 v6, v6, 0xff

    sub-int v1, v5, v6

    .line 669
    if-eqz v1, :cond_4

    .line 670
    return v1

    .line 667
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 672
    .end local v4    # "i":I
    :cond_5
    array-length v4, v2

    array-length v5, v3

    sub-int/2addr v4, v5

    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    .line 576
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lorg/xbill/DNS/Record;

    if-nez v1, :cond_0

    goto :goto_1

    .line 578
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 579
    .local v1, "r":Lorg/xbill/DNS/Record;
    iget v2, p0, Lorg/xbill/DNS/Record;->type:I

    iget v3, v1, Lorg/xbill/DNS/Record;->type:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v3, v1, Lorg/xbill/DNS/Record;->dclass:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v3, v1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 581
    :cond_1
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v0

    .line 582
    .local v0, "array1":[B
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v2

    .line 583
    .local v2, "array2":[B
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    .line 580
    .end local v0    # "array1":[B
    .end local v2    # "array2":[B
    :cond_2
    :goto_0
    return v0

    .line 577
    .end local v1    # "r":Lorg/xbill/DNS/Record;
    :cond_3
    :goto_1
    return v0
.end method

.method public getAdditionalName()Lorg/xbill/DNS/Name;
    .locals 1

    .line 684
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDClass()I
    .locals 1

    .line 539
    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    return v0
.end method

.method public getName()Lorg/xbill/DNS/Name;
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method abstract getObject()Lorg/xbill/DNS/Record;
.end method

.method public getRRsetType()I
    .locals 2

    .line 527
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 528
    move-object v0, p0

    check-cast v0, Lorg/xbill/DNS/RRSIGRecord;

    .line 529
    .local v0, "sig":Lorg/xbill/DNS/RRSIGRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/RRSIGRecord;->getTypeCovered()I

    move-result v1

    return v1

    .line 531
    .end local v0    # "sig":Lorg/xbill/DNS/RRSIGRecord;
    :cond_0
    return v0
.end method

.method public getTTL()J
    .locals 2

    .line 547
    iget-wide v0, p0, Lorg/xbill/DNS/Record;->ttl:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 513
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 591
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Record;->toWireCanonical(Z)[B

    move-result-object v0

    .line 592
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 593
    .local v1, "code":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 594
    shl-int/lit8 v3, v1, 0x3

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method abstract rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public rdataToString()Ljava/lang/String;
    .locals 1

    .line 295
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rrToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rdataToWireCanonical()[B
    .locals 3

    .line 280
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 281
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 282
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method abstract rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract rrToString()Ljava/lang/String;
.end method

.method abstract rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
.end method

.method public sameRRset(Lorg/xbill/DNS/Record;)Z
    .locals 2
    .param p1, "rec"    # Lorg/xbill/DNS/Record;

    .line 563
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v1, p1, Lorg/xbill/DNS/Record;->dclass:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v1, p1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 565
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 563
    :goto_0
    return v0
.end method

.method setTTL(J)V
    .locals 0
    .param p1, "ttl"    # J

    .line 636
    iput-wide p1, p0, Lorg/xbill/DNS/Record;->ttl:J

    .line 637
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 303
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const-string v2, "\t"

    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v3, 0x10

    if-ge v1, v3, :cond_1

    .line 308
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v1, "BINDTTL"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    iget-wide v3, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-static {v3, v4}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 313
    :cond_2
    iget-wide v3, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 314
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    iget v1, p0, Lorg/xbill/DNS/Record;->dclass:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const-string v1, "noPrintIN"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 316
    :cond_3
    iget v1, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    :cond_4
    iget v1, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rrToString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "rdata":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V
    .locals 2
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "section"    # I
    .param p3, "c"    # Lorg/xbill/DNS/Compression;

    .line 214
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 215
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 216
    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 217
    if-nez p2, :cond_0

    .line 218
    return-void

    .line 219
    :cond_0
    iget-wide v0, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 220
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    .line 221
    .local v0, "lengthPosition":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 222
    invoke-virtual {p0, p1, p3, v1}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 223
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 224
    .local v1, "rrlength":I
    invoke-virtual {p1, v1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    .line 225
    return-void
.end method

.method public toWire(I)[B
    .locals 2
    .param p1, "section"    # I

    .line 232
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 233
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 234
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toWireCanonical()[B
    .locals 1

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Record;->toWireCanonical(Z)[B

    move-result-object v0

    return-object v0
.end method

.method withDClass(IJ)Lorg/xbill/DNS/Record;
    .locals 1
    .param p1, "dclass"    # I
    .param p2, "ttl"    # J

    .line 627
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 628
    .local v0, "rec":Lorg/xbill/DNS/Record;
    iput p1, v0, Lorg/xbill/DNS/Record;->dclass:I

    .line 629
    iput-wide p2, v0, Lorg/xbill/DNS/Record;->ttl:J

    .line 630
    return-object v0
.end method

.method public withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .line 614
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 617
    .local v0, "rec":Lorg/xbill/DNS/Record;
    iput-object p1, v0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 618
    return-object v0

    .line 615
    .end local v0    # "rec":Lorg/xbill/DNS/Record;
    :cond_0
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0
.end method
