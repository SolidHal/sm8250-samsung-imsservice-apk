.class public Lorg/xbill/DNS/TSIGRecord;
.super Lorg/xbill/DNS/Record;
.source "TSIGRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x13b8e256a908e5aL


# instance fields
.field private alg:Lorg/xbill/DNS/Name;

.field private error:I

.field private fudge:I

.field private originalID:I

.field private other:[B

.field private signature:[B

.field private timeSigned:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V
    .locals 8
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "alg"    # Lorg/xbill/DNS/Name;
    .param p6, "timeSigned"    # Ljava/util/Date;
    .param p7, "fudge"    # I
    .param p8, "signature"    # [B
    .param p9, "originalID"    # I
    .param p10, "error"    # I
    .param p11, "other"    # [B

    .line 58
    move-object v6, p0

    const/16 v2, 0xfa

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 59
    const-string v0, "alg"

    move-object v1, p5

    invoke-static {v0, p5}, Lorg/xbill/DNS/TSIGRecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, v6, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    .line 60
    move-object v0, p6

    iput-object v0, v6, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    .line 61
    const-string v2, "fudge"

    move v3, p7

    invoke-static {v2, p7}, Lorg/xbill/DNS/TSIGRecord;->checkU16(Ljava/lang/String;I)I

    move-result v2

    iput v2, v6, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    .line 62
    move-object/from16 v2, p8

    iput-object v2, v6, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    .line 63
    const-string/jumbo v4, "originalID"

    move/from16 v5, p9

    invoke-static {v4, v5}, Lorg/xbill/DNS/TSIGRecord;->checkU16(Ljava/lang/String;I)I

    move-result v4

    iput v4, v6, Lorg/xbill/DNS/TSIGRecord;->originalID:I

    .line 64
    const-string v4, "error"

    move/from16 v7, p10

    invoke-static {v4, v7}, Lorg/xbill/DNS/TSIGRecord;->checkU16(Ljava/lang/String;I)I

    move-result v4

    iput v4, v6, Lorg/xbill/DNS/TSIGRecord;->error:I

    .line 65
    move-object/from16 v4, p11

    iput-object v4, v6, Lorg/xbill/DNS/TSIGRecord;->other:[B

    .line 66
    return-void
.end method


# virtual methods
.method public getAlgorithm()Lorg/xbill/DNS/Name;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 186
    iget v0, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    return v0
.end method

.method public getFudge()I
    .locals 1

    .line 168
    iget v0, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 35
    new-instance v0, Lorg/xbill/DNS/TSIGRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/TSIGRecord;-><init>()V

    return-object v0
.end method

.method public getOriginalID()I
    .locals 1

    .line 180
    iget v0, p0, Lorg/xbill/DNS/TSIGRecord;->originalID:I

    return v0
.end method

.method public getOther()[B
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    return-object v0
.end method

.method public getTimeSigned()Ljava/util/Date;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 1
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const-string v0, "no text format defined for TSIG"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 9
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    int-to-long v0, v0

    .line 73
    .local v0, "timeHigh":J
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v2

    .line 74
    .local v2, "timeLow":J
    const/16 v4, 0x20

    shl-long v4, v0, v4

    add-long/2addr v4, v2

    .line 75
    .local v4, "time":J
    new-instance v6, Ljava/util/Date;

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v4

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v6, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    .line 76
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v6

    iput v6, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    .line 78
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v6

    .line 79
    .local v6, "sigLen":I
    invoke-virtual {p1, v6}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v7

    iput-object v7, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    .line 81
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v7

    iput v7, p0, Lorg/xbill/DNS/TSIGRecord;->originalID:I

    .line 82
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v7

    iput v7, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    .line 84
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v7

    .line 85
    .local v7, "otherLen":I
    if-lez v7, :cond_0

    .line 86
    invoke-virtual {p1, v7}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v8

    iput-object v8, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    goto :goto_0

    .line 88
    :cond_0
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    .line 89
    :goto_0
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 11

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 101
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v2, "multiline"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const-string v3, "(\n\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget v3, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 111
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    const/16 v7, 0x40

    const-string v8, "\t"

    invoke-static {v3, v7, v8, v4}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    invoke-static {v3}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    iget v3, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    invoke-static {v3}, Lorg/xbill/DNS/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    if-nez v3, :cond_2

    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 123
    :cond_2
    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 124
    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    const-string v1, "\n\n\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :goto_1
    iget v1, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    const/16 v3, 0x12

    const-string v7, ">"

    if-ne v1, v3, :cond_5

    .line 129
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    array-length v3, v1

    const/4 v8, 0x6

    if-eq v3, v8, :cond_4

    .line 130
    const-string v1, "<invalid BADTIME other data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 132
    :cond_4
    aget-byte v3, v1, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v8, 0x28

    shl-long/2addr v3, v8

    const/4 v8, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    add-long/2addr v3, v8

    const/4 v8, 0x2

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    add-long/2addr v3, v8

    const/4 v8, 0x3

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long/2addr v3, v8

    const/4 v8, 0x4

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    add-long/2addr v3, v8

    const/4 v8, 0x5

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long/2addr v3, v8

    .line 138
    .local v3, "time":J
    const-string v1, "<server time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    new-instance v1, Ljava/util/Date;

    mul-long/2addr v5, v3

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    .end local v3    # "time":J
    goto :goto_2

    .line 143
    :cond_5
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :goto_2
    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 6
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 197
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 199
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 200
    .local v0, "time":J
    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    .line 201
    .local v2, "timeHigh":I
    const-wide v3, 0xffffffffL

    and-long/2addr v3, v0

    .line 202
    .local v3, "timeLow":J
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 203
    invoke-virtual {p1, v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 204
    iget v5, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 206
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    array-length v5, v5

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 207
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 209
    iget v5, p0, Lorg/xbill/DNS/TSIGRecord;->originalID:I

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 210
    iget v5, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 212
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    if-eqz v5, :cond_0

    .line 213
    array-length v5, v5

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 214
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0

    .line 217
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 218
    :goto_0
    return-void
.end method
