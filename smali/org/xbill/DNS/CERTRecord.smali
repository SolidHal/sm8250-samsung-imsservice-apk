.class public Lorg/xbill/DNS/CERTRecord;
.super Lorg/xbill/DNS/Record;
.source "CERTRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/CERTRecord$CertificateType;
    }
.end annotation


# static fields
.field public static final OID:I = 0xfe

.field public static final PGP:I = 0x3

.field public static final PKIX:I = 0x1

.field public static final SPKI:I = 0x2

.field public static final URI:I = 0xfd

.field private static final serialVersionUID:J = 0x4219a095e1a12903L


# instance fields
.field private alg:I

.field private cert:[B

.field private certType:I

.field private keyTag:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "certType"    # I
    .param p6, "keyTag"    # I
    .param p7, "alg"    # I
    .param p8, "cert"    # [B

    .line 131
    const/16 v2, 0x25

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 132
    const-string v0, "certType"

    invoke-static {v0, p5}, Lorg/xbill/DNS/CERTRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/CERTRecord;->certType:I

    .line 133
    const-string v0, "keyTag"

    invoke-static {v0, p6}, Lorg/xbill/DNS/CERTRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/CERTRecord;->keyTag:I

    .line 134
    const-string v0, "alg"

    invoke-static {v0, p7}, Lorg/xbill/DNS/CERTRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/CERTRecord;->alg:I

    .line 135
    iput-object p8, p0, Lorg/xbill/DNS/CERTRecord;->cert:[B

    .line 136
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .line 205
    iget v0, p0, Lorg/xbill/DNS/CERTRecord;->alg:I

    return v0
.end method

.method public getCert()[B
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/xbill/DNS/CERTRecord;->cert:[B

    return-object v0
.end method

.method public getCertType()I
    .locals 1

    .line 189
    iget v0, p0, Lorg/xbill/DNS/CERTRecord;->certType:I

    return v0
.end method

.method public getKeyTag()I
    .locals 1

    .line 197
    iget v0, p0, Lorg/xbill/DNS/CERTRecord;->keyTag:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 117
    new-instance v0, Lorg/xbill/DNS/CERTRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/CERTRecord;-><init>()V

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

    .line 148
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "certTypeString":Ljava/lang/String;
    invoke-static {v0}, Lorg/xbill/DNS/CERTRecord$CertificateType;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/CERTRecord;->certType:I

    .line 150
    if-ltz v1, :cond_1

    .line 153
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/CERTRecord;->keyTag:I

    .line 154
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "algString":Ljava/lang/String;
    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC$Algorithm;->value(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/CERTRecord;->alg:I

    .line 156
    if-ltz v2, :cond_0

    .line 158
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getBase64()[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/CERTRecord;->cert:[B

    .line 159
    return-void

    .line 157
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 151
    .end local v1    # "algString":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid certificate type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/CERTRecord;->certType:I

    .line 141
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/CERTRecord;->keyTag:I

    .line 142
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/CERTRecord;->alg:I

    .line 143
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/CERTRecord;->cert:[B

    .line 144
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 5

    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/CERTRecord;->certType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 168
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    iget v2, p0, Lorg/xbill/DNS/CERTRecord;->keyTag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    iget v2, p0, Lorg/xbill/DNS/CERTRecord;->alg:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 172
    iget-object v2, p0, Lorg/xbill/DNS/CERTRecord;->cert:[B

    if-eqz v2, :cond_1

    .line 173
    const-string v2, "multiline"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const-string v1, " (\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    iget-object v1, p0, Lorg/xbill/DNS/CERTRecord;->cert:[B

    const/16 v2, 0x40

    const/4 v3, 0x1

    const-string v4, "\t"

    invoke-static {v1, v2, v4, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    iget-object v1, p0, Lorg/xbill/DNS/CERTRecord;->cert:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_1
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

    .line 218
    iget v0, p0, Lorg/xbill/DNS/CERTRecord;->certType:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 219
    iget v0, p0, Lorg/xbill/DNS/CERTRecord;->keyTag:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 220
    iget v0, p0, Lorg/xbill/DNS/CERTRecord;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 221
    iget-object v0, p0, Lorg/xbill/DNS/CERTRecord;->cert:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 222
    return-void
.end method
