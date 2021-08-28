.class public Lorg/xbill/DNS/SMIMEARecord;
.super Lorg/xbill/DNS/Record;
.source "SMIMEARecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/SMIMEARecord$MatchingType;,
        Lorg/xbill/DNS/SMIMEARecord$Selector;,
        Lorg/xbill/DNS/SMIMEARecord$CertificateUsage;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x16c354c9da0cd113L


# instance fields
.field private certificateAssociationData:[B

.field private certificateUsage:I

.field private matchingType:I

.field private selector:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "certificateUsage"    # I
    .param p6, "selector"    # I
    .param p7, "matchingType"    # I
    .param p8, "certificateAssociationData"    # [B

    .line 85
    const/16 v2, 0x35

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 86
    const-string v0, "certificateUsage"

    invoke-static {v0, p5}, Lorg/xbill/DNS/SMIMEARecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SMIMEARecord;->certificateUsage:I

    .line 87
    const-string/jumbo v0, "selector"

    invoke-static {v0, p6}, Lorg/xbill/DNS/SMIMEARecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SMIMEARecord;->selector:I

    .line 88
    const-string v0, "matchingType"

    invoke-static {v0, p7}, Lorg/xbill/DNS/SMIMEARecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SMIMEARecord;->matchingType:I

    .line 89
    const-string v0, "certificateAssociationData"

    const v1, 0xffff

    invoke-static {v0, p8, v1}, Lorg/xbill/DNS/SMIMEARecord;->checkByteArrayLength(Ljava/lang/String;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SMIMEARecord;->certificateAssociationData:[B

    .line 93
    return-void
.end method


# virtual methods
.method public final getCertificateAssociationData()[B
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/xbill/DNS/SMIMEARecord;->certificateAssociationData:[B

    return-object v0
.end method

.method public getCertificateUsage()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/xbill/DNS/SMIMEARecord;->certificateUsage:I

    return v0
.end method

.method public getMatchingType()I
    .locals 1

    .line 149
    iget v0, p0, Lorg/xbill/DNS/SMIMEARecord;->matchingType:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 67
    new-instance v0, Lorg/xbill/DNS/SMIMEARecord;

    invoke-direct {v0}, Lorg/xbill/DNS/SMIMEARecord;-><init>()V

    return-object v0
.end method

.method public getSelector()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/xbill/DNS/SMIMEARecord;->selector:I

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

    .line 105
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SMIMEARecord;->certificateUsage:I

    .line 106
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SMIMEARecord;->selector:I

    .line 107
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SMIMEARecord;->matchingType:I

    .line 108
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getHex()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SMIMEARecord;->certificateAssociationData:[B

    .line 109
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SMIMEARecord;->certificateUsage:I

    .line 98
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SMIMEARecord;->selector:I

    .line 99
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SMIMEARecord;->matchingType:I

    .line 100
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SMIMEARecord;->certificateAssociationData:[B

    .line 101
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/SMIMEARecord;->certificateUsage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 116
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget v2, p0, Lorg/xbill/DNS/SMIMEARecord;->selector:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    iget v2, p0, Lorg/xbill/DNS/SMIMEARecord;->matchingType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    iget-object v1, p0, Lorg/xbill/DNS/SMIMEARecord;->certificateAssociationData:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 128
    iget v0, p0, Lorg/xbill/DNS/SMIMEARecord;->certificateUsage:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 129
    iget v0, p0, Lorg/xbill/DNS/SMIMEARecord;->selector:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 130
    iget v0, p0, Lorg/xbill/DNS/SMIMEARecord;->matchingType:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 131
    iget-object v0, p0, Lorg/xbill/DNS/SMIMEARecord;->certificateAssociationData:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 132
    return-void
.end method
