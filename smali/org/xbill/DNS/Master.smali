.class public Lorg/xbill/DNS/Master;
.super Ljava/lang/Object;
.source "Master.java"


# instance fields
.field private currentDClass:I

.field private currentTTL:J

.field private currentType:I

.field private defaultTTL:J

.field private file:Ljava/io/File;

.field private generator:Lorg/xbill/DNS/Generator;

.field private generators:Ljava/util/List;

.field private included:Lorg/xbill/DNS/Master;

.field private last:Lorg/xbill/DNS/Record;

.field private needSOATTL:Z

.field private noExpandGenerate:Z

.field private origin:Lorg/xbill/DNS/Name;

.field private st:Lorg/xbill/DNS/Tokenizer;


# direct methods
.method constructor <init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .param p3, "initialTTL"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    .line 22
    iput-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    .line 34
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p2}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 37
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/xbill/DNS/Master;->file:Ljava/io/File;

    .line 38
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    .line 39
    iput-object p2, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    .line 40
    iput-wide p3, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 108
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;

    .line 99
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .param p3, "ttl"    # J

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    .line 22
    iput-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    .line 84
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p2}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 87
    :cond_1
    :goto_0
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    .line 88
    iput-object p2, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    .line 89
    iput-wide p3, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, p2, v1, v2}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;J)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .param p3, "ttl"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    .line 53
    return-void
.end method

.method private endGenerate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    .line 250
    return-void
.end method

.method private nextGenerated()Lorg/xbill/DNS/Record;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const-string v0, "Parsing $GENERATE: "

    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    invoke-virtual {v1}, Lorg/xbill/DNS/Generator;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v0
    :try_end_0
    .catch Lorg/xbill/DNS/Tokenizer$TokenizerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Lorg/xbill/DNS/TextParseException;
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 257
    .end local v1    # "e":Lorg/xbill/DNS/TextParseException;
    :catch_1
    move-exception v1

    .line 258
    .local v1, "e":Lorg/xbill/DNS/Tokenizer$TokenizerException;
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer$TokenizerException;->getBaseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private parseName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 114
    :try_start_0
    invoke-static {p1, p2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method private parseTTLClassAndType()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    .line 133
    .local v0, "seen_class":Z
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    if-ltz v2, :cond_0

    .line 136
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 137
    const/4 v0, 0x1

    .line 140
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    .line 142
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    .line 143
    iget-object v4, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v4}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 150
    goto :goto_0

    .line 145
    :catch_0
    move-exception v4

    .line 146
    .local v4, "e":Ljava/lang/NumberFormatException;
    iget-wide v5, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    cmp-long v7, v5, v2

    if-ltz v7, :cond_1

    .line 147
    iput-wide v5, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    goto :goto_0

    .line 148
    :cond_1
    iget-object v5, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    if-eqz v5, :cond_2

    .line 149
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    .line 152
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    const/4 v4, 0x1

    if-nez v0, :cond_4

    .line 153
    invoke-static {v1}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    if-ltz v5, :cond_3

    .line 154
    iget-object v5, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 156
    :cond_3
    iput v4, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    .line 160
    :cond_4
    :goto_1
    invoke-static {v1}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/xbill/DNS/Master;->currentType:I

    if-ltz v5, :cond_7

    .line 166
    iget-wide v6, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_6

    .line 167
    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    .line 169
    iput-boolean v4, p0, Lorg/xbill/DNS/Master;->needSOATTL:Z

    .line 170
    iput-wide v2, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    goto :goto_2

    .line 168
    :cond_5
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    const-string v3, "missing TTL"

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 172
    :cond_6
    :goto_2
    return-void

    .line 161
    :cond_7
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method private parseUInt32(Ljava/lang/String;)J
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 177
    return-wide v1

    .line 179
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .local v3, "l":J
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    const-wide v5, 0xffffffffL

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    return-wide v3

    .line 181
    :cond_2
    :goto_0
    return-wide v1

    .line 184
    .end local v3    # "l":J
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide v1
.end method

.method private startGenerate()V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "s":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 198
    .local v2, "n":I
    const-string v3, "Invalid $GENERATE range specifier: "

    if-ltz v2, :cond_5

    .line 200
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "startstr":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "endstr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 203
    .local v7, "stepstr":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 204
    if-ltz v2, :cond_0

    .line 205
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 206
    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 208
    :cond_0
    invoke-direct {v0, v5}, Lorg/xbill/DNS/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v22

    .line 209
    .local v22, "start":J
    invoke-direct {v0, v6}, Lorg/xbill/DNS/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v24

    .line 211
    .local v24, "end":J
    if-eqz v7, :cond_1

    .line 212
    invoke-direct {v0, v7}, Lorg/xbill/DNS/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v8

    move-wide/from16 v26, v8

    .local v8, "step":J
    goto :goto_0

    .line 214
    .end local v8    # "step":J
    :cond_1
    const-wide/16 v8, 0x1

    move-wide/from16 v26, v8

    .line 215
    .local v26, "step":J
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v4, v22, v8

    if-ltz v4, :cond_4

    cmp-long v4, v24, v8

    if-ltz v4, :cond_4

    cmp-long v4, v22, v24

    if-gtz v4, :cond_4

    cmp-long v4, v26, v8

    if-lez v4, :cond_4

    .line 219
    iget-object v3, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "nameSpec":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/xbill/DNS/Master;->parseTTLClassAndType()V

    .line 224
    iget v4, v0, Lorg/xbill/DNS/Master;->currentType:I

    invoke-static {v4}, Lorg/xbill/DNS/Generator;->supportedType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    iget-object v4, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v4}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "rdataSpec":Ljava/lang/String;
    iget-object v8, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 234
    iget-object v8, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 236
    new-instance v15, Lorg/xbill/DNS/Generator;

    iget v13, v0, Lorg/xbill/DNS/Master;->currentType:I

    iget v14, v0, Lorg/xbill/DNS/Master;->currentDClass:I

    iget-wide v11, v0, Lorg/xbill/DNS/Master;->currentTTL:J

    iget-object v9, v0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    move-object v8, v15

    move-object/from16 v21, v9

    move-wide/from16 v9, v22

    move-wide/from16 v18, v11

    move-wide/from16 v11, v24

    move/from16 v16, v13

    move/from16 v17, v14

    move-wide/from16 v13, v26

    move/from16 v28, v2

    move-object v2, v15

    .end local v2    # "n":I
    .local v28, "n":I
    move-object v15, v3

    move-object/from16 v20, v4

    invoke-direct/range {v8 .. v21}, Lorg/xbill/DNS/Generator;-><init>(JJJLjava/lang/String;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)V

    iput-object v2, v0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    .line 239
    iget-object v2, v0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    if-nez v2, :cond_2

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    .line 241
    :cond_2
    iget-object v2, v0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    iget-object v8, v0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void

    .line 225
    .end local v4    # "rdataSpec":Ljava/lang/String;
    .end local v28    # "n":I
    .restart local v2    # "n":I
    :cond_3
    move/from16 v28, v2

    .end local v2    # "n":I
    .restart local v28    # "n":I
    iget-object v2, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "$GENERATE does not support "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v8, v0, Lorg/xbill/DNS/Master;->currentType:I

    .line 226
    invoke-static {v8}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " records"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-virtual {v2, v4}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 215
    .end local v3    # "nameSpec":Ljava/lang/String;
    .end local v28    # "n":I
    .restart local v2    # "n":I
    :cond_4
    move/from16 v28, v2

    .line 216
    .end local v2    # "n":I
    .restart local v28    # "n":I
    iget-object v2, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 199
    .end local v5    # "startstr":Ljava/lang/String;
    .end local v6    # "endstr":Ljava/lang/String;
    .end local v7    # "stepstr":Ljava/lang/String;
    .end local v22    # "start":J
    .end local v24    # "end":J
    .end local v26    # "step":J
    .end local v28    # "n":I
    .restart local v2    # "n":I
    :cond_5
    iget-object v4, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public _nextRecord()Lorg/xbill/DNS/Record;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 279
    .local v0, "rec":Lorg/xbill/DNS/Record;
    if-eqz v0, :cond_0

    .line 280
    return-object v0

    .line 281
    :cond_0
    iput-object v1, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    .line 283
    .end local v0    # "rec":Lorg/xbill/DNS/Record;
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    if-eqz v0, :cond_3

    .line 284
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->nextGenerated()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 285
    .restart local v0    # "rec":Lorg/xbill/DNS/Record;
    if-eqz v0, :cond_2

    .line 286
    return-object v0

    .line 287
    :cond_2
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->endGenerate()V

    .line 292
    .end local v0    # "rec":Lorg/xbill/DNS/Record;
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 293
    .local v0, "token":Lorg/xbill/DNS/Tokenizer$Token;
    iget v4, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 294
    iget-object v4, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v4}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v4

    .line 295
    .local v4, "next":Lorg/xbill/DNS/Tokenizer$Token;
    iget v5, v4, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v5, v2, :cond_4

    .line 296
    goto :goto_0

    .line 297
    :cond_4
    iget v2, v4, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v2, :cond_5

    .line 298
    return-object v1

    .line 300
    :cond_5
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 301
    iget-object v1, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    if-eqz v1, :cond_6

    .line 303
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 304
    .end local v4    # "next":Lorg/xbill/DNS/Tokenizer$Token;
    .local v1, "name":Lorg/xbill/DNS/Name;
    goto/16 :goto_2

    .line 302
    .end local v1    # "name":Lorg/xbill/DNS/Name;
    .restart local v4    # "next":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_6
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    const-string v2, "no owner"

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 305
    .end local v4    # "next":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_7
    iget v4, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v4, v2, :cond_8

    .line 306
    goto :goto_0

    .line 307
    :cond_8
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v2, :cond_9

    .line 308
    return-object v1

    .line 309
    :cond_9
    iget-object v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x24

    if-ne v2, v4, :cond_12

    .line 310
    iget-object v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 312
    .local v2, "s":Ljava/lang/String;
    const-string v3, "$ORIGIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 313
    iget-object v3, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    sget-object v4, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v3

    iput-object v3, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    .line 314
    iget-object v3, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 315
    goto :goto_0

    .line 316
    :cond_a
    const-string v3, "$TTL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 317
    iget-object v3, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer;->getTTL()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    .line 318
    iget-object v3, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 319
    goto :goto_0

    .line 320
    :cond_b
    const-string v3, "$INCLUDE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 321
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "filename":Ljava/lang/String;
    iget-object v3, p0, Lorg/xbill/DNS/Master;->file:Ljava/io/File;

    if-eqz v3, :cond_c

    .line 324
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "parent":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 326
    .local v3, "newfile":Ljava/io/File;
    goto :goto_1

    .line 327
    .end local v3    # "newfile":Ljava/io/File;
    :cond_c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .restart local v3    # "newfile":Ljava/io/File;
    :goto_1
    iget-object v4, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    .line 330
    .local v4, "incorigin":Lorg/xbill/DNS/Name;
    iget-object v5, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 332
    iget-object v5, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    sget-object v6, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v5, v6}, Lorg/xbill/DNS/Master;->parseName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 334
    iget-object v5, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 336
    :cond_d
    new-instance v5, Lorg/xbill/DNS/Master;

    iget-wide v6, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    invoke-direct {v5, v3, v4, v6, v7}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    iput-object v5, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    .line 342
    invoke-virtual {p0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v5

    return-object v5

    .line 343
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "newfile":Ljava/io/File;
    .end local v4    # "incorigin":Lorg/xbill/DNS/Name;
    :cond_e
    const-string v3, "$GENERATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 344
    iget-object v3, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    if-nez v3, :cond_10

    .line 347
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->startGenerate()V

    .line 348
    iget-boolean v3, p0, Lorg/xbill/DNS/Master;->noExpandGenerate:Z

    if-eqz v3, :cond_f

    .line 349
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->endGenerate()V

    .line 350
    goto/16 :goto_0

    .line 352
    :cond_f
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->nextGenerated()Lorg/xbill/DNS/Record;

    move-result-object v1

    return-object v1

    .line 345
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "cannot nest $GENERATE"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_11
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid directive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 357
    .end local v2    # "s":Ljava/lang/String;
    :cond_12
    iget-object v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 358
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Master;->parseName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 359
    .local v2, "name":Lorg/xbill/DNS/Name;
    iget-object v4, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 360
    iget-object v4, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    move-object v1, v2

    goto :goto_2

    .line 364
    .end local v1    # "s":Ljava/lang/String;
    :cond_13
    move-object v1, v2

    .end local v2    # "name":Lorg/xbill/DNS/Name;
    .local v1, "name":Lorg/xbill/DNS/Name;
    :goto_2
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->parseTTLClassAndType()V

    .line 365
    iget v5, p0, Lorg/xbill/DNS/Master;->currentType:I

    iget v6, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    iget-wide v7, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    iget-object v9, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    iget-object v10, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    move-object v4, v1

    invoke-static/range {v4 .. v10}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    .line 367
    iget-boolean v4, p0, Lorg/xbill/DNS/Master;->needSOATTL:Z

    if-eqz v4, :cond_14

    .line 368
    check-cast v2, Lorg/xbill/DNS/SOARecord;

    invoke-virtual {v2}, Lorg/xbill/DNS/SOARecord;->getMinimum()J

    move-result-wide v4

    .line 369
    .local v4, "ttl":J
    iget-object v2, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v2, v4, v5}, Lorg/xbill/DNS/Record;->setTTL(J)V

    .line 370
    iput-wide v4, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    .line 371
    iput-boolean v3, p0, Lorg/xbill/DNS/Master;->needSOATTL:Z

    .line 373
    .end local v4    # "ttl":J
    :cond_14
    iget-object v2, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    return-object v2
.end method

.method public expandGenerate(Z)V
    .locals 1
    .param p1, "wantExpand"    # Z

    .line 406
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Master;->noExpandGenerate:Z

    .line 407
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->close()V

    .line 426
    :cond_0
    return-void
.end method

.method public generators()Ljava/util/Iterator;
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 417
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 419
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public nextRecord()Lorg/xbill/DNS/Record;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    .line 388
    .local v0, "rec":Lorg/xbill/DNS/Record;
    :try_start_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Master;->_nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 391
    if-nez v0, :cond_0

    .line 392
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->close()V

    .line 395
    :cond_0
    return-object v0

    .line 391
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 392
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->close()V

    :cond_1
    throw v1
.end method
