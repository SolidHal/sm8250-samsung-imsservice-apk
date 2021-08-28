.class public Lorg/xbill/DNS/TSIG$StreamVerifier;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/TSIG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamVerifier"
.end annotation


# instance fields
.field private key:Lorg/xbill/DNS/TSIG;

.field private lastTSIG:Lorg/xbill/DNS/TSIGRecord;

.field private lastsigned:I

.field private nresponses:I

.field private verifier:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 1
    .param p1, "tsig"    # Lorg/xbill/DNS/TSIG;
    .param p2, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    .line 560
    invoke-static {p1}, Lorg/xbill/DNS/TSIG;->access$000(Lorg/xbill/DNS/TSIG;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    .line 561
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 562
    iput-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 563
    return-void
.end method


# virtual methods
.method public verify(Lorg/xbill/DNS/Message;[B)I
    .locals 16
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v3

    .line 581
    .local v3, "tsig":Lorg/xbill/DNS/TSIGRecord;
    iget v4, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 583
    if-ne v4, v5, :cond_1

    .line 584
    iget-object v4, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    iget-object v5, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    invoke-virtual {v4, v1, v2, v5}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result v4

    .line 585
    .local v4, "result":I
    if-nez v4, :cond_0

    .line 586
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v5

    .line 587
    .local v5, "signature":[B
    new-instance v6, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v6}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 588
    .local v6, "out":Lorg/xbill/DNS/DNSOutput;
    array-length v7, v5

    invoke-virtual {v6, v7}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 589
    iget-object v7, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    invoke-virtual {v6}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/crypto/Mac;->update([B)V

    .line 590
    iget-object v7, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    invoke-virtual {v7, v5}, Ljavax/crypto/Mac;->update([B)V

    .line 592
    .end local v5    # "signature":[B
    .end local v6    # "out":Lorg/xbill/DNS/DNSOutput;
    :cond_0
    iput-object v3, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 593
    return v4

    .line 596
    .end local v4    # "result":I
    :cond_1
    const/4 v4, 0x3

    if-eqz v3, :cond_2

    .line 597
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 598
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v6

    .line 599
    .local v6, "header":[B
    if-eqz v3, :cond_3

    .line 600
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 601
    :cond_3
    iget-object v4, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    invoke-virtual {v4, v6}, Ljavax/crypto/Mac;->update([B)V

    .line 604
    if-nez v3, :cond_4

    .line 605
    array-length v4, v2

    array-length v7, v6

    sub-int/2addr v4, v7

    .local v4, "len":I
    goto :goto_0

    .line 607
    .end local v4    # "len":I
    :cond_4
    iget v4, v1, Lorg/xbill/DNS/Message;->tsigstart:I

    array-length v7, v6

    sub-int/2addr v4, v7

    .line 608
    .restart local v4    # "len":I
    :goto_0
    iget-object v7, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    array-length v8, v6

    invoke-virtual {v7, v2, v8, v4}, Ljavax/crypto/Mac;->update([BII)V

    .line 610
    const/4 v7, 0x4

    if-eqz v3, :cond_a

    .line 611
    iget v9, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iput v9, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    .line 612
    iput-object v3, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 625
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v9

    iget-object v10, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    invoke-static {v10}, Lorg/xbill/DNS/TSIG;->access$100(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v10, "verbose"

    if-eqz v9, :cond_8

    .line 626
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v9

    iget-object v11, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    invoke-static {v11}, Lorg/xbill/DNS/TSIG;->access$200(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    .line 634
    :cond_5
    new-instance v9, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v9}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 635
    .local v9, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    .line 636
    .local v11, "time":J
    const/16 v13, 0x20

    shr-long v13, v11, v13

    long-to-int v13, v13

    .line 637
    .local v13, "timeHigh":I
    const-wide v14, 0xffffffffL

    and-long/2addr v14, v11

    .line 638
    .local v14, "timeLow":J
    invoke-virtual {v9, v13}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 639
    invoke-virtual {v9, v14, v15}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 640
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v8

    invoke-virtual {v9, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 641
    iget-object v8, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    invoke-virtual {v9}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v8, v5}, Ljavax/crypto/Mac;->update([B)V

    .line 643
    iget-object v5, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v8

    invoke-static {v5, v8}, Lorg/xbill/DNS/TSIG;->access$300(Ljavax/crypto/Mac;[B)Z

    move-result v5

    if-nez v5, :cond_7

    .line 644
    invoke-static {v10}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 645
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "BADSIG failure"

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 646
    :cond_6
    iput v7, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 647
    const/16 v5, 0x10

    return v5

    .line 650
    :cond_7
    iget-object v5, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    invoke-virtual {v5}, Ljavax/crypto/Mac;->reset()V

    .line 651
    new-instance v5, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v5}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 652
    .end local v9    # "out":Lorg/xbill/DNS/DNSOutput;
    .local v5, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v5, v7}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 653
    iget-object v7, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/crypto/Mac;->update([B)V

    .line 654
    iget-object v7, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/crypto/Mac;->update([B)V

    .line 656
    const/4 v7, 0x1

    iput v7, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 657
    const/4 v7, 0x0

    return v7

    .line 628
    .end local v5    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v11    # "time":J
    .end local v13    # "timeHigh":I
    .end local v14    # "timeLow":J
    :cond_8
    :goto_1
    invoke-static {v10}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 629
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "BADKEY failure"

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 630
    :cond_9
    iput v7, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 631
    const/16 v5, 0x11

    return v5

    .line 615
    :cond_a
    iget v5, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iget v8, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    sub-int/2addr v5, v8

    const/16 v8, 0x64

    if-lt v5, v8, :cond_b

    const/4 v5, 0x1

    goto :goto_2

    :cond_b
    const/4 v5, 0x0

    .line 616
    .local v5, "required":Z
    :goto_2
    if-eqz v5, :cond_c

    .line 617
    iput v7, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 618
    const/4 v7, 0x1

    return v7

    .line 620
    :cond_c
    const/4 v7, 0x2

    iput v7, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 621
    const/4 v7, 0x0

    return v7
.end method
