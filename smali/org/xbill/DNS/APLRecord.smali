.class public Lorg/xbill/DNS/APLRecord;
.super Lorg/xbill/DNS/Record;
.source "APLRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/APLRecord$Element;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x12b5acebae8a7fb8L


# instance fields
.field private elements:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V
    .locals 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "elements"    # Ljava/util/List;

    .line 115
    const/16 v2, 0x2a

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    .line 117
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 119
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lorg/xbill/DNS/APLRecord$Element;

    if-eqz v2, :cond_2

    .line 122
    move-object v2, v1

    check-cast v2, Lorg/xbill/DNS/APLRecord$Element;

    .line 123
    .local v2, "element":Lorg/xbill/DNS/APLRecord$Element;
    iget v3, v2, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v2, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "unknown family"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "element":Lorg/xbill/DNS/APLRecord$Element;
    goto :goto_0

    .line 120
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal element"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method static synthetic access$000(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 21
    invoke-static {p0, p1}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result v0

    return v0
.end method

.method private static addressLength([B)I
    .locals 2
    .param p0, "addr"    # [B

    .line 253
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 254
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    .line 255
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 253
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 257
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static parseAddress([BI)[B
    .locals 3
    .param p0, "in"    # [B
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 135
    array-length v0, p0

    if-gt v0, p1, :cond_1

    .line 137
    array-length v0, p0

    if-ne v0, p1, :cond_0

    .line 138
    return-object p0

    .line 139
    :cond_0
    new-array v0, p1, [B

    .line 140
    .local v0, "out":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    return-object v0

    .line 136
    .end local v0    # "out":[B
    :cond_1
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "invalid address length"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validatePrefixLength(II)Z
    .locals 3
    .param p0, "family"    # I
    .param p1, "prefixLength"    # I

    .line 101
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    const/16 v1, 0x100

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/16 v2, 0x20

    if-gt p1, v2, :cond_2

    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    const/16 v2, 0x80

    if-le p1, v2, :cond_3

    .line 105
    :cond_2
    return v0

    .line 106
    :cond_3
    return v1

    .line 102
    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public getElements()Ljava/util/List;
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 96
    new-instance v0, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/APLRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 17
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "invalid prefix length"

    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    .line 177
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v5

    .line 178
    .local v5, "t":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    nop

    .line 230
    .end local v5    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 231
    return-void

    .line 181
    .restart local v5    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_0
    const/4 v0, 0x0

    .line 182
    .local v0, "negative":Z
    const/4 v6, 0x0

    .line 183
    .local v6, "family":I
    const/4 v7, 0x0

    .line 185
    .local v7, "prefix":I
    iget-object v8, v5, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 186
    .local v8, "s":Ljava/lang/String;
    const/4 v9, 0x0

    .line 187
    .local v9, "start":I
    const-string v10, "!"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 188
    const/4 v0, 0x1

    .line 189
    const/4 v9, 0x1

    move v10, v9

    move v9, v0

    goto :goto_1

    .line 187
    :cond_1
    move v10, v9

    move v9, v0

    .line 191
    .end local v0    # "negative":Z
    .local v9, "negative":Z
    .local v10, "start":I
    :goto_1
    const/16 v0, 0x3a

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 192
    .local v11, "colon":I
    const-string v0, "invalid address prefix element"

    if-ltz v11, :cond_7

    .line 194
    const/16 v12, 0x2f

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 195
    .local v12, "slash":I
    if-ltz v12, :cond_6

    .line 198
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 199
    .local v13, "familyString":Ljava/lang/String;
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v8, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 200
    .local v14, "addressString":Ljava/lang/String;
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 203
    .local v15, "prefixString":Ljava/lang/String;
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v0

    .line 207
    nop

    .line 208
    if-eq v6, v4, :cond_3

    const/4 v0, 0x2

    if-ne v6, v0, :cond_2

    goto :goto_2

    .line 209
    :cond_2
    const-string/jumbo v0, "unknown family"

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 212
    :cond_3
    :goto_2
    :try_start_1
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    .end local v7    # "prefix":I
    .local v0, "prefix":I
    nop

    .line 218
    invoke-static {v6, v0}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 222
    invoke-static {v14, v6}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v7

    .line 223
    .local v7, "bytes":[B
    if-eqz v7, :cond_4

    .line 227
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    .line 228
    .local v4, "address":Ljava/net/InetAddress;
    move-object/from16 v16, v5

    .end local v5    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .local v16, "t":Lorg/xbill/DNS/Tokenizer$Token;
    iget-object v5, v1, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    new-instance v1, Lorg/xbill/DNS/APLRecord$Element;

    invoke-direct {v1, v9, v4, v0}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v0    # "prefix":I
    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v6    # "family":I
    .end local v7    # "bytes":[B
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "negative":Z
    .end local v10    # "start":I
    .end local v11    # "colon":I
    .end local v12    # "slash":I
    .end local v13    # "familyString":Ljava/lang/String;
    .end local v14    # "addressString":Ljava/lang/String;
    .end local v15    # "prefixString":Ljava/lang/String;
    .end local v16    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    const/4 v4, 0x1

    move-object/from16 v1, p0

    goto :goto_0

    .line 224
    .restart local v0    # "prefix":I
    .restart local v5    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .restart local v6    # "family":I
    .restart local v7    # "bytes":[B
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v9    # "negative":Z
    .restart local v10    # "start":I
    .restart local v11    # "colon":I
    .restart local v12    # "slash":I
    .restart local v13    # "familyString":Ljava/lang/String;
    .restart local v14    # "addressString":Ljava/lang/String;
    .restart local v15    # "prefixString":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "invalid IP address "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 219
    .end local v7    # "bytes":[B
    :cond_5
    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 214
    .end local v0    # "prefix":I
    .local v7, "prefix":I
    :catch_0
    move-exception v0

    move-object/from16 v16, v5

    move-object v1, v0

    .end local v5    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .restart local v16    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    move-object v0, v1

    .line 215
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 205
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .restart local v5    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    :catch_1
    move-exception v0

    move-object/from16 v16, v5

    move-object v1, v0

    .end local v5    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .restart local v16    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    move-object v0, v1

    .line 206
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v1, "invalid family"

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 196
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v13    # "familyString":Ljava/lang/String;
    .end local v14    # "addressString":Ljava/lang/String;
    .end local v15    # "prefixString":Ljava/lang/String;
    .end local v16    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .restart local v5    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_6
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 193
    .end local v12    # "slash":I
    :cond_7
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 13
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    .line 147
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    .line 149
    .local v0, "family":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v8

    .line 150
    .local v8, "prefix":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 151
    .local v2, "length":I
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v9, v3

    .line 152
    .local v9, "negative":Z
    and-int/lit16 v10, v2, -0x81

    .line 154
    .end local v2    # "length":I
    .local v10, "length":I
    invoke-virtual {p1, v10}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v11

    .line 156
    .local v11, "data":[B
    invoke-static {v0, v8}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_2

    .line 166
    :cond_1
    new-instance v12, Lorg/xbill/DNS/APLRecord$Element;

    const/4 v7, 0x0

    move-object v2, v12

    move v3, v0

    move v4, v9

    move-object v5, v11

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/APLRecord$Element;-><init>(IZLjava/lang/Object;ILorg/xbill/DNS/APLRecord$1;)V

    .local v2, "element":Lorg/xbill/DNS/APLRecord$Element;
    goto :goto_3

    .line 161
    .end local v2    # "element":Lorg/xbill/DNS/APLRecord$Element;
    :cond_2
    :goto_2
    nop

    .line 162
    invoke-static {v0}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v2

    .line 161
    invoke-static {v11, v2}, Lorg/xbill/DNS/APLRecord;->parseAddress([BI)[B

    move-result-object v11

    .line 163
    invoke-static {v11}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .line 164
    .local v2, "addr":Ljava/net/InetAddress;
    new-instance v3, Lorg/xbill/DNS/APLRecord$Element;

    invoke-direct {v3, v9, v2, v8}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    move-object v2, v3

    .line 165
    .local v2, "element":Lorg/xbill/DNS/APLRecord$Element;
    nop

    .line 168
    :goto_3
    iget-object v3, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v0    # "family":I
    .end local v2    # "element":Lorg/xbill/DNS/APLRecord$Element;
    .end local v8    # "prefix":I
    .end local v9    # "negative":Z
    .end local v10    # "length":I
    .end local v11    # "data":[B
    goto :goto_0

    .line 157
    .restart local v0    # "family":I
    .restart local v8    # "prefix":I
    .restart local v9    # "negative":Z
    .restart local v10    # "length":I
    .restart local v11    # "data":[B
    :cond_3
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "invalid prefix length"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    .end local v0    # "family":I
    .end local v8    # "prefix":I
    .end local v9    # "negative":Z
    .end local v10    # "length":I
    .end local v11    # "data":[B
    :cond_4
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .line 235
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/APLRecord$Element;

    .line 238
    .local v2, "element":Lorg/xbill/DNS/APLRecord$Element;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    .end local v2    # "element":Lorg/xbill/DNS/APLRecord$Element;
    :cond_0
    goto :goto_0

    .line 242
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 6
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 262
    iget-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/APLRecord$Element;

    .line 264
    .local v1, "element":Lorg/xbill/DNS/APLRecord$Element;
    const/4 v2, 0x0

    .line 266
    .local v2, "length":I
    iget v3, v1, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v1, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    iget-object v3, v1, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    .line 274
    .local v3, "data":[B
    array-length v2, v3

    goto :goto_2

    .line 269
    .end local v3    # "data":[B
    :cond_1
    :goto_1
    iget-object v3, v1, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v3, Ljava/net/InetAddress;

    .line 270
    .local v3, "addr":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 271
    .local v4, "data":[B
    invoke-static {v4}, Lorg/xbill/DNS/APLRecord;->addressLength([B)I

    move-result v2

    .line 272
    .end local v3    # "addr":Ljava/net/InetAddress;
    move-object v3, v4

    .line 276
    .end local v4    # "data":[B
    .local v3, "data":[B
    :goto_2
    move v4, v2

    .line 277
    .local v4, "wlength":I
    iget-boolean v5, v1, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    if-eqz v5, :cond_2

    .line 278
    or-int/lit16 v4, v4, 0x80

    .line 280
    :cond_2
    iget v5, v1, Lorg/xbill/DNS/APLRecord$Element;->family:I

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 281
    iget v5, v1, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 282
    invoke-virtual {p1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 283
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 284
    .end local v1    # "element":Lorg/xbill/DNS/APLRecord$Element;
    .end local v2    # "length":I
    .end local v3    # "data":[B
    .end local v4    # "wlength":I
    goto :goto_0

    .line 285
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_3
    return-void
.end method
