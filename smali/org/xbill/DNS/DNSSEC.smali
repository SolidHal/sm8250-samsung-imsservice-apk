.class public Lorg/xbill/DNS/DNSSEC;
.super Ljava/lang/Object;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DNSSEC$ECKeyInfo;,
        Lorg/xbill/DNS/DNSSEC$NoSignatureException;,
        Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;,
        Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;,
        Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;,
        Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;,
        Lorg/xbill/DNS/DNSSEC$KeyMismatchException;,
        Lorg/xbill/DNS/DNSSEC$MalformedKeyException;,
        Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;,
        Lorg/xbill/DNS/DNSSEC$DNSSECException;,
        Lorg/xbill/DNS/DNSSEC$Algorithm;
    }
.end annotation


# static fields
.field private static final ASN1_INT:I = 0x2

.field private static final ASN1_SEQ:I = 0x30

.field private static final DSA_LEN:I = 0x14

.field private static final ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

.field private static final ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

.field private static final GOST:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 469
    new-instance v8, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    const/16 v1, 0x20

    const-string v2, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD97"

    const-string v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD94"

    const-string v4, "A6"

    const-string v5, "1"

    const-string v6, "8D91E471E0989CDA27DF505A453F2B7635294F2DDF23E3B122ACC99C9E9F1E14"

    const-string v7, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C611070995AD10045841B09B761B893"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/xbill/DNS/DNSSEC;->GOST:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 478
    new-instance v0, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    const/16 v10, 0x20

    const-string v11, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    const-string v12, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"

    const-string v13, "5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B"

    const-string v14, "6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296"

    const-string v15, "4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    const-string v16, "FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 487
    new-instance v0, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    const/16 v2, 0x30

    const-string v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"

    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    const-string v5, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    const-string v6, "AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7"

    const-string v7, "3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F"

    const-string v8, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BigIntegerLength(Ljava/math/BigInteger;)I
    .locals 1
    .param p0, "i"    # Ljava/math/BigInteger;

    .line 335
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static DSASignaturefromDNS([B)[B
    .locals 10
    .param p0, "dns"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    array-length v0, p0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_4

    .line 696
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 697
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 699
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 701
    .local v2, "t":I
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v4

    .line 702
    .local v4, "r":[B
    const/16 v5, 0x14

    .line 703
    .local v5, "rlen":I
    const/4 v6, 0x0

    aget-byte v7, v4, v6

    if-gez v7, :cond_0

    .line 704
    add-int/lit8 v5, v5, 0x1

    .line 706
    :cond_0
    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v7

    .line 707
    .local v7, "s":[B
    const/16 v8, 0x14

    .line 708
    .local v8, "slen":I
    aget-byte v9, v7, v6

    if-gez v9, :cond_1

    .line 709
    add-int/lit8 v8, v8, 0x1

    .line 711
    :cond_1
    const/16 v9, 0x30

    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 712
    add-int v9, v5, v8

    add-int/lit8 v9, v9, 0x4

    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 714
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 715
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 716
    if-le v5, v3, :cond_2

    .line 717
    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 718
    :cond_2
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 720
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 721
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 722
    if-le v8, v3, :cond_3

    .line 723
    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 724
    :cond_3
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 726
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 694
    .end local v0    # "in":Lorg/xbill/DNS/DNSInput;
    .end local v1    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v2    # "t":I
    .end local v4    # "r":[B
    .end local v5    # "rlen":I
    .end local v7    # "s":[B
    .end local v8    # "slen":I
    :cond_4
    new-instance v0, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v0
.end method

.method private static DSASignaturetoDNS([BI)[B
    .locals 9
    .param p0, "signature"    # [B
    .param p1, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 732
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 734
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 736
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 737
    .local v2, "tmp":I
    const/16 v3, 0x30

    if-ne v2, v3, :cond_8

    .line 739
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 741
    .local v3, "seqlen":I
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 742
    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 744
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 745
    .local v5, "rlen":I
    const/16 v6, 0x15

    const/16 v7, 0x14

    if-ne v5, v6, :cond_1

    .line 746
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 748
    :cond_1
    if-ne v5, v7, :cond_6

    .line 750
    :goto_0
    invoke-virtual {v0, v7}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v8

    .line 751
    .local v8, "bytes":[B
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 753
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 754
    if-ne v2, v4, :cond_5

    .line 756
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 757
    .local v4, "slen":I
    if-ne v4, v6, :cond_3

    .line 758
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 759
    :cond_2
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 760
    :cond_3
    if-ne v4, v7, :cond_4

    .line 762
    :goto_1
    invoke-virtual {v0, v7}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v6

    .line 763
    .end local v8    # "bytes":[B
    .local v6, "bytes":[B
    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 765
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 761
    .end local v6    # "bytes":[B
    .restart local v8    # "bytes":[B
    :cond_4
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 755
    .end local v4    # "slen":I
    :cond_5
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 749
    .end local v8    # "bytes":[B
    :cond_6
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 743
    .end local v5    # "rlen":I
    :cond_7
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 738
    .end local v3    # "seqlen":I
    :cond_8
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method private static ECDSASignaturefromDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    .locals 9
    .param p0, "signature"    # [B
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$ECKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    array-length v0, p0

    iget v1, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    .line 785
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 786
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 788
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    iget v3, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v3

    .line 789
    .local v3, "r":[B
    iget v4, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    .line 790
    .local v4, "rlen":I
    const/4 v5, 0x0

    aget-byte v6, v3, v5

    if-gez v6, :cond_0

    .line 791
    add-int/lit8 v4, v4, 0x1

    .line 793
    :cond_0
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v6

    .line 794
    .local v6, "s":[B
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    .line 795
    .local v7, "slen":I
    aget-byte v8, v6, v5

    if-gez v8, :cond_1

    .line 796
    add-int/lit8 v7, v7, 0x1

    .line 798
    :cond_1
    const/16 v8, 0x30

    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 799
    add-int v8, v4, v7

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 801
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 802
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 803
    iget v8, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    if-le v4, v8, :cond_2

    .line 804
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 805
    :cond_2
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 807
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 808
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 809
    iget v2, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    if-le v7, v2, :cond_3

    .line 810
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 811
    :cond_3
    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 813
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 783
    .end local v0    # "in":Lorg/xbill/DNS/DNSInput;
    .end local v1    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v3    # "r":[B
    .end local v4    # "rlen":I
    .end local v6    # "s":[B
    .end local v7    # "slen":I
    :cond_4
    new-instance v0, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v0
.end method

.method private static ECDSASignaturetoDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    .locals 8
    .param p0, "signature"    # [B
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$ECKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 819
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 821
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 822
    .local v2, "tmp":I
    const/16 v3, 0x30

    if-ne v2, v3, :cond_8

    .line 824
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 826
    .local v3, "seqlen":I
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 827
    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 829
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 830
    .local v5, "rlen":I
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_1

    .line 831
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 832
    :cond_0
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 833
    :cond_1
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    if-ne v5, v6, :cond_6

    .line 835
    :goto_0
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v6

    .line 836
    .local v6, "bytes":[B
    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 838
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 839
    if-ne v2, v4, :cond_5

    .line 841
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 842
    .local v4, "slen":I
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    add-int/lit8 v7, v7, 0x1

    if-ne v4, v7, :cond_3

    .line 843
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 844
    :cond_2
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 845
    :cond_3
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    if-ne v4, v7, :cond_4

    .line 847
    :goto_1
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v0, v7}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v6

    .line 848
    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 850
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 846
    :cond_4
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 840
    .end local v4    # "slen":I
    :cond_5
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 834
    .end local v6    # "bytes":[B
    :cond_6
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 828
    .end local v5    # "rlen":I
    :cond_7
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 823
    .end local v3    # "seqlen":I
    :cond_8
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method private static ECGOSTSignaturefromDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    .locals 2
    .param p0, "signature"    # [B
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$ECKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    array-length v0, p0

    iget v1, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    .line 775
    return-object p0

    .line 773
    :cond_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v0
.end method

.method public static algString(I)Ljava/lang/String;
    .locals 1
    .param p0, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    .line 662
    packed-switch p0, :pswitch_data_0

    .line 682
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 680
    :pswitch_1
    const-string v0, "SHA384withECDSA"

    return-object v0

    .line 678
    :pswitch_2
    const-string v0, "SHA256withECDSA"

    return-object v0

    .line 676
    :pswitch_3
    const-string v0, "GOST3411withECGOST3410"

    return-object v0

    .line 674
    :pswitch_4
    const-string v0, "SHA512withRSA"

    return-object v0

    .line 672
    :pswitch_5
    const-string v0, "SHA256withRSA"

    return-object v0

    .line 670
    :pswitch_6
    const-string v0, "SHA1withRSA"

    return-object v0

    .line 667
    :pswitch_7
    const-string v0, "SHA1withDSA"

    return-object v0

    .line 664
    :pswitch_8
    const-string v0, "MD5withRSA"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static checkAlgorithm(Ljava/security/PrivateKey;I)V
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    .line 995
    packed-switch p1, :pswitch_data_0

    .line 1016
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 1012
    :pswitch_1
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 1006
    :pswitch_2
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1007
    :cond_1
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 1001
    :pswitch_3
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_2

    .line 1018
    :goto_0
    return-void

    .line 1002
    :cond_2
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static digestMessage(Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/Message;[B)[B
    .locals 2
    .param p0, "sig"    # Lorg/xbill/DNS/SIGRecord;
    .param p1, "msg"    # Lorg/xbill/DNS/Message;
    .param p2, "previous"    # [B

    .line 190
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 191
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 193
    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 196
    :cond_0
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 197
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B
    .locals 11
    .param p0, "rrsig"    # Lorg/xbill/DNS/RRSIGRecord;
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .line 141
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 142
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 144
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v1

    .line 145
    .local v1, "size":I
    new-array v2, v1, [Lorg/xbill/DNS/Record;

    .line 147
    .local v2, "records":[Lorg/xbill/DNS/Record;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v3

    .line 148
    .local v3, "it":Ljava/util/Iterator;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 149
    .local v4, "name":Lorg/xbill/DNS/Name;
    const/4 v5, 0x0

    .line 150
    .local v5, "wild":Lorg/xbill/DNS/Name;
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 151
    .local v6, "sigLabels":I
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v7

    if-le v7, v6, :cond_0

    .line 152
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v4, v7}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v5

    .line 153
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 154
    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xbill/DNS/Record;

    aput-object v7, v2, v1

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 157
    new-instance v7, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v7}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 158
    .local v7, "header":Lorg/xbill/DNS/DNSOutput;
    if-eqz v5, :cond_2

    .line 159
    invoke-virtual {v5, v7}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    goto :goto_1

    .line 161
    :cond_2
    invoke-virtual {v4, v7}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 162
    :goto_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 163
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 164
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getOrigTTL()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 165
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v9, v2

    if-ge v8, v9, :cond_3

    .line 166
    invoke-virtual {v7}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 167
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v9

    .line 168
    .local v9, "lengthPosition":I
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 169
    aget-object v10, v2, v8

    invoke-virtual {v10}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 170
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v10

    sub-int/2addr v10, v9

    add-int/lit8 v10, v10, -0x2

    .line 171
    .local v10, "rrlength":I
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 172
    invoke-virtual {v0, v9}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 173
    invoke-virtual {v0, v10}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 174
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 165
    .end local v9    # "lengthPosition":I
    .end local v10    # "rrlength":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 176
    .end local v8    # "i":I
    :cond_3
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v8

    return-object v8
.end method

.method private static digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V
    .locals 4
    .param p0, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p1, "sig"    # Lorg/xbill/DNS/SIGBase;

    .line 121
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTypeCovered()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 122
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 123
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getLabels()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 124
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getOrigTTL()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 125
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getExpire()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 126
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTimeSigned()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 127
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 128
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 129
    return-void
.end method

.method private static fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B
    .locals 7
    .param p0, "key"    # Ljava/security/interfaces/DSAPublicKey;

    .line 578
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 579
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    .line 580
    .local v1, "q":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 581
    .local v2, "p":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    .line 582
    .local v3, "g":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    .line 583
    .local v4, "y":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x40

    div-int/lit8 v5, v5, 0x8

    .line 585
    .local v5, "t":I
    invoke-virtual {v0, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 586
    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 587
    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 588
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v6, v6, 0x40

    invoke-static {v0, v3, v6}, Lorg/xbill/DNS/DNSSEC;->writePaddedBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V

    .line 589
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v6, v6, 0x40

    invoke-static {v0, v4, v6}, Lorg/xbill/DNS/DNSSEC;->writePaddedBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V

    .line 591
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private static fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    .locals 4
    .param p0, "key"    # Ljava/security/interfaces/ECPublicKey;
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 609
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 611
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 612
    .local v1, "x":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    .line 614
    .local v2, "y":Ljava/math/BigInteger;
    iget v3, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v1, v3}, Lorg/xbill/DNS/DNSSEC;->writePaddedBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V

    .line 615
    iget v3, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v2, v3}, Lorg/xbill/DNS/DNSSEC;->writePaddedBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V

    .line 617
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private static fromECGOSTPublicKey(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    .locals 4
    .param p0, "key"    # Ljava/security/interfaces/ECPublicKey;
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 596
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 598
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 599
    .local v1, "x":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    .line 601
    .local v2, "y":Ljava/math/BigInteger;
    iget v3, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v1, v3}, Lorg/xbill/DNS/DNSSEC;->writePaddedBigIntegerLittleEndian(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V

    .line 602
    iget v3, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v2, v3}, Lorg/xbill/DNS/DNSSEC;->writePaddedBigIntegerLittleEndian(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V

    .line 604
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method static fromPublicKey(Ljava/security/PublicKey;I)[B
    .locals 2
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 624
    packed-switch p1, :pswitch_data_0

    .line 651
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 647
    :pswitch_1
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    .line 649
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    sget-object v1, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object v0

    return-object v0

    .line 648
    :cond_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 643
    :pswitch_2
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_1

    .line 645
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    sget-object v1, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object v0

    return-object v0

    .line 644
    :cond_1
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 639
    :pswitch_3
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    .line 641
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    sget-object v1, Lorg/xbill/DNS/DNSSEC;->GOST:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->fromECGOSTPublicKey(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object v0

    return-object v0

    .line 640
    :cond_2
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 635
    :pswitch_4
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_3

    .line 637
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B

    move-result-object v0

    return-object v0

    .line 636
    :cond_3
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 630
    :pswitch_5
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_4

    .line 632
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v0

    return-object v0

    .line 631
    :cond_4
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 5
    .param p0, "key"    # Ljava/security/interfaces/RSAPublicKey;

    .line 559
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 560
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    .line 561
    .local v1, "exponent":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 562
    .local v2, "modulus":Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v3

    .line 564
    .local v3, "exponentLength":I
    const/16 v4, 0x100

    if-ge v3, v4, :cond_0

    .line 565
    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    goto :goto_0

    .line 567
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 568
    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 570
    :goto_0
    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 571
    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 573
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method static generateDSDigest(Lorg/xbill/DNS/DNSKEYRecord;I)[B
    .locals 3
    .param p0, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p1, "digestid"    # I

    .line 1142
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1153
    :try_start_0
    const-string/jumbo v0, "sha-384"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1154
    .local v0, "digest":Ljava/security/MessageDigest;
    goto :goto_0

    .line 1156
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "unknown DS digest type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "key":Lorg/xbill/DNS/DNSKEYRecord;
    .end local p1    # "digestid":I
    throw v0

    .line 1150
    .restart local p0    # "key":Lorg/xbill/DNS/DNSKEYRecord;
    .restart local p1    # "digestid":I
    :cond_1
    const-string v0, "GOST3411"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1151
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    goto :goto_0

    .line 1147
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :cond_2
    const-string/jumbo v0, "sha-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1148
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    goto :goto_0

    .line 1144
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :cond_3
    const-string/jumbo v0, "sha-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    nop

    .line 1162
    :goto_0
    nop

    .line 1163
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1164
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->rdataToWireCanonical()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1165
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 1160
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "no message digest support"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z
    .locals 2
    .param p0, "sig"    # Lorg/xbill/DNS/SIGBase;
    .param p1, "key"    # Lorg/xbill/DNS/KEYBase;

    .line 903
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 904
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 905
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 903
    :goto_0
    return v0
.end method

.method private static readBigInteger(Lorg/xbill/DNS/DNSInput;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;

    .line 346
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 347
    .local v0, "b":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private static readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;
    .locals 3
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 341
    .local v0, "b":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private static readBigIntegerLittleEndian(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;
    .locals 3
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 374
    .local v0, "b":[B
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->reverseByteArray([B)V

    .line 375
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private static reverseByteArray([B)V
    .locals 4
    .param p0, "array"    # [B

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 364
    array-length v1, p0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 365
    .local v1, "j":I
    aget-byte v2, p0, v0

    .line 366
    .local v2, "tmp":B
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 367
    aput-byte v2, p0, v1

    .line 363
    .end local v1    # "j":I
    .end local v2    # "tmp":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 6
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p2, "privkey"    # Ljava/security/PrivateKey;
    .param p3, "inception"    # Ljava/util/Date;
    .param p4, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 1037
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/DNSSEC;->sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;

    move-result-object v0

    return-object v0
.end method

.method public static sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 17
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p2, "privkey"    # Ljava/security/PrivateKey;
    .param p3, "inception"    # Ljava/util/Date;
    .param p4, "expiration"    # Ljava/util/Date;
    .param p5, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 1059
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v15

    .line 1060
    .local v15, "alg":I
    invoke-static {v0, v15}, Lorg/xbill/DNS/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 1062
    new-instance v16, Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v3

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v6

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v8

    .line 1066
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v12

    .line 1067
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v1, v16

    move v7, v15

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 1069
    .local v1, "rrsig":Lorg/xbill/DNS/RRSIGRecord;
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 1070
    move-object/from16 v3, p0

    invoke-static {v1, v3}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v4

    .line 1069
    move-object/from16 v5, p5

    invoke-static {v0, v2, v15, v4, v5}, Lorg/xbill/DNS/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/RRSIGRecord;->setSignature([B)V

    .line 1071
    return-object v1
.end method

.method private static sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B
    .locals 5
    .param p0, "privkey"    # Ljava/security/PrivateKey;
    .param p1, "pubkey"    # Ljava/security/PublicKey;
    .param p2, "alg"    # I
    .param p3, "data"    # [B
    .param p4, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 945
    if-eqz p4, :cond_0

    .line 946
    :try_start_0
    invoke-static {p2}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .local v0, "s":Ljava/security/Signature;
    goto :goto_0

    .line 948
    .end local v0    # "s":Ljava/security/Signature;
    :cond_0
    invoke-static {p2}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 949
    .restart local v0    # "s":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 950
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 951
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    .line 955
    .local v0, "signature":[B
    nop

    .line 957
    instance-of v1, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_1

    .line 959
    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    .line 960
    .local v1, "dsa":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 961
    .local v2, "P":Ljava/math/BigInteger;
    invoke-static {v2}, Lorg/xbill/DNS/DNSSEC;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v3

    add-int/lit8 v3, v3, -0x40

    div-int/lit8 v3, v3, 0x8

    .line 962
    .local v3, "t":I
    invoke-static {v0, v3}, Lorg/xbill/DNS/DNSSEC;->DSASignaturetoDNS([BI)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    .line 966
    .end local v1    # "dsa":Ljava/security/interfaces/DSAPublicKey;
    .end local v2    # "P":Ljava/math/BigInteger;
    .end local v3    # "t":I
    goto :goto_4

    .line 964
    :catch_0
    move-exception v1

    .line 965
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 967
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    instance-of v1, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v1, :cond_2

    .line 969
    packed-switch p2, :pswitch_data_0

    .line 982
    :try_start_2
    new-instance v1, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    goto :goto_2

    .line 978
    :pswitch_0
    sget-object v1, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->ECDSASignaturetoDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object v1

    move-object v0, v1

    .line 980
    goto :goto_1

    .line 974
    :pswitch_1
    sget-object v1, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->ECDSASignaturetoDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object v1

    move-object v0, v1

    .line 976
    goto :goto_1

    .line 985
    :catch_1
    move-exception v1

    goto :goto_3

    .line 972
    :pswitch_2
    nop

    .line 987
    :goto_1
    goto :goto_4

    .line 982
    :goto_2
    invoke-direct {v1, p2}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    .end local v0    # "signature":[B
    .end local p0    # "privkey":Ljava/security/PrivateKey;
    .end local p1    # "pubkey":Ljava/security/PublicKey;
    .end local p2    # "alg":I
    .end local p3    # "data":[B
    .end local p4    # "provider":Ljava/lang/String;
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 986
    .restart local v0    # "signature":[B
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "privkey":Ljava/security/PrivateKey;
    .restart local p1    # "pubkey":Ljava/security/PublicKey;
    .restart local p2    # "alg":I
    .restart local p3    # "data":[B
    .restart local p4    # "provider":Ljava/lang/String;
    :goto_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 990
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    return-object v0

    .line 953
    .end local v0    # "signature":[B
    :catch_2
    move-exception v0

    .line 954
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/SIGRecord;
    .locals 17
    .param p0, "message"    # Lorg/xbill/DNS/Message;
    .param p1, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .param p2, "key"    # Lorg/xbill/DNS/KEYRecord;
    .param p3, "privkey"    # Ljava/security/PrivateKey;
    .param p4, "inception"    # Ljava/util/Date;
    .param p5, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 1079
    move-object/from16 v0, p3

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getAlgorithm()I

    move-result v15

    .line 1080
    .local v15, "alg":I
    invoke-static {v0, v15}, Lorg/xbill/DNS/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 1082
    new-instance v16, Lorg/xbill/DNS/SIGRecord;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    .line 1084
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getFootprint()I

    move-result v12

    .line 1085
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    const/16 v3, 0xff

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, v16

    move v7, v15

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/SIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 1086
    .local v1, "sig":Lorg/xbill/DNS/SIGRecord;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 1087
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 1088
    if-eqz p1, :cond_0

    .line 1089
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 1090
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 1093
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    .line 1092
    invoke-static {v0, v3, v15, v4, v5}, Lorg/xbill/DNS/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/SIGRecord;->setSignature([B)V

    .line 1094
    return-object v1
.end method

.method private static toDSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 8
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .line 432
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 434
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    .line 435
    .local v1, "t":I
    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 438
    const/16 v2, 0x14

    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 439
    .local v2, "q":Ljava/math/BigInteger;
    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x40

    invoke-static {v0, v3}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 440
    .local v3, "p":Ljava/math/BigInteger;
    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x40

    invoke-static {v0, v4}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 441
    .local v4, "g":Ljava/math/BigInteger;
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x40

    invoke-static {v0, v5}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v5

    .line 443
    .local v5, "y":Ljava/math/BigInteger;
    const-string v6, "DSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 444
    .local v6, "factory":Ljava/security/KeyFactory;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v7, v5, v3, v2, v4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v6, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    return-object v7

    .line 436
    .end local v2    # "q":Ljava/math/BigInteger;
    .end local v3    # "p":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    .end local v5    # "y":Ljava/math/BigInteger;
    .end local v6    # "factory":Ljava/security/KeyFactory;
    :cond_0
    new-instance v2, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {v2, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/KEYBase;)V

    throw v2
.end method

.method private static toECDSAPublicKey(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;
    .locals 7
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$ECKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .line 513
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 516
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    iget v1, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 517
    .local v1, "x":Ljava/math/BigInteger;
    iget v2, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 518
    .local v2, "y":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 520
    .local v3, "q":Ljava/security/spec/ECPoint;
    const-string v4, "EC"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 521
    .local v4, "factory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/ECPublicKeySpec;

    iget-object v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->spec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v5, v3, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5
.end method

.method private static toECGOSTPublicKey(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;
    .locals 7
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$ECKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .line 499
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 501
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    iget v1, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->readBigIntegerLittleEndian(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 502
    .local v1, "x":Ljava/math/BigInteger;
    iget v2, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->readBigIntegerLittleEndian(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 503
    .local v2, "y":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 505
    .local v3, "q":Ljava/security/spec/ECPoint;
    const-string v4, "ECGOST3410"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 506
    .local v4, "factory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/ECPublicKeySpec;

    iget-object v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->spec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v5, v3, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5
.end method

.method static toPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 527
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    .line 529
    .local v0, "alg":I
    packed-switch v0, :pswitch_data_0

    .line 546
    :pswitch_0
    :try_start_0
    new-instance v1, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    goto :goto_0

    .line 544
    :pswitch_1
    sget-object v1, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p0, v1}, Lorg/xbill/DNS/DNSSEC;->toECDSAPublicKey(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1

    .line 542
    :pswitch_2
    sget-object v1, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p0, v1}, Lorg/xbill/DNS/DNSSEC;->toECDSAPublicKey(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1

    .line 540
    :pswitch_3
    sget-object v1, Lorg/xbill/DNS/DNSSEC;->GOST:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p0, v1}, Lorg/xbill/DNS/DNSSEC;->toECGOSTPublicKey(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1

    .line 538
    :pswitch_4
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toDSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1

    .line 535
    :pswitch_5
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toRSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1

    .line 552
    :catch_0
    move-exception v1

    goto :goto_1

    .line 549
    :catch_1
    move-exception v1

    goto :goto_2

    .line 546
    :goto_0
    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    .end local v0    # "alg":I
    .end local p0    # "r":Lorg/xbill/DNS/KEYBase;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .restart local v0    # "alg":I
    .local v1, "e":Ljava/security/GeneralSecurityException;
    .restart local p0    # "r":Lorg/xbill/DNS/KEYBase;
    :goto_1
    new-instance v2, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 550
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    new-instance v2, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {v2, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/KEYBase;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static toRSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 6
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 417
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 418
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    .line 419
    .local v1, "exponentLength":I
    if-nez v1, :cond_0

    .line 420
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 421
    :cond_0
    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 422
    .local v2, "exponent":Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;)Ljava/math/BigInteger;

    move-result-object v3

    .line 424
    .local v3, "modulus":Ljava/math/BigInteger;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 425
    .local v4, "factory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v5, v3, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5
.end method

.method private static trimByteArray([B)[B
    .locals 4
    .param p0, "array"    # [B

    .line 352
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 353
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 354
    .local v1, "trimmedArray":[B
    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    return-object v1

    .line 357
    .end local v1    # "trimmedArray":[B
    :cond_0
    return-object p0
.end method

.method private static verify(Ljava/security/PublicKey;I[B[B)V
    .locals 3
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "alg"    # I
    .param p2, "data"    # [B
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 857
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_0

    .line 859
    :try_start_0
    invoke-static {p3}, Lorg/xbill/DNS/DNSSEC;->DSASignaturefromDNS([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, v0

    .line 863
    goto :goto_3

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 864
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_1

    .line 866
    packed-switch p1, :pswitch_data_0

    .line 880
    :try_start_1
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    goto :goto_1

    .line 876
    :pswitch_0
    sget-object v0, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p3, v0}, Lorg/xbill/DNS/DNSSEC;->ECDSASignaturefromDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object v0

    move-object p3, v0

    .line 878
    goto :goto_0

    .line 872
    :pswitch_1
    sget-object v0, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p3, v0}, Lorg/xbill/DNS/DNSSEC;->ECDSASignaturefromDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object v0

    move-object p3, v0

    .line 874
    goto :goto_0

    .line 868
    :pswitch_2
    sget-object v0, Lorg/xbill/DNS/DNSSEC;->GOST:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p3, v0}, Lorg/xbill/DNS/DNSSEC;->ECGOSTSignaturefromDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object v0

    move-object p3, v0

    .line 870
    nop

    .line 885
    :goto_0
    goto :goto_3

    .line 883
    :catch_1
    move-exception v0

    goto :goto_2

    .line 880
    :goto_1
    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    .end local p0    # "key":Ljava/security/PublicKey;
    .end local p1    # "alg":I
    .end local p2    # "data":[B
    .end local p3    # "signature":[B
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 884
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "key":Ljava/security/PublicKey;
    .restart local p1    # "alg":I
    .restart local p2    # "data":[B
    .restart local p3    # "signature":[B
    :goto_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 889
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    :try_start_2
    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 890
    .local v0, "s":Ljava/security/Signature;
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 891
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 892
    invoke-virtual {v0, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 897
    .end local v0    # "s":Ljava/security/Signature;
    nop

    .line 898
    return-void

    .line 893
    .restart local v0    # "s":Ljava/security/Signature;
    :cond_2
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    .end local p0    # "key":Ljava/security/PublicKey;
    .end local p1    # "alg":I
    .end local p2    # "data":[B
    .end local p3    # "signature":[B
    throw v1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 895
    .end local v0    # "s":Ljava/security/Signature;
    .restart local p0    # "key":Ljava/security/PublicKey;
    .restart local p1    # "alg":I
    .restart local p2    # "data":[B
    .restart local p3    # "signature":[B
    :catch_2
    move-exception v0

    .line 896
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;)V
    .locals 5
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "rrsig"    # Lorg/xbill/DNS/RRSIGRecord;
    .param p2, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 924
    invoke-static {p1, p2}, Lorg/xbill/DNS/DNSSEC;->matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 928
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 930
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 934
    invoke-virtual {p2}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getAlgorithm()I

    move-result v2

    .line 935
    invoke-static {p1, p0}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getSignature()[B

    move-result-object v4

    .line 934
    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/DNSSEC;->verify(Ljava/security/PublicKey;I[B[B)V

    .line 936
    return-void

    .line 931
    :cond_0
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 929
    :cond_1
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 925
    .end local v0    # "now":Ljava/util/Date;
    :cond_2
    new-instance v0, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {v0, p2, p1}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;)V

    throw v0
.end method

.method static verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;)V
    .locals 7
    .param p0, "message"    # Lorg/xbill/DNS/Message;
    .param p1, "bytes"    # [B
    .param p2, "sig"    # Lorg/xbill/DNS/SIGRecord;
    .param p3, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .param p4, "key"    # Lorg/xbill/DNS/KEYRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 1101
    iget v0, p0, Lorg/xbill/DNS/Message;->sig0start:I

    if-eqz v0, :cond_4

    .line 1104
    invoke-static {p2, p4}, Lorg/xbill/DNS/DNSSEC;->matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1107
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1109
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 1111
    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1115
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 1116
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v1, p2}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 1117
    if-eqz p3, :cond_0

    .line 1118
    invoke-virtual {p3}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 1120
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Header;

    .line 1121
    .local v2, "header":Lorg/xbill/DNS/Header;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 1122
    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 1124
    iget v3, p0, Lorg/xbill/DNS/Message;->sig0start:I

    const/16 v4, 0xc

    sub-int/2addr v3, v4

    invoke-virtual {v1, p1, v4, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 1127
    invoke-virtual {p4}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getAlgorithm()I

    move-result v4

    .line 1128
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v6

    .line 1127
    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/DNSSEC;->verify(Ljava/security/PublicKey;I[B[B)V

    .line 1129
    return-void

    .line 1112
    .end local v1    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v2    # "header":Lorg/xbill/DNS/Header;
    :cond_1
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 1110
    :cond_2
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 1105
    .end local v0    # "now":Ljava/util/Date;
    :cond_3
    new-instance v0, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {v0, p4, p2}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;)V

    throw v0

    .line 1102
    :cond_4
    new-instance v0, Lorg/xbill/DNS/DNSSEC$NoSignatureException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$NoSignatureException;-><init>()V

    throw v0
.end method

.method private static writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V
    .locals 1
    .param p0, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 380
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->trimByteArray([B)[B

    move-result-object v0

    .line 381
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 382
    return-void
.end method

.method private static writePaddedBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V
    .locals 2
    .param p0, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p1, "val"    # Ljava/math/BigInteger;
    .param p2, "len"    # I

    .line 386
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->trimByteArray([B)[B

    move-result-object v0

    .line 388
    .local v0, "b":[B
    array-length v1, v0

    if-gt v1, p2, :cond_1

    .line 391
    array-length v1, v0

    if-ge v1, p2, :cond_0

    .line 392
    array-length v1, v0

    sub-int v1, p2, v1

    new-array v1, v1, [B

    .line 393
    .local v1, "pad":[B
    invoke-virtual {p0, v1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 396
    .end local v1    # "pad":[B
    :cond_0
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 397
    return-void

    .line 389
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static writePaddedBigIntegerLittleEndian(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V
    .locals 2
    .param p0, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p1, "val"    # Ljava/math/BigInteger;
    .param p2, "len"    # I

    .line 401
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->trimByteArray([B)[B

    move-result-object v0

    .line 403
    .local v0, "b":[B
    array-length v1, v0

    if-gt v1, p2, :cond_1

    .line 406
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->reverseByteArray([B)V

    .line 407
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 409
    array-length v1, v0

    if-ge v1, p2, :cond_0

    .line 410
    array-length v1, v0

    sub-int v1, p2, v1

    new-array v1, v1, [B

    .line 411
    .local v1, "pad":[B
    invoke-virtual {p0, v1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 413
    .end local v1    # "pad":[B
    :cond_0
    return-void

    .line 404
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
