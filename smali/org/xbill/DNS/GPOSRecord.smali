.class public Lorg/xbill/DNS/GPOSRecord;
.super Lorg/xbill/DNS/Record;
.source "GPOSRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x581eb81cb5af7fb1L


# instance fields
.field private altitude:[B

.field private latitude:[B

.field private longitude:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJDDD)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "longitude"    # D
    .param p7, "latitude"    # D
    .param p9, "altitude"    # D

    .line 50
    move-object v6, p0

    const/16 v2, 0x1b

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 51
    move-wide v0, p5

    move-wide v2, p7

    invoke-direct {p0, p5, p6, p7, p8}, Lorg/xbill/DNS/GPOSRecord;->validate(DD)V

    .line 52
    invoke-static {p5, p6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v6, Lorg/xbill/DNS/GPOSRecord;->longitude:[B

    .line 53
    invoke-static {p7, p8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v6, Lorg/xbill/DNS/GPOSRecord;->latitude:[B

    .line 54
    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v6, Lorg/xbill/DNS/GPOSRecord;->altitude:[B

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "longitude"    # Ljava/lang/String;
    .param p6, "latitude"    # Ljava/lang/String;
    .param p7, "altitude"    # Ljava/lang/String;

    .line 68
    const/16 v2, 0x1b

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 70
    :try_start_0
    invoke-static {p5}, Lorg/xbill/DNS/GPOSRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->longitude:[B

    .line 71
    invoke-static {p6}, Lorg/xbill/DNS/GPOSRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->latitude:[B

    .line 72
    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getLatitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xbill/DNS/GPOSRecord;->validate(DD)V

    .line 73
    invoke-static {p7}, Lorg/xbill/DNS/GPOSRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->altitude:[B
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    nop

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validate(DD)V
    .locals 3
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 29
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_1

    .line 33
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p3, v0

    if-gtz v0, :cond_0

    .line 37
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "illegal latitude "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "illegal longitude "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAltitude()D
    .locals 2

    .line 168
    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getAltitudeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAltitudeString()Ljava/lang/String;
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->altitude:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/GPOSRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 152
    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getLatitudeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitudeString()Ljava/lang/String;
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->latitude:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/GPOSRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 136
    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getLongitudeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeString()Ljava/lang/String;
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->longitude:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/GPOSRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 23
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 4
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/GPOSRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->longitude:[B

    .line 97
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/GPOSRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->latitude:[B

    .line 98
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/GPOSRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->altitude:[B
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    nop

    .line 104
    :try_start_1
    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getLatitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xbill/DNS/GPOSRecord;->validate(DD)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    nop

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 4
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->longitude:[B

    .line 83
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->latitude:[B

    .line 84
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->altitude:[B

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getLatitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xbill/DNS/GPOSRecord;->validate(DD)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .line 91
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecord;->longitude:[B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-object v3, p0, Lorg/xbill/DNS/GPOSRecord;->latitude:[B

    invoke-static {v3, v2}, Lorg/xbill/DNS/GPOSRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecord;->altitude:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 173
    iget-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->longitude:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 174
    iget-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->latitude:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 175
    iget-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->altitude:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 176
    return-void
.end method
