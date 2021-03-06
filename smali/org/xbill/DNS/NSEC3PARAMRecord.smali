.class public Lorg/xbill/DNS/NSEC3PARAMRecord;
.super Lorg/xbill/DNS/Record;
.source "NSEC3PARAMRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x7895aa91afb86275L


# instance fields
.field private flags:I

.field private hashAlg:I

.field private iterations:I

.field private salt:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "hashAlg"    # I
    .param p6, "flags"    # I
    .param p7, "iterations"    # I
    .param p8, "salt"    # [B

    .line 50
    const/16 v2, 0x33

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 51
    const-string v0, "hashAlg"

    invoke-static {v0, p5}, Lorg/xbill/DNS/NSEC3PARAMRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    .line 52
    const-string v0, "flags"

    invoke-static {v0, p6}, Lorg/xbill/DNS/NSEC3PARAMRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    .line 53
    const-string v0, "iterations"

    invoke-static {v0, p7}, Lorg/xbill/DNS/NSEC3PARAMRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    .line 55
    if-eqz p8, :cond_1

    .line 56
    array-length v0, p8

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 59
    array-length v0, p8

    if-lez v0, :cond_1

    .line 60
    array-length v0, p8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    .line 61
    array-length v1, p8

    const/4 v2, 0x0

    invoke-static {p8, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid salt length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    return v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    return v0
.end method

.method public getIterations()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 33
    new-instance v0, Lorg/xbill/DNS/NSEC3PARAMRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/NSEC3PARAMRecord;-><init>()V

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    return-object v0
.end method

.method public hashName(Lorg/xbill/DNS/Name;)[B
    .locals 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 162
    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    iget v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    iget-object v2, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    invoke-static {p1, v0, v1, v2}, Lorg/xbill/DNS/NSEC3Record;->hashName(Lorg/xbill/DNS/Name;II[B)[B

    move-result-object v0

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 3
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    .line 96
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    .line 97
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    .line 99
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "s":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 104
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getHexString()[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    .line 105
    array-length v1, v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_1

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string/jumbo v1, "salt value too long"

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    .line 69
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    .line 70
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 73
    .local v0, "salt_length":I
    if-lez v0, :cond_0

    .line 74
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    goto :goto_0

    .line 76
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    .line 77
    :goto_0
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 115
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    iget v2, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    iget v2, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    if-nez v1, :cond_0

    .line 121
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 81
    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 82
    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 83
    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 85
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    if-eqz v0, :cond_0

    .line 86
    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 87
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0

    .line 89
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 90
    :goto_0
    return-void
.end method
