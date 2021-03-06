.class public Lorg/xbill/DNS/OPTRecord;
.super Lorg/xbill/DNS/Record;
.source "OPTRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x56cc86868403f582L


# instance fields
.field private options:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "payloadSize"    # I
    .param p2, "xrcode"    # I
    .param p3, "version"    # I

    .line 86
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/OPTRecord;-><init>(IIIILjava/util/List;)V

    .line 87
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "payloadSize"    # I
    .param p2, "xrcode"    # I
    .param p3, "version"    # I
    .param p4, "flags"    # I

    .line 77
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/OPTRecord;-><init>(IIIILjava/util/List;)V

    .line 78
    return-void
.end method

.method public constructor <init>(IIIILjava/util/List;)V
    .locals 6
    .param p1, "payloadSize"    # I
    .param p2, "xrcode"    # I
    .param p3, "version"    # I
    .param p4, "flags"    # I
    .param p5, "options"    # Ljava/util/List;

    .line 52
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    const/16 v2, 0x29

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 53
    const-string/jumbo v0, "payloadSize"

    invoke-static {v0, p1}, Lorg/xbill/DNS/OPTRecord;->checkU16(Ljava/lang/String;I)I

    .line 54
    const-string/jumbo v0, "xrcode"

    invoke-static {v0, p2}, Lorg/xbill/DNS/OPTRecord;->checkU8(Ljava/lang/String;I)I

    .line 55
    const-string/jumbo v0, "version"

    invoke-static {v0, p3}, Lorg/xbill/DNS/OPTRecord;->checkU8(Ljava/lang/String;I)I

    .line 56
    const-string v0, "flags"

    invoke-static {v0, p4}, Lorg/xbill/DNS/OPTRecord;->checkU16(Ljava/lang/String;I)I

    .line 57
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    int-to-long v2, p3

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    .line 58
    if-eqz p5, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    .line 200
    invoke-super {p0, p1}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    move-object v2, p1

    check-cast v2, Lorg/xbill/DNS/OPTRecord;

    iget-wide v2, v2, Lorg/xbill/DNS/OPTRecord;->ttl:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getExtendedRcode()I
    .locals 3

    .line 135
    iget-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    const/16 v2, 0x18

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getFlags()I
    .locals 4

    .line 147
    iget-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 33
    new-instance v0, Lorg/xbill/DNS/OPTRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/OPTRecord;-><init>()V

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    if-nez v0, :cond_0

    .line 167
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 168
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Ljava/util/List;
    .locals 4
    .param p1, "code"    # I

    .line 177
    iget-object v0, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 179
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 180
    .local v0, "list":Ljava/util/List;
    iget-object v1, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/EDNSOption;

    .line 182
    .local v2, "opt":Lorg/xbill/DNS/EDNSOption;
    invoke-virtual {v2}, Lorg/xbill/DNS/EDNSOption;->getCode()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 183
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v0, v3, :cond_1

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 185
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v2    # "opt":Lorg/xbill/DNS/EDNSOption;
    :cond_2
    goto :goto_0

    .line 188
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_3
    return-object v0
.end method

.method public getPayloadSize()I
    .locals 1

    .line 126
    iget v0, p0, Lorg/xbill/DNS/OPTRecord;->dclass:I

    return v0
.end method

.method public getVersion()I
    .locals 4

    .line 141
    iget-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
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

    .line 101
    const-string v0, "no text format defined for OPT"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    .line 94
    invoke-static {p1}, Lorg/xbill/DNS/EDNSOption;->fromWire(Lorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/EDNSOption;

    move-result-object v0

    .line 95
    .local v0, "option":Lorg/xbill/DNS/EDNSOption;
    iget-object v1, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v0    # "option":Lorg/xbill/DNS/EDNSOption;
    goto :goto_0

    .line 97
    :cond_1
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 110
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :cond_0
    const-string v1, " ; payload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {p0}, Lorg/xbill/DNS/OPTRecord;->getPayloadSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    const-string v1, ", xrcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {p0}, Lorg/xbill/DNS/OPTRecord;->getExtendedRcode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 116
    const-string v1, ", version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {p0}, Lorg/xbill/DNS/OPTRecord;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 118
    const-string v1, ", flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {p0}, Lorg/xbill/DNS/OPTRecord;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 152
    iget-object v0, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    if-nez v0, :cond_0

    .line 153
    return-void

    .line 154
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 155
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/EDNSOption;

    .line 157
    .local v1, "option":Lorg/xbill/DNS/EDNSOption;
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/EDNSOption;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 158
    .end local v1    # "option":Lorg/xbill/DNS/EDNSOption;
    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method
