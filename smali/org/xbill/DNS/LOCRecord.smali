.class public Lorg/xbill/DNS/LOCRecord;
.super Lorg/xbill/DNS/Record;
.source "LOCRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x7db54773c7eed6c9L

.field private static w2:Ljava/text/NumberFormat;

.field private static w3:Ljava/text/NumberFormat;


# instance fields
.field private altitude:J

.field private hPrecision:J

.field private latitude:J

.field private longitude:J

.field private size:J

.field private vPrecision:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    .line 25
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 27
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    .line 28
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJDDDDDD)V
    .locals 9
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D
    .param p9, "altitude"    # D
    .param p11, "size"    # D
    .param p13, "hPrecision"    # D
    .param p15, "vPrecision"    # D

    .line 51
    move-object v6, p0

    const/16 v2, 0x1d

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 52
    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double v2, p5, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    const-wide/high16 v7, 0x41e0000000000000L    # 2.147483648E9

    add-double/2addr v2, v7

    double-to-long v2, v2

    iput-wide v2, v6, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 53
    mul-double v0, v0, p7

    mul-double/2addr v0, v4

    add-double/2addr v0, v7

    double-to-long v0, v0

    iput-wide v0, v6, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 54
    const-wide v0, 0x40f86a0000000000L    # 100000.0

    add-double v0, p9, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, v6, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 55
    mul-double v0, p11, v2

    double-to-long v0, v0

    iput-wide v0, v6, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 56
    mul-double v0, p13, v2

    double-to-long v0, v0

    iput-wide v0, v6, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 57
    mul-double v0, p15, v2

    double-to-long v0, v0

    iput-wide v0, v6, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 58
    return-void
.end method

.method private parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J
    .locals 11
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "required"    # Z
    .param p4, "min"    # J
    .param p6, "max"    # J
    .param p8, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    move-object v1, p1

    move-object v2, p2

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    .line 140
    .local v3, "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v0

    const-string v4, "Invalid LOC "

    if-eqz v0, :cond_1

    .line 141
    if-nez p3, :cond_0

    .line 143
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 144
    return-wide p8

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 146
    :cond_1
    iget-object v0, v3, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 147
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x6d

    if-ne v5, v7, :cond_2

    .line 148
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 150
    :cond_2
    move-object v5, v0

    .end local v0    # "s":Ljava/lang/String;
    .local v5, "s":Ljava/lang/String;
    :goto_0
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    move-object v8, p0

    :try_start_0
    invoke-direct {p0, v5}, Lorg/xbill/DNS/LOCRecord;->parseFixedPoint(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v9, v6

    double-to-long v6, v9

    .line 151
    .local v6, "value":J
    cmp-long v0, v6, p4

    if-ltz v0, :cond_3

    cmp-long v0, v6, p6

    if-gtz v0, :cond_3

    .line 153
    return-wide v6

    .line 152
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    .end local v3    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    .end local v5    # "s":Ljava/lang/String;
    .end local p0    # "this":Lorg/xbill/DNS/LOCRecord;
    .end local p1    # "st":Lorg/xbill/DNS/Tokenizer;
    .end local p2    # "type":Ljava/lang/String;
    .end local p3    # "required":Z
    .end local p4    # "min":J
    .end local p6    # "max":J
    .end local p8    # "defaultValue":J
    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v6    # "value":J
    .restart local v3    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    .restart local v5    # "s":Ljava/lang/String;
    .restart local p0    # "this":Lorg/xbill/DNS/LOCRecord;
    .restart local p1    # "st":Lorg/xbill/DNS/Tokenizer;
    .restart local p2    # "type":Ljava/lang/String;
    .restart local p3    # "required":Z
    .restart local p4    # "min":J
    .restart local p6    # "max":J
    .restart local p8    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v4

    throw v4
.end method

.method private parseFixedPoint(Ljava/lang/String;)D
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    .line 79
    const-string v0, "^-?\\d+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 81
    :cond_0
    const-string v0, "^-?\\d+\\.\\d*$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v1, v1

    .line 84
    .local v1, "value":D
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    .line 85
    .local v4, "fraction":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v1, v6

    if-gez v6, :cond_1

    .line 86
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double/2addr v4, v6

    .line 87
    :cond_1
    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 88
    .local v3, "digits":I
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double v6, v4, v6

    add-double/2addr v6, v1

    return-wide v6

    .line 90
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "value":D
    .end local v3    # "digits":I
    .end local v4    # "fraction":D
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method private static parseLOCformat(I)J
    .locals 6
    .param p0, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 295
    shr-int/lit8 v0, p0, 0x4

    int-to-long v0, v0

    .line 296
    .local v0, "out":J
    and-int/lit8 v2, p0, 0xf

    .line 297
    .local v2, "exp":I
    const-wide/16 v3, 0x9

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    const/16 v3, 0x9

    if-gt v2, v3, :cond_1

    .line 299
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "exp":I
    .local v3, "exp":I
    if-lez v2, :cond_0

    .line 300
    const-wide/16 v4, 0xa

    mul-long/2addr v0, v4

    move v2, v3

    goto :goto_0

    .line 301
    :cond_0
    return-wide v0

    .line 298
    .end local v3    # "exp":I
    .restart local v2    # "exp":I
    :cond_1
    new-instance v3, Lorg/xbill/DNS/WireParseException;

    const-string v4, "Invalid LOC Encoding"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J
    .locals 17
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "latitude"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 96
    .local v3, "isLatitude":Z
    const/4 v0, 0x0

    .local v0, "deg":I
    const/4 v4, 0x0

    .line 97
    .local v4, "min":I
    const-wide/16 v5, 0x0

    .line 101
    .local v5, "sec":D
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v7

    .line 102
    .end local v0    # "deg":I
    .local v7, "deg":I
    const-string v8, "Invalid LOC "

    const/16 v0, 0xb4

    if-gt v7, v0, :cond_b

    const/16 v0, 0x5a

    if-le v7, v0, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p0

    goto/16 :goto_4

    .line 105
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 108
    if-ltz v4, :cond_3

    const/16 v0, 0x3b

    if-gt v4, v0, :cond_3

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v0

    .line 111
    move-object/from16 v10, p0

    :try_start_1
    invoke-direct {v10, v9}, Lorg/xbill/DNS/LOCRecord;->parseFixedPoint(Ljava/lang/String;)D

    move-result-wide v11

    move-wide v5, v11

    .line 112
    const-wide/16 v11, 0x0

    cmpg-double v0, v5, v11

    if-ltz v0, :cond_2

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    cmpl-double v0, v5, v11

    if-gez v0, :cond_2

    .line 114
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .end local v9    # "s":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .line 113
    .end local v0    # "s":Ljava/lang/String;
    .restart local v9    # "s":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, " seconds"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    .end local v3    # "isLatitude":Z
    .end local v4    # "min":I
    .end local v5    # "sec":D
    .end local v7    # "deg":I
    .end local v9    # "s":Ljava/lang/String;
    .end local p0    # "this":Lorg/xbill/DNS/LOCRecord;
    .end local p1    # "st":Lorg/xbill/DNS/Tokenizer;
    .end local p2    # "type":Ljava/lang/String;
    throw v0

    .line 108
    .restart local v3    # "isLatitude":Z
    .restart local v4    # "min":I
    .restart local v5    # "sec":D
    .restart local v7    # "deg":I
    .restart local v9    # "s":Ljava/lang/String;
    .restart local p0    # "this":Lorg/xbill/DNS/LOCRecord;
    .restart local p1    # "st":Lorg/xbill/DNS/Tokenizer;
    .restart local p2    # "type":Ljava/lang/String;
    :cond_3
    move-object/from16 v10, p0

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, " minutes"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    .end local v3    # "isLatitude":Z
    .end local v4    # "min":I
    .end local v5    # "sec":D
    .end local v7    # "deg":I
    .end local v9    # "s":Ljava/lang/String;
    .end local p0    # "this":Lorg/xbill/DNS/LOCRecord;
    .end local p1    # "st":Lorg/xbill/DNS/Tokenizer;
    .end local p2    # "type":Ljava/lang/String;
    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    .restart local v3    # "isLatitude":Z
    .restart local v4    # "min":I
    .restart local v5    # "sec":D
    .restart local v7    # "deg":I
    .restart local v9    # "s":Ljava/lang/String;
    .restart local p0    # "this":Lorg/xbill/DNS/LOCRecord;
    .restart local p1    # "st":Lorg/xbill/DNS/Tokenizer;
    .restart local p2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    :goto_1
    move-object v0, v9

    .line 118
    .end local v9    # "s":Ljava/lang/String;
    .restart local v0    # "s":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_a

    .line 121
    int-to-long v13, v4

    int-to-long v11, v7

    const-wide/16 v15, 0x3c

    mul-long/2addr v11, v15

    add-long/2addr v13, v11

    mul-long/2addr v13, v15

    long-to-double v11, v13

    add-double/2addr v11, v5

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v11, v13

    double-to-long v11, v11

    .line 123
    .local v11, "value":J
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    .line 124
    .local v9, "c":C
    if-eqz v3, :cond_4

    const/16 v13, 0x53

    if-eq v9, v13, :cond_5

    :cond_4
    if-nez v3, :cond_6

    const/16 v13, 0x57

    if-ne v9, v13, :cond_6

    .line 125
    :cond_5
    neg-long v11, v11

    goto :goto_3

    .line 126
    :cond_6
    if-eqz v3, :cond_7

    const/16 v13, 0x4e

    if-ne v9, v13, :cond_8

    :cond_7
    if-nez v3, :cond_9

    const/16 v13, 0x45

    if-ne v9, v13, :cond_8

    goto :goto_3

    .line 127
    :cond_8
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v8

    throw v8

    .line 129
    :cond_9
    :goto_3
    const-wide v13, 0x80000000L

    add-long/2addr v11, v13

    .line 131
    return-wide v11

    .line 119
    .end local v9    # "c":C
    .end local v11    # "value":J
    :cond_a
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v8

    throw v8

    .line 102
    .end local v0    # "s":Ljava/lang/String;
    :cond_b
    move-object/from16 v10, p0

    .line 103
    :goto_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " degrees"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private positionToString(JCC)Ljava/lang/String;
    .locals 12
    .param p1, "value"    # J
    .param p3, "pos"    # C
    .param p4, "neg"    # C

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-wide v1, 0x80000000L

    sub-long v1, p1, v1

    .line 191
    .local v1, "temp":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 192
    neg-long v1, v1

    .line 193
    move/from16 v3, p4

    move v8, v3

    .local v3, "direction":C
    goto :goto_0

    .line 195
    .end local v3    # "direction":C
    :cond_0
    move v3, p3

    move v8, v3

    .line 197
    .local v8, "direction":C
    :goto_0
    const-wide/32 v3, 0x36ee80

    div-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 198
    rem-long/2addr v1, v3

    .line 199
    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const-wide/32 v3, 0xea60

    div-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 202
    rem-long v10, v1, v3

    .line 203
    .end local v1    # "temp":J
    .local v10, "temp":J
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    move-object v2, v0

    move-wide v4, v10

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 206
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "formatter"    # Ljava/text/NumberFormat;
    .param p3, "value"    # J
    .param p5, "divisor"    # J

    .line 177
    div-long v0, p3, p5

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 178
    rem-long/2addr p3, p5

    .line 179
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {p2, p3, p4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_0
    return-void
.end method

.method private toLOCformat(J)I
    .locals 5
    .param p1, "l"    # J

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "exp":B
    :goto_0
    const-wide/16 v1, 0x9

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 308
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 309
    const-wide/16 v1, 0xa

    div-long/2addr p1, v1

    goto :goto_0

    .line 311
    :cond_0
    const/4 v1, 0x4

    shl-long v1, p1, v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method


# virtual methods
.method public getAltitude()D
    .locals 4

    .line 261
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    const-wide/32 v2, 0x989680

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getHPrecision()D
    .locals 4

    .line 273
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLatitude()D
    .locals 4

    .line 249
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    const-wide v2, 0x80000000L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitude()D
    .locals 4

    .line 255
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const-wide v2, 0x80000000L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 35
    new-instance v0, Lorg/xbill/DNS/LOCRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/LOCRecord;-><init>()V

    return-object v0
.end method

.method public getSize()D
    .locals 4

    .line 267
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getVPrecision()D
    .locals 4

    .line 279
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 12
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    const-string v0, "latitude"

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/LOCRecord;->parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 163
    const-string v0, "longitude"

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/LOCRecord;->parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 164
    const-string v4, "altitude"

    const/4 v5, 0x1

    const-wide/32 v6, -0x989680

    const-wide v8, 0xff67697fL

    const-wide/16 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v11}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 166
    const-string/jumbo v4, "size"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide v8, 0x218711a00L

    const-wide/16 v10, 0x64

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v11}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 167
    const-string v4, "horizontal precision"

    const-wide/32 v10, 0xf4240

    invoke-direct/range {v2 .. v11}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 169
    const-string/jumbo v4, "vertical precision"

    const-wide/16 v10, 0x3e8

    invoke-direct/range {v2 .. v11}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 171
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 3
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 65
    .local v0, "version":I
    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 69
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 70
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 71
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 73
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 74
    return-void

    .line 66
    :cond_0
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "Invalid LOC version"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method rrToString()Ljava/lang/String;
    .locals 9

    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-wide v1, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    const/16 v3, 0x4e

    const/16 v4, 0x53

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/xbill/DNS/LOCRecord;->positionToString(JCC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    iget-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const/16 v4, 0x45

    const/16 v5, 0x57

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/xbill/DNS/LOCRecord;->positionToString(JCC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v1, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    const-wide/32 v4, 0x989680

    sub-long v4, v1, v4

    const-wide/16 v6, 0x64

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 229
    const-string v8, "m "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v4, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 233
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v4, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 237
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v4, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 241
    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 285
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 286
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 287
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 288
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 289
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 290
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 291
    return-void
.end method
