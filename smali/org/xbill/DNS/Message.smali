.class public Lorg/xbill/DNS/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MAXLENGTH:I = 0xffff

.field static final TSIG_FAILED:I = 0x4

.field static final TSIG_INTERMEDIATE:I = 0x2

.field static final TSIG_SIGNED:I = 0x3

.field static final TSIG_UNSIGNED:I = 0x0

.field static final TSIG_VERIFIED:I = 0x1

.field private static emptyRRsetArray:[Lorg/xbill/DNS/RRset;

.field private static emptyRecordArray:[Lorg/xbill/DNS/Record;


# instance fields
.field private header:Lorg/xbill/DNS/Header;

.field private querytsig:Lorg/xbill/DNS/TSIGRecord;

.field private sections:[Ljava/util/List;

.field sig0start:I

.field private size:I

.field tsigState:I

.field private tsigerror:I

.field private tsigkey:Lorg/xbill/DNS/TSIG;

.field tsigstart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/xbill/DNS/Record;

    sput-object v1, Lorg/xbill/DNS/Message;->emptyRecordArray:[Lorg/xbill/DNS/Record;

    .line 55
    new-array v0, v0, [Lorg/xbill/DNS/RRset;

    sput-object v0, Lorg/xbill/DNS/Message;->emptyRRsetArray:[Lorg/xbill/DNS/RRset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0}, Lorg/xbill/DNS/Header;-><init>()V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 66
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Header;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 146
    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .locals 9
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Header;-><init>(Lorg/xbill/DNS/DNSInput;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    .line 101
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, "isUpdate":Z
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v1

    .line 104
    .local v1, "truncated":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_6

    .line 105
    :try_start_0
    iget-object v3, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v3

    .line 106
    .local v3, "count":I
    if-lez v3, :cond_1

    .line 107
    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v5, v4, v2

    .line 108
    :cond_1
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v3, :cond_4

    .line 109
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v5

    .line 110
    .local v5, "pos":I
    invoke-static {p1, v2, v0}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v6

    .line 111
    .local v6, "rec":Lorg/xbill/DNS/Record;
    iget-object v7, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v7, v7, v2

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 v7, 0x3

    if-ne v2, v7, :cond_3

    .line 113
    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getType()I

    move-result v7

    const/16 v8, 0xfa

    if-ne v7, v8, :cond_2

    .line 114
    iput v5, p0, Lorg/xbill/DNS/Message;->tsigstart:I

    .line 115
    :cond_2
    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getType()I

    move-result v7

    const/16 v8, 0x18

    if-ne v7, v8, :cond_3

    .line 116
    move-object v7, v6

    check-cast v7, Lorg/xbill/DNS/SIGRecord;

    .line 117
    .local v7, "sig":Lorg/xbill/DNS/SIGRecord;
    invoke-virtual {v7}, Lorg/xbill/DNS/SIGRecord;->getTypeCovered()I

    move-result v8

    if-nez v8, :cond_3

    .line 118
    iput v5, p0, Lorg/xbill/DNS/Message;->sig0start:I
    :try_end_0
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v5    # "pos":I
    .end local v6    # "rec":Lorg/xbill/DNS/Record;
    .end local v7    # "sig":Lorg/xbill/DNS/SIGRecord;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 104
    .end local v3    # "count":I
    .end local v4    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    .end local v2    # "i":I
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Lorg/xbill/DNS/WireParseException;
    if-eqz v1, :cond_5

    goto :goto_3

    .line 125
    :cond_5
    throw v2

    .line 126
    .end local v2    # "e":Lorg/xbill/DNS/WireParseException;
    :cond_6
    nop

    .line 127
    :goto_3
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/Message;->size:I

    .line 128
    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/xbill/DNS/Header;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 60
    iput-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 61
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 137
    return-void
.end method

.method public static newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;
    .locals 4
    .param p0, "r"    # Lorg/xbill/DNS/Record;

    .line 82
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    .line 83
    .local v0, "m":Lorg/xbill/DNS/Message;
    iget-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 84
    iget-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 85
    invoke-virtual {v0, p0, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 86
    return-object v0
.end method

.method public static newUpdate(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Message;
    .locals 1
    .param p0, "zone"    # Lorg/xbill/DNS/Name;

    .line 96
    new-instance v0, Lorg/xbill/DNS/Update;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Update;-><init>(Lorg/xbill/DNS/Name;)V

    return-object v0
.end method

.method private static sameSet(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Record;)Z
    .locals 2
    .param p0, "r1"    # Lorg/xbill/DNS/Record;
    .param p1, "r2"    # Lorg/xbill/DNS/Record;

    .line 353
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 354
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 353
    :goto_0
    return v0
.end method

.method private sectionToWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;I)I
    .locals 8
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "section"    # I
    .param p3, "c"    # Lorg/xbill/DNS/Compression;
    .param p4, "maxLength"    # I

    .line 415
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 416
    .local v0, "n":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    .line 417
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 418
    .local v2, "rendered":I
    const/4 v3, 0x0

    .line 419
    .local v3, "skipped":I
    const/4 v4, 0x0

    .line 421
    .local v4, "lastrec":Lorg/xbill/DNS/Record;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 422
    iget-object v6, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v6, v6, p2

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xbill/DNS/Record;

    .line 423
    .local v6, "rec":Lorg/xbill/DNS/Record;
    const/4 v7, 0x3

    if-ne p2, v7, :cond_0

    instance-of v7, v6, Lorg/xbill/DNS/OPTRecord;

    if-eqz v7, :cond_0

    .line 424
    add-int/lit8 v3, v3, 0x1

    .line 425
    goto :goto_1

    .line 428
    :cond_0
    if-eqz v4, :cond_1

    invoke-static {v6, v4}, Lorg/xbill/DNS/Message;->sameSet(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Record;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 429
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    .line 430
    move v2, v5

    .line 432
    :cond_1
    move-object v4, v6

    .line 433
    invoke-virtual {v6, p1, p2, p3}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 434
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v7

    if-le v7, p4, :cond_2

    .line 435
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 436
    sub-int v7, v0, v2

    add-int/2addr v7, v3

    return v7

    .line 421
    .end local v6    # "rec":Lorg/xbill/DNS/Record;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 439
    .end local v5    # "i":I
    :cond_3
    return v3
.end method

.method private toWire(Lorg/xbill/DNS/DNSOutput;I)Z
    .locals 18
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "maxLength"    # I

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/16 v3, 0xc

    move/from16 v4, p2

    if-ge v4, v3, :cond_0

    .line 446
    return v2

    .line 448
    :cond_0
    const/4 v3, 0x0

    .line 450
    .local v3, "newheader":Lorg/xbill/DNS/Header;
    move/from16 v5, p2

    .line 451
    .local v5, "tempMaxLength":I
    iget-object v6, v0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    if-eqz v6, :cond_1

    .line 452
    invoke-virtual {v6}, Lorg/xbill/DNS/TSIG;->recordLength()I

    move-result v6

    sub-int/2addr v5, v6

    .line 454
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v6

    .line 455
    .local v6, "opt":Lorg/xbill/DNS/OPTRecord;
    const/4 v7, 0x0

    .line 456
    .local v7, "optBytes":[B
    const/4 v8, 0x3

    if-eqz v6, :cond_2

    .line 457
    invoke-virtual {v6, v8}, Lorg/xbill/DNS/OPTRecord;->toWire(I)[B

    move-result-object v7

    .line 458
    array-length v9, v7

    sub-int/2addr v5, v9

    .line 461
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v9

    .line 462
    .local v9, "startpos":I
    iget-object v10, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v10, v1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 463
    new-instance v10, Lorg/xbill/DNS/Compression;

    invoke-direct {v10}, Lorg/xbill/DNS/Compression;-><init>()V

    .line 464
    .local v10, "c":Lorg/xbill/DNS/Compression;
    iget-object v11, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v11}, Lorg/xbill/DNS/Header;->getFlagsByte()I

    move-result v11

    .line 465
    .local v11, "flags":I
    const/4 v12, 0x0

    .line 466
    .local v12, "additionalCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/4 v14, 0x4

    const/4 v15, 0x1

    if-ge v13, v14, :cond_7

    .line 468
    iget-object v14, v0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v14, v14, v13

    if-nez v14, :cond_3

    .line 469
    move v8, v2

    goto :goto_2

    .line 470
    :cond_3
    invoke-direct {v0, v1, v13, v10, v5}, Lorg/xbill/DNS/Message;->sectionToWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;I)I

    move-result v14

    .line 471
    .local v14, "skipped":I
    if-eqz v14, :cond_5

    if-eq v13, v8, :cond_5

    .line 472
    const/4 v2, 0x6

    invoke-static {v11, v2, v15}, Lorg/xbill/DNS/Header;->setFlag(IIZ)I

    move-result v11

    .line 473
    iget-object v2, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v13}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    sub-int/2addr v2, v14

    add-int/lit8 v16, v9, 0x4

    mul-int/lit8 v17, v13, 0x2

    add-int v15, v16, v17

    invoke-virtual {v1, v2, v15}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    .line 475
    add-int/lit8 v2, v13, 0x1

    .local v2, "j":I
    :goto_1
    if-ge v2, v8, :cond_4

    .line 476
    add-int/lit8 v15, v9, 0x4

    mul-int/lit8 v16, v2, 0x2

    add-int v15, v15, v16

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v15}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    .line 475
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x3

    goto :goto_1

    .line 477
    .end local v2    # "j":I
    :cond_4
    goto :goto_3

    .line 471
    :cond_5
    move v8, v2

    .line 479
    const/4 v2, 0x3

    if-ne v13, v2, :cond_6

    .line 480
    iget-object v2, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v13}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    sub-int/2addr v2, v14

    move v12, v2

    .line 466
    .end local v14    # "skipped":I
    :cond_6
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move v2, v8

    const/4 v8, 0x3

    goto :goto_0

    .line 483
    .end local v13    # "i":I
    :cond_7
    :goto_3
    if-eqz v7, :cond_8

    .line 484
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 485
    add-int/lit8 v12, v12, 0x1

    .line 488
    :cond_8
    iget-object v2, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getFlagsByte()I

    move-result v2

    if-eq v11, v2, :cond_9

    .line 489
    add-int/lit8 v2, v9, 0x2

    invoke-virtual {v1, v11, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    .line 491
    :cond_9
    iget-object v2, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    if-eq v12, v2, :cond_a

    .line 492
    add-int/lit8 v2, v9, 0xa

    invoke-virtual {v1, v12, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    .line 494
    :cond_a
    iget-object v2, v0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    if-eqz v2, :cond_b

    .line 495
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v8

    iget v13, v0, Lorg/xbill/DNS/Message;->tsigerror:I

    iget-object v14, v0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    invoke-virtual {v2, v0, v8, v13, v14}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v2

    .line 498
    .local v2, "tsigrec":Lorg/xbill/DNS/TSIGRecord;
    const/4 v8, 0x3

    invoke-virtual {v2, v1, v8, v10}, Lorg/xbill/DNS/TSIGRecord;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 499
    add-int/lit8 v8, v12, 0x1

    add-int/lit8 v13, v9, 0xa

    invoke-virtual {v1, v8, v13}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    .line 502
    .end local v2    # "tsigrec":Lorg/xbill/DNS/TSIGRecord;
    :cond_b
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public addRecord(Lorg/xbill/DNS/Record;I)V
    .locals 2
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .param p2, "section"    # I

    .line 173
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v0, p2

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    aput-object v1, v0, p2

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 176
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 624
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    .line 625
    .local v0, "m":Lorg/xbill/DNS/Message;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 626
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 627
    iget-object v2, v0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v1

    .line 625
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Header;

    iput-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 630
    iget v1, p0, Lorg/xbill/DNS/Message;->size:I

    iput v1, v0, Lorg/xbill/DNS/Message;->size:I

    .line 631
    return-object v0
.end method

.method public findRRset(Lorg/xbill/DNS/Name;I)Z
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .line 254
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 255
    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 256
    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 254
    :goto_1
    return v0
.end method

.method public findRRset(Lorg/xbill/DNS/Name;II)Z
    .locals 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "section"    # I

    .line 236
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 237
    return v1

    .line 238
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, p3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 239
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 240
    .local v2, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    const/4 v1, 0x1

    return v1

    .line 238
    .end local v2    # "r":Lorg/xbill/DNS/Record;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public findRecord(Lorg/xbill/DNS/Record;)Z
    .locals 3
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .line 222
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 223
    iget-object v1, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const/4 v1, 0x1

    return v1

    .line 222
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public findRecord(Lorg/xbill/DNS/Record;I)Z
    .locals 2
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .param p2, "section"    # I

    .line 212
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v0, p2

    if-eqz v1, :cond_0

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeader()Lorg/xbill/DNS/Header;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    return-object v0
.end method

.method public getOPT()Lorg/xbill/DNS/OPTRecord;
    .locals 3

    .line 317
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 318
    .local v0, "additional":[Lorg/xbill/DNS/Record;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 319
    aget-object v2, v0, v1

    instance-of v2, v2, Lorg/xbill/DNS/OPTRecord;

    if-eqz v2, :cond_0

    .line 320
    aget-object v2, v0, v1

    check-cast v2, Lorg/xbill/DNS/OPTRecord;

    return-object v2

    .line 318
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getQuestion()Lorg/xbill/DNS/Record;
    .locals 3

    .line 266
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 267
    .local v0, "l":Ljava/util/List;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    return-object v1

    .line 268
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRcode()I
    .locals 3

    .line 330
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v0

    .line 331
    .local v0, "rcode":I
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v1

    .line 332
    .local v1, "opt":Lorg/xbill/DNS/OPTRecord;
    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {v1}, Lorg/xbill/DNS/OPTRecord;->getExtendedRcode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 334
    :cond_0
    return v0
.end method

.method public getSectionArray(I)[Lorg/xbill/DNS/Record;
    .locals 2
    .param p1, "section"    # I

    .line 345
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 346
    sget-object v0, Lorg/xbill/DNS/Message;->emptyRecordArray:[Lorg/xbill/DNS/Record;

    return-object v0

    .line 347
    :cond_0
    aget-object v0, v0, p1

    .line 348
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Record;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/xbill/DNS/Record;

    check-cast v1, [Lorg/xbill/DNS/Record;

    return-object v1
.end method

.method public getSectionRRsets(I)[Lorg/xbill/DNS/RRset;
    .locals 10
    .param p1, "section"    # I

    .line 366
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 367
    sget-object v0, Lorg/xbill/DNS/Message;->emptyRRsetArray:[Lorg/xbill/DNS/RRset;

    return-object v0

    .line 368
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 369
    .local v0, "sets":Ljava/util/List;
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 370
    .local v1, "recs":[Lorg/xbill/DNS/Record;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 371
    .local v2, "hash":Ljava/util/Set;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 372
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 373
    .local v4, "name":Lorg/xbill/DNS/Name;
    const/4 v5, 0x1

    .line 374
    .local v5, "newset":Z
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 375
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_1
    if-ltz v6, :cond_2

    .line 376
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xbill/DNS/RRset;

    .line 377
    .local v7, "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v7}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v8

    aget-object v9, v1, v3

    invoke-virtual {v9}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 378
    invoke-virtual {v7}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v8

    aget-object v9, v1, v3

    invoke-virtual {v9}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 379
    invoke-virtual {v7}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 381
    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 382
    const/4 v5, 0x0

    .line 383
    goto :goto_2

    .line 375
    .end local v7    # "set":Lorg/xbill/DNS/RRset;
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 387
    .end local v6    # "j":I
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 388
    new-instance v6, Lorg/xbill/DNS/RRset;

    aget-object v7, v1, v3

    invoke-direct {v6, v7}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 389
    .local v6, "set":Lorg/xbill/DNS/RRset;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v4    # "name":Lorg/xbill/DNS/Name;
    .end local v5    # "newset":Z
    .end local v6    # "set":Lorg/xbill/DNS/RRset;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    .end local v3    # "i":I
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/xbill/DNS/RRset;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/xbill/DNS/RRset;

    check-cast v3, [Lorg/xbill/DNS/RRset;

    return-object v3
.end method

.method public getTSIG()Lorg/xbill/DNS/TSIGRecord;
    .locals 6

    .line 280
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    .line 281
    .local v0, "count":I
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 282
    return-object v2

    .line 283
    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v3, v1

    .line 284
    .local v1, "l":Ljava/util/List;
    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Record;

    .line 285
    .local v3, "rec":Lorg/xbill/DNS/Record;
    iget v4, v3, Lorg/xbill/DNS/Record;->type:I

    const/16 v5, 0xfa

    if-eq v4, v5, :cond_1

    .line 286
    return-object v2

    .line 287
    :cond_1
    move-object v2, v3

    check-cast v2, Lorg/xbill/DNS/TSIGRecord;

    return-object v2
.end method

.method public isSigned()Z
    .locals 3

    .line 296
    iget v0, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isVerified()Z
    .locals 2

    .line 307
    iget v0, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public numBytes()I
    .locals 1

    .line 556
    iget v0, p0, Lorg/xbill/DNS/Message;->size:I

    return v0
.end method

.method public removeAllRecords(I)V
    .locals 2
    .param p1, "section"    # I

    .line 201
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 202
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 203
    return-void
.end method

.method public removeRecord(Lorg/xbill/DNS/Record;I)Z
    .locals 2
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .param p2, "section"    # I

    .line 186
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v0, p2

    if-eqz v1, :cond_0

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 188
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sectionToString(I)Ljava/lang/String;
    .locals 6
    .param p1, "i"    # I

    .line 565
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 566
    const/4 v0, 0x0

    return-object v0

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 570
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 571
    .local v1, "records":[Lorg/xbill/DNS/Record;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 572
    aget-object v3, v1, v2

    .line 573
    .local v3, "rec":Lorg/xbill/DNS/Record;
    if-nez p1, :cond_1

    .line 574
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ";;\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v3, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v3, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v5}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ", class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v3, Lorg/xbill/DNS/Record;->dclass:I

    invoke-static {v5}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 579
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 580
    :goto_1
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    .end local v3    # "rec":Lorg/xbill/DNS/Record;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    .end local v2    # "j":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setHeader(Lorg/xbill/DNS/Header;)V
    .locals 0
    .param p1, "h"    # Lorg/xbill/DNS/Header;

    .line 154
    iput-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 155
    return-void
.end method

.method public setTSIG(Lorg/xbill/DNS/TSIG;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 0
    .param p1, "key"    # Lorg/xbill/DNS/TSIG;
    .param p2, "error"    # I
    .param p3, "querytsig"    # Lorg/xbill/DNS/TSIGRecord;

    .line 545
    iput-object p1, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    .line 546
    iput p2, p0, Lorg/xbill/DNS/Message;->tsigerror:I

    .line 547
    iput-object p3, p0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    .line 548
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 590
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 591
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v1

    .line 592
    .local v1, "opt":Lorg/xbill/DNS/OPTRecord;
    const-string v2, "\n"

    if-eqz v1, :cond_0

    .line 593
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Header;->toStringWithRcode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 595
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isSigned()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 597
    const-string v3, ";; TSIG "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 599
    const-string v3, "ok"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 601
    :cond_1
    const-string v3, "invalid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    :goto_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 604
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/4 v4, 0x4

    if-ge v3, v4, :cond_4

    .line 605
    iget-object v4, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v4}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v4

    const/4 v5, 0x5

    const-string v6, ":\n"

    const-string v7, ";; "

    if-eq v4, v5, :cond_3

    .line 606
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Lorg/xbill/DNS/Section;->longString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 608
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Lorg/xbill/DNS/Section;->updString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    :goto_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/Message;->sectionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 611
    .end local v3    # "i":I
    :cond_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ";; Message size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->numBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 4
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;

    .line 398
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 399
    new-instance v0, Lorg/xbill/DNS/Compression;

    invoke-direct {v0}, Lorg/xbill/DNS/Compression;-><init>()V

    .line 400
    .local v0, "c":Lorg/xbill/DNS/Compression;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 401
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 402
    goto :goto_2

    .line 403
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 404
    iget-object v3, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Record;

    .line 405
    .local v3, "rec":Lorg/xbill/DNS/Record;
    invoke-virtual {v3, p1, v1, v0}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 403
    .end local v3    # "rec":Lorg/xbill/DNS/Record;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 400
    .end local v2    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public toWire()[B
    .locals 2

    .line 510
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 511
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 512
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Message;->size:I

    .line 513
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toWire(I)[B
    .locals 2
    .param p1, "maxLength"    # I

    .line 531
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 532
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;I)Z

    .line 533
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Message;->size:I

    .line 534
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
