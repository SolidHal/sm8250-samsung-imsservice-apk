.class public Lcom/sec/internal/ims/config/util/SHA1;
.super Ljava/lang/Object;
.source "SHA1.java"


# instance fields
.field protected H0:I

.field protected H1:I

.field protected H2:I

.field protected H3:I

.field protected H4:I

.field private currentLen:J

.field private currentPos:I

.field private final w:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    .line 11
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/util/SHA1;->reset()V

    .line 12
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .param p0, "args"    # [Ljava/lang/String;

    .line 580
    new-instance v0, Lcom/sec/internal/ims/config/util/SHA1;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/util/SHA1;-><init>()V

    .line 582
    .local v0, "sha":Lcom/sec/internal/ims/config/util/SHA1;
    const/16 v1, 0x14

    new-array v2, v1, [B

    .line 583
    .local v2, "dig1":[B
    new-array v3, v1, [B

    .line 584
    .local v3, "dig2":[B
    new-array v1, v1, [B

    .line 595
    .local v1, "dig3":[B
    const-string v4, "abc"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/config/util/SHA1;->update([B)V

    .line 596
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/util/SHA1;->digest([B)V

    .line 598
    nop

    .line 599
    const-string v4, "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 598
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/config/util/SHA1;->update([B)V

    .line 600
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/config/util/SHA1;->digest([B)V

    .line 602
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const v5, 0xf4240

    if-ge v4, v5, :cond_0

    .line 603
    const/16 v5, 0x61

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/config/util/SHA1;->update(B)V

    .line 602
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 604
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/util/SHA1;->digest([B)V

    .line 606
    invoke-static {v2}, Lcom/sec/internal/ims/config/util/SHA1;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, "dig1_res":Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/internal/ims/config/util/SHA1;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, "dig2_res":Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/internal/ims/config/util/SHA1;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 610
    .local v6, "dig3_res":Ljava/lang/String;
    const-string v7, "A9993E364706816ABA3E25717850C26C9CD0D89D"

    .line 611
    .local v7, "dig1_ref":Ljava/lang/String;
    const-string v8, "84983E441C3BD26EBAAE4AA1F95129E5E54670F1"

    .line 612
    .local v8, "dig2_ref":Ljava/lang/String;
    const-string v9, "34AA973CD4C4DAA4F61EEB2BDBAD27316534016F"

    .line 614
    .local v9, "dig3_ref":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 615
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "SHA-1 Test 1 OK."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 617
    :cond_1
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "SHA-1 Test 1 FAILED."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 619
    :goto_1
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 620
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "SHA-1 Test 2 OK."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 622
    :cond_2
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "SHA-1 Test 2 FAILED."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 624
    :goto_2
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "SHA-1 Test 3 OK."

    const-string v12, "SHA-1 Test 3 FAILED."

    if-eqz v10, :cond_3

    .line 625
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 627
    :cond_3
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 629
    :goto_3
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 630
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 632
    :cond_4
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 633
    :goto_4
    return-void
.end method

.method private final perform()V
    .locals 10

    .line 191
    const/16 v0, 0x10

    .local v0, "t":I
    :goto_0
    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    add-int/lit8 v2, v0, -0x3

    aget v2, v1, v2

    add-int/lit8 v3, v0, -0x8

    aget v3, v1, v3

    xor-int/2addr v2, v3

    add-int/lit8 v3, v0, -0xe

    aget v3, v1, v3

    xor-int/2addr v2, v3

    add-int/lit8 v3, v0, -0x10

    aget v3, v1, v3

    xor-int/2addr v2, v3

    .line 194
    .local v2, "x":I
    shl-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, v2, 0x1f

    or-int/2addr v3, v4

    aput v3, v1, v0

    .line 191
    .end local v2    # "x":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "t":I
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H0:I

    .line 198
    .local v0, "A":I
    iget v1, p0, Lcom/sec/internal/ims/config/util/SHA1;->H1:I

    .line 199
    .local v1, "B":I
    iget v2, p0, Lcom/sec/internal/ims/config/util/SHA1;->H2:I

    .line 200
    .local v2, "C":I
    iget v3, p0, Lcom/sec/internal/ims/config/util/SHA1;->H3:I

    .line 201
    .local v3, "D":I
    iget v4, p0, Lcom/sec/internal/ims/config/util/SHA1;->H4:I

    .line 282
    .local v4, "E":I
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    and-int v6, v1, v2

    not-int v7, v1

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    const/4 v7, 0x0

    aget v7, v6, v7

    add-int/2addr v5, v7

    const v7, 0x5a827999

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 284
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 286
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    and-int v8, v0, v1

    not-int v9, v0

    and-int/2addr v9, v2

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/4 v8, 0x1

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 288
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 290
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    and-int v8, v4, v0

    not-int v9, v4

    and-int/2addr v9, v1

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/4 v8, 0x2

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 292
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 294
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    and-int v8, v3, v4

    not-int v9, v3

    and-int/2addr v9, v0

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/4 v8, 0x3

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 296
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 298
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    and-int v8, v2, v3

    not-int v9, v2

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/4 v8, 0x4

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 300
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 302
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v5, v8

    and-int v8, v1, v2

    not-int v9, v1

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/4 v8, 0x5

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 304
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 306
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    and-int v8, v0, v1

    not-int v9, v0

    and-int/2addr v9, v2

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/4 v8, 0x6

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 308
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 310
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    and-int v8, v4, v0

    not-int v9, v4

    and-int/2addr v9, v1

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/4 v8, 0x7

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 312
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 314
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    and-int v8, v3, v4

    not-int v9, v3

    and-int/2addr v9, v0

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x8

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 316
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 318
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    and-int v8, v2, v3

    not-int v9, v2

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x9

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 320
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 322
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v5, v8

    and-int v8, v1, v2

    not-int v9, v1

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0xa

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 324
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 326
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    and-int v8, v0, v1

    not-int v9, v0

    and-int/2addr v9, v2

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0xb

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 328
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 330
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    and-int v8, v4, v0

    not-int v9, v4

    and-int/2addr v9, v1

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0xc

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 332
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 334
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    and-int v8, v3, v4

    not-int v9, v3

    and-int/2addr v9, v0

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0xd

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 336
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 338
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    and-int v8, v2, v3

    not-int v9, v2

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0xe

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 340
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 342
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v5, v8

    and-int v8, v1, v2

    not-int v9, v1

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0xf

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 344
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 346
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    and-int v8, v0, v1

    not-int v9, v0

    and-int/2addr v9, v2

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x10

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 348
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 350
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    and-int v8, v4, v0

    not-int v9, v4

    and-int/2addr v9, v1

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x11

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 352
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 354
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    and-int v8, v3, v4

    not-int v9, v3

    and-int/2addr v9, v0

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x12

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 356
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 358
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    and-int v8, v2, v3

    not-int v9, v2

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x13

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 360
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v7, v2, 0x2

    or-int v2, v5, v7

    .line 362
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v7, v0, 0x1b

    or-int/2addr v5, v7

    xor-int v7, v1, v2

    xor-int/2addr v7, v3

    add-int/2addr v5, v7

    const/16 v7, 0x14

    aget v7, v6, v7

    add-int/2addr v5, v7

    const v7, 0x6ed9eba1

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 363
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 365
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v5, v8

    const/16 v8, 0x15

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 366
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 368
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v5, v8

    const/16 v8, 0x16

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 369
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 371
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v5, v8

    const/16 v8, 0x17

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 372
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 374
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v5, v8

    const/16 v8, 0x18

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 375
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 377
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v5, v8

    const/16 v8, 0x19

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 378
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 380
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v5, v8

    const/16 v8, 0x1a

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 381
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 383
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v5, v8

    const/16 v8, 0x1b

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 384
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 386
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v5, v8

    const/16 v8, 0x1c

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 387
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 389
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v5, v8

    const/16 v8, 0x1d

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 390
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 392
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v5, v8

    const/16 v8, 0x1e

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 393
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 395
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v5, v8

    const/16 v8, 0x1f

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 396
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 398
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v5, v8

    const/16 v8, 0x20

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 399
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 401
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v5, v8

    const/16 v8, 0x21

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 402
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 404
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v5, v8

    const/16 v8, 0x22

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 405
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 407
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v5, v8

    const/16 v8, 0x23

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 408
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 410
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v5, v8

    const/16 v8, 0x24

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 411
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 413
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v5, v8

    const/16 v8, 0x25

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 414
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 416
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v5, v8

    const/16 v8, 0x26

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 417
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 419
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v5, v8

    const/16 v8, 0x27

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 420
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v7, v2, 0x2

    or-int v2, v5, v7

    .line 422
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v7, v0, 0x1b

    or-int/2addr v5, v7

    and-int v7, v1, v2

    and-int v8, v1, v3

    or-int/2addr v7, v8

    and-int v8, v2, v3

    or-int/2addr v7, v8

    add-int/2addr v5, v7

    const/16 v7, 0x28

    aget v7, v6, v7

    add-int/2addr v5, v7

    const v7, -0x70e44324

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 424
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 426
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    and-int v8, v0, v1

    and-int v9, v0, v2

    or-int/2addr v8, v9

    and-int v9, v1, v2

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x29

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 428
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 430
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    and-int v8, v4, v0

    and-int v9, v4, v1

    or-int/2addr v8, v9

    and-int v9, v0, v1

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x2a

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 432
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 434
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    and-int v8, v3, v4

    and-int v9, v3, v0

    or-int/2addr v8, v9

    and-int v9, v4, v0

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x2b

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 436
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 438
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    and-int v8, v2, v3

    and-int v9, v2, v4

    or-int/2addr v8, v9

    and-int v9, v3, v4

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x2c

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 440
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 442
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v5, v8

    and-int v8, v1, v2

    and-int v9, v1, v3

    or-int/2addr v8, v9

    and-int v9, v2, v3

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x2d

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 444
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 446
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    and-int v8, v0, v1

    and-int v9, v0, v2

    or-int/2addr v8, v9

    and-int v9, v1, v2

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x2e

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 448
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 450
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    and-int v8, v4, v0

    and-int v9, v4, v1

    or-int/2addr v8, v9

    and-int v9, v0, v1

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x2f

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 452
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 454
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    and-int v8, v3, v4

    and-int v9, v3, v0

    or-int/2addr v8, v9

    and-int v9, v4, v0

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x30

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 456
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 458
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    and-int v8, v2, v3

    and-int v9, v2, v4

    or-int/2addr v8, v9

    and-int v9, v3, v4

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x31

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 460
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 462
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v5, v8

    and-int v8, v1, v2

    and-int v9, v1, v3

    or-int/2addr v8, v9

    and-int v9, v2, v3

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x32

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 464
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 466
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    and-int v8, v0, v1

    and-int v9, v0, v2

    or-int/2addr v8, v9

    and-int v9, v1, v2

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x33

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 468
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 470
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    and-int v8, v4, v0

    and-int v9, v4, v1

    or-int/2addr v8, v9

    and-int v9, v0, v1

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x34

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 472
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 474
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    and-int v8, v3, v4

    and-int v9, v3, v0

    or-int/2addr v8, v9

    and-int v9, v4, v0

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x35

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 476
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 478
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    and-int v8, v2, v3

    and-int v9, v2, v4

    or-int/2addr v8, v9

    and-int v9, v3, v4

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x36

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 480
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 482
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v5, v8

    add-int/2addr v5, v4

    and-int v8, v1, v2

    and-int v9, v1, v3

    or-int/2addr v8, v9

    and-int v9, v2, v3

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x37

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    .line 484
    .end local v4    # "E":I
    .local v5, "E":I
    shl-int/lit8 v4, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v4, v8

    .line 486
    shl-int/lit8 v4, v5, 0x5

    ushr-int/lit8 v8, v5, 0x1b

    or-int/2addr v4, v8

    and-int v8, v0, v1

    and-int v9, v0, v2

    or-int/2addr v8, v9

    and-int v9, v1, v2

    or-int/2addr v8, v9

    add-int/2addr v4, v8

    const/16 v8, 0x38

    aget v8, v6, v8

    add-int/2addr v4, v8

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    .line 488
    shl-int/lit8 v4, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v4, v8

    .line 490
    shl-int/lit8 v4, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v4, v8

    and-int v8, v5, v0

    and-int v9, v5, v1

    or-int/2addr v8, v9

    and-int v9, v0, v1

    or-int/2addr v8, v9

    add-int/2addr v4, v8

    const/16 v8, 0x39

    aget v8, v6, v8

    add-int/2addr v4, v8

    add-int/2addr v4, v7

    add-int/2addr v2, v4

    .line 492
    shl-int/lit8 v4, v5, 0x1e

    ushr-int/lit8 v8, v5, 0x2

    or-int/2addr v4, v8

    .line 494
    .end local v5    # "E":I
    .restart local v4    # "E":I
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    and-int v8, v3, v4

    and-int v9, v3, v0

    or-int/2addr v8, v9

    and-int v9, v4, v0

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x3a

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 496
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 498
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    and-int v8, v2, v3

    and-int v9, v2, v4

    or-int/2addr v8, v9

    and-int v9, v3, v4

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const/16 v8, 0x3b

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 500
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v7, v2, 0x2

    or-int v2, v5, v7

    .line 502
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v7, v0, 0x1b

    or-int/2addr v5, v7

    xor-int v7, v1, v2

    xor-int/2addr v7, v3

    add-int/2addr v5, v7

    const/16 v7, 0x3c

    aget v7, v6, v7

    add-int/2addr v5, v7

    const v7, -0x359d3e2a    # -3715189.5f

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 503
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 505
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v5, v8

    const/16 v8, 0x3d

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 506
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 508
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v5, v8

    const/16 v8, 0x3e

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 509
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 511
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v5, v8

    const/16 v8, 0x3f

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 512
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 514
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v5, v8

    const/16 v8, 0x40

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 515
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 517
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v5, v8

    const/16 v8, 0x41

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 518
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 520
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v5, v8

    const/16 v8, 0x42

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 521
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 523
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v5, v8

    const/16 v8, 0x43

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 524
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 526
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v5, v8

    const/16 v8, 0x44

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 527
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 529
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v5, v8

    const/16 v8, 0x45

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 530
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 532
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v5, v8

    const/16 v8, 0x46

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 533
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 535
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v5, v8

    const/16 v8, 0x47

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 536
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 538
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v5, v8

    const/16 v8, 0x48

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 539
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 541
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v5, v8

    const/16 v8, 0x49

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 542
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 544
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v5, v8

    const/16 v8, 0x4a

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 545
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 547
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v5, v8

    const/16 v8, 0x4b

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 548
    shl-int/lit8 v5, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v5, v8

    .line 550
    shl-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v5, v8

    const/16 v8, 0x4c

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 551
    shl-int/lit8 v5, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v5, v8

    .line 553
    shl-int/lit8 v5, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v5, v8

    const/16 v8, 0x4d

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 554
    shl-int/lit8 v5, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v5, v8

    .line 556
    shl-int/lit8 v5, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v5, v8

    const/16 v8, 0x4e

    aget v8, v6, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 557
    shl-int/lit8 v5, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v5, v8

    .line 559
    shl-int/lit8 v5, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v5, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v5, v8

    const/16 v8, 0x4f

    aget v6, v6, v8

    add-int/2addr v5, v6

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 560
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v6, v2, 0x2

    or-int v2, v5, v6

    .line 562
    iget v5, p0, Lcom/sec/internal/ims/config/util/SHA1;->H0:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/sec/internal/ims/config/util/SHA1;->H0:I

    .line 563
    iget v5, p0, Lcom/sec/internal/ims/config/util/SHA1;->H1:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/internal/ims/config/util/SHA1;->H1:I

    .line 564
    iget v5, p0, Lcom/sec/internal/ims/config/util/SHA1;->H2:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sec/internal/ims/config/util/SHA1;->H2:I

    .line 565
    iget v5, p0, Lcom/sec/internal/ims/config/util/SHA1;->H3:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sec/internal/ims/config/util/SHA1;->H3:I

    .line 566
    iget v5, p0, Lcom/sec/internal/ims/config/util/SHA1;->H4:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sec/internal/ims/config/util/SHA1;->H4:I

    .line 567
    return-void
.end method

.method private final putInt([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "pos"    # I
    .param p3, "val"    # I

    .line 145
    shr-int/lit8 v0, p3, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 146
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 147
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 148
    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p3

    aput-byte v1, p1, v0

    .line 149
    return-void
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .line 570
    const-string v0, "0123456789ABCDEF"

    .line 571
    .local v0, "hexChar":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 573
    aget-byte v3, p0, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public final digest([B)V
    .locals 1
    .param p1, "out"    # [B

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/util/SHA1;->digest([BI)V

    .line 153
    return-void
.end method

.method public final digest([BI)V
    .locals 8
    .param p1, "out"    # [B
    .param p2, "off"    # I

    .line 157
    iget v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v1, v0, 0x2

    .line 158
    .local v1, "idx":I
    iget-object v2, p0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aget v3, v2, v1

    shl-int/lit8 v3, v3, 0x8

    or-int/lit16 v3, v3, 0x80

    and-int/lit8 v4, v0, 0x3

    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shl-int/2addr v3, v4

    aput v3, v2, v1

    .line 160
    and-int/lit8 v0, v0, -0x4

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 162
    const/16 v3, 0xf

    const/4 v4, 0x0

    const/16 v5, 0x40

    if-ne v0, v5, :cond_0

    .line 163
    iput v4, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 164
    invoke-direct {p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    goto :goto_0

    .line 165
    :cond_0
    const/16 v5, 0x3c

    if-ne v0, v5, :cond_1

    .line 166
    iput v4, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 167
    aput v4, v2, v3

    .line 168
    invoke-direct {p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 175
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v0, v0, 0x2

    .local v0, "i":I
    :goto_1
    const/16 v2, 0xe

    if-ge v0, v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aput v4, v2, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    iget-wide v4, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const/16 v6, 0x20

    shr-long v6, v4, v6

    long-to-int v6, v6

    aput v6, v0, v2

    .line 179
    long-to-int v2, v4

    aput v2, v0, v3

    .line 181
    invoke-direct {p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 183
    iget v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H0:I

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/config/util/SHA1;->putInt([BII)V

    .line 184
    add-int/lit8 v0, p2, 0x4

    iget v2, p0, Lcom/sec/internal/ims/config/util/SHA1;->H1:I

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/internal/ims/config/util/SHA1;->putInt([BII)V

    .line 185
    add-int/lit8 v0, p2, 0x8

    iget v2, p0, Lcom/sec/internal/ims/config/util/SHA1;->H2:I

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/internal/ims/config/util/SHA1;->putInt([BII)V

    .line 186
    add-int/lit8 v0, p2, 0xc

    iget v2, p0, Lcom/sec/internal/ims/config/util/SHA1;->H3:I

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/internal/ims/config/util/SHA1;->putInt([BII)V

    .line 187
    add-int/lit8 v0, p2, 0x10

    iget v2, p0, Lcom/sec/internal/ims/config/util/SHA1;->H4:I

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/internal/ims/config/util/SHA1;->putInt([BII)V

    .line 188
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 15
    const v0, 0x67452301

    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H0:I

    .line 16
    const v0, -0x10325477

    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H1:I

    .line 17
    const v0, -0x67452302

    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H2:I

    .line 18
    const v0, 0x10325476

    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H3:I

    .line 19
    const v0, -0x3c2d1e10

    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H4:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    .line 28
    return-void
.end method

.method public final update(B)V
    .locals 6
    .param p1, "b"    # B

    .line 132
    iget v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v1, v0, 0x2

    .line 133
    .local v1, "idx":I
    iget-object v2, p0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aget v3, v2, v1

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, p1, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 135
    iget-wide v2, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    .line 136
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 138
    const/16 v2, 0x40

    if-ne v0, v2, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 142
    :cond_0
    return-void
.end method

.method public final update([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 31
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/config/util/SHA1;->update([BII)V

    .line 32
    return-void
.end method

.method public final update([BII)V
    .locals 17
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 35
    move-object/from16 v0, p0

    move/from16 v1, p3

    const-wide/16 v2, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-lt v1, v4, :cond_9

    .line 36
    iget v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v10, v9, 0x2

    .line 38
    .local v10, "idx":I
    and-int/lit8 v11, v9, 0x3

    if-eqz v11, :cond_5

    const/4 v12, 0x3

    if-eq v11, v8, :cond_3

    const/4 v13, 0x2

    if-eq v11, v13, :cond_1

    if-eq v11, v12, :cond_0

    move/from16 v13, p2

    goto/16 :goto_0

    .line 75
    :cond_0
    iget-object v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aget v12, v11, v10

    shl-int/2addr v12, v7

    add-int/lit8 v13, p2, 0x1

    .end local p2    # "off":I
    .local v13, "off":I
    aget-byte v14, p1, p2

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v12, v14

    aput v12, v11, v10

    .line 76
    add-int/lit8 v1, v1, -0x1

    .line 77
    .end local p3    # "len":I
    .local v1, "len":I
    add-int/2addr v9, v8

    iput v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 78
    iget-wide v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    add-long/2addr v11, v2

    iput-wide v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    .line 79
    if-ne v9, v6, :cond_6

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 81
    iput v5, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    goto/16 :goto_0

    .line 64
    .end local v1    # "len":I
    .end local v13    # "off":I
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_1
    iget-object v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aget v12, v11, v10

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v14, p2, 0x1

    .end local p2    # "off":I
    .local v14, "off":I
    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v7

    add-int/lit8 v16, v14, 0x1

    .end local v14    # "off":I
    .local v16, "off":I
    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v14, v15

    or-int/2addr v12, v14

    aput v12, v11, v10

    .line 66
    add-int/lit8 v1, v1, -0x2

    .line 67
    .end local p3    # "len":I
    .restart local v1    # "len":I
    add-int/2addr v9, v13

    iput v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 68
    iget-wide v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const-wide/16 v13, 0x10

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    .line 69
    if-ne v9, v6, :cond_2

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 71
    iput v5, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 87
    :cond_2
    move/from16 v13, v16

    goto :goto_0

    .line 52
    .end local v1    # "len":I
    .end local v16    # "off":I
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_3
    iget-object v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aget v13, v11, v10

    shl-int/lit8 v13, v13, 0x18

    add-int/lit8 v14, p2, 0x1

    .end local p2    # "off":I
    .restart local v14    # "off":I
    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v14, 0x1

    .end local v14    # "off":I
    .restart local v16    # "off":I
    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v7

    or-int/2addr v14, v15

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "off":I
    .local v15, "off":I
    aget-byte v8, p1, v16

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v14

    or-int/2addr v8, v13

    aput v8, v11, v10

    .line 55
    add-int/lit8 v1, v1, -0x3

    .line 56
    .end local p3    # "len":I
    .restart local v1    # "len":I
    add-int/2addr v9, v12

    iput v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 57
    iget-wide v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const-wide/16 v13, 0x18

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    .line 58
    if-ne v9, v6, :cond_4

    .line 59
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 60
    iput v5, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 87
    :cond_4
    move v13, v15

    goto :goto_0

    .line 40
    .end local v1    # "len":I
    .end local v15    # "off":I
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_5
    iget-object v8, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    add-int/lit8 v11, p2, 0x1

    .end local p2    # "off":I
    .local v11, "off":I
    aget-byte v12, p1, p2

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "off":I
    .restart local v13    # "off":I
    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "off":I
    .local v12, "off":I
    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v7

    or-int/2addr v11, v13

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "off":I
    .restart local v13    # "off":I
    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v8, v10

    .line 43
    add-int/lit8 v1, v1, -0x4

    .line 44
    .end local p3    # "len":I
    .restart local v1    # "len":I
    add-int/2addr v9, v4

    iput v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 45
    iget-wide v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const-wide/16 v14, 0x20

    add-long/2addr v11, v14

    iput-wide v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    .line 46
    if-ne v9, v6, :cond_6

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 48
    iput v5, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 87
    :cond_6
    :goto_0
    if-lt v1, v7, :cond_a

    .line 88
    iget-object v8, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    iget v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v11, v9, 0x2

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "off":I
    .restart local v12    # "off":I
    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "off":I
    .restart local v14    # "off":I
    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v12, v13

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "off":I
    .restart local v13    # "off":I
    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v7

    or-int/2addr v12, v14

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "off":I
    .restart local v14    # "off":I
    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    aput v12, v8, v11

    .line 91
    add-int/2addr v9, v4

    iput v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 93
    if-ne v9, v6, :cond_7

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 95
    iput v5, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 98
    :cond_7
    iget-object v8, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    iget v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v11, v9, 0x2

    add-int/lit8 v12, v14, 0x1

    .end local v14    # "off":I
    .restart local v12    # "off":I
    aget-byte v13, p1, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "off":I
    .restart local v14    # "off":I
    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v12, v13

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "off":I
    .restart local v13    # "off":I
    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v7

    or-int/2addr v12, v14

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "off":I
    .restart local v14    # "off":I
    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    aput v12, v8, v11

    .line 102
    add-int/2addr v9, v4

    iput v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 104
    if-ne v9, v6, :cond_8

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 106
    iput v5, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 109
    :cond_8
    iget-wide v8, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const-wide/16 v11, 0x40

    add-long/2addr v8, v11

    iput-wide v8, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    .line 110
    add-int/lit8 v1, v1, -0x8

    move v13, v14

    goto :goto_0

    .line 35
    .end local v1    # "len":I
    .end local v10    # "idx":I
    .end local v14    # "off":I
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_9
    move/from16 v13, p2

    .line 115
    .end local p2    # "off":I
    .end local p3    # "len":I
    .restart local v1    # "len":I
    .restart local v13    # "off":I
    :cond_a
    :goto_1
    if-lez v1, :cond_c

    .line 117
    iget v4, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v8, v4, 0x2

    .line 118
    .local v8, "idx":I
    iget-object v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aget v10, v9, v8

    shl-int/2addr v10, v7

    add-int/lit8 v11, v13, 0x1

    .end local v13    # "off":I
    .restart local v11    # "off":I
    aget-byte v12, p1, v13

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v10, v12

    aput v10, v9, v8

    .line 120
    iget-wide v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    add-long/2addr v9, v2

    iput-wide v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    .line 121
    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 123
    if-ne v4, v6, :cond_b

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 125
    iput v5, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 127
    :cond_b
    nop

    .end local v8    # "idx":I
    add-int/lit8 v1, v1, -0x1

    .line 128
    move v13, v11

    goto :goto_1

    .line 129
    .end local v11    # "off":I
    .restart local v13    # "off":I
    :cond_c
    return-void
.end method
