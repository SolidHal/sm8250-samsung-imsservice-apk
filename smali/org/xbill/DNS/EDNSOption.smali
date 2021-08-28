.class public abstract Lorg/xbill/DNS/EDNSOption;
.super Ljava/lang/Object;
.source "EDNSOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/EDNSOption$Code;
    }
.end annotation


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "code"

    invoke-static {v0, p1}, Lorg/xbill/DNS/Record;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/EDNSOption;->code:I

    .line 66
    return-void
.end method

.method static fromWire(Lorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/EDNSOption;
    .locals 4
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    .line 121
    .local v0, "code":I
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 122
    .local v1, "length":I
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_2

    .line 124
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->saveActive()I

    move-result v2

    .line 125
    .local v2, "save":I
    invoke-virtual {p0, v1}, Lorg/xbill/DNS/DNSInput;->setActive(I)V

    .line 127
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    .line 135
    new-instance v3, Lorg/xbill/DNS/GenericEDNSOption;

    invoke-direct {v3, v0}, Lorg/xbill/DNS/GenericEDNSOption;-><init>(I)V

    .local v3, "option":Lorg/xbill/DNS/EDNSOption;
    goto :goto_0

    .line 132
    .end local v3    # "option":Lorg/xbill/DNS/EDNSOption;
    :cond_0
    new-instance v3, Lorg/xbill/DNS/ClientSubnetOption;

    invoke-direct {v3}, Lorg/xbill/DNS/ClientSubnetOption;-><init>()V

    .line 133
    .restart local v3    # "option":Lorg/xbill/DNS/EDNSOption;
    goto :goto_0

    .line 129
    .end local v3    # "option":Lorg/xbill/DNS/EDNSOption;
    :cond_1
    new-instance v3, Lorg/xbill/DNS/NSIDOption;

    invoke-direct {v3}, Lorg/xbill/DNS/NSIDOption;-><init>()V

    .line 130
    .restart local v3    # "option":Lorg/xbill/DNS/EDNSOption;
    nop

    .line 138
    :goto_0
    invoke-virtual {v3, p0}, Lorg/xbill/DNS/EDNSOption;->optionFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 139
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/DNSInput;->restoreActive(I)V

    .line 141
    return-object v3

    .line 123
    .end local v2    # "save":I
    .end local v3    # "option":Lorg/xbill/DNS/EDNSOption;
    :cond_2
    new-instance v2, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v3, "truncated option"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static fromWire([B)Lorg/xbill/DNS/EDNSOption;
    .locals 1
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-static {v0}, Lorg/xbill/DNS/EDNSOption;->fromWire(Lorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/EDNSOption;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/xbill/DNS/EDNSOption;

    if-nez v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/xbill/DNS/EDNSOption;

    .line 196
    .local v1, "opt":Lorg/xbill/DNS/EDNSOption;
    iget v2, p0, Lorg/xbill/DNS/EDNSOption;->code:I

    iget v3, v1, Lorg/xbill/DNS/EDNSOption;->code:I

    if-eq v2, v3, :cond_1

    .line 197
    return v0

    .line 198
    :cond_1
    invoke-virtual {p0}, Lorg/xbill/DNS/EDNSOption;->getData()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/xbill/DNS/EDNSOption;->getData()[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 194
    .end local v1    # "opt":Lorg/xbill/DNS/EDNSOption;
    :cond_2
    :goto_0
    return v0
.end method

.method public getCode()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/xbill/DNS/EDNSOption;->code:I

    return v0
.end method

.method getData()[B
    .locals 2

    .line 98
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 99
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/EDNSOption;->optionToWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 100
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 5

    .line 206
    invoke-virtual {p0}, Lorg/xbill/DNS/EDNSOption;->getData()[B

    move-result-object v0

    .line 207
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 208
    .local v1, "hashval":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 209
    shl-int/lit8 v3, v1, 0x3

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method abstract optionFromWire(Lorg/xbill/DNS/DNSInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract optionToString()Ljava/lang/String;
.end method

.method abstract optionToWire(Lorg/xbill/DNS/DNSOutput;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    iget v1, p0, Lorg/xbill/DNS/EDNSOption;->code:I

    invoke-static {v1}, Lorg/xbill/DNS/EDNSOption$Code;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {p0}, Lorg/xbill/DNS/EDNSOption;->optionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;

    .line 167
    iget v0, p0, Lorg/xbill/DNS/EDNSOption;->code:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 168
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    .line 169
    .local v0, "lengthPosition":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 170
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/EDNSOption;->optionToWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 171
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 172
    .local v1, "length":I
    invoke-virtual {p1, v1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    .line 173
    return-void
.end method

.method public toWire()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 182
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/EDNSOption;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 183
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
