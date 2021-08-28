.class public Lorg/xbill/DNS/DNSOutput;
.super Ljava/lang/Object;
.source "DNSOutput.java"


# instance fields
.field private array:[B

.field private pos:I

.field private saved_pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/DNSOutput;->saved_pos:I

    .line 27
    return-void
.end method

.method private check(JI)V
    .locals 5
    .param p1, "val"    # J
    .param p3, "bits"    # I

    .line 47
    const-wide/16 v0, 0x1

    .line 48
    .local v0, "max":J
    shl-long/2addr v0, p3

    .line 49
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 53
    return-void

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v4, " out of range for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " bit value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private need(I)V
    .locals 5
    .param p1, "n"    # I

    .line 57
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    array-length v1, v0

    iget v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    sub-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 61
    .local v0, "newsize":I
    add-int v1, v2, p1

    if-ge v0, v1, :cond_1

    .line 62
    add-int v0, v2, p1

    .line 64
    :cond_1
    new-array v1, v0, [B

    .line 65
    .local v1, "newarray":[B
    iget-object v2, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v3, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object v1, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    .line 67
    return-void
.end method


# virtual methods
.method public current()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    return v0
.end method

.method public jump(I)V
    .locals 2
    .param p1, "index"    # I

    .line 76
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    if-gt p1, v0, :cond_0

    .line 80
    iput p1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    .line 81
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot jump past end of data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restore()V
    .locals 2

    .line 97
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->saved_pos:I

    if-ltz v0, :cond_0

    .line 100
    iput v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/DNSOutput;->saved_pos:I

    .line 102
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save()V
    .locals 1

    .line 89
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    iput v0, p0, Lorg/xbill/DNS/DNSOutput;->saved_pos:I

    .line 90
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .line 198
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    new-array v1, v0, [B

    .line 199
    .local v1, "out":[B
    iget-object v2, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    return-object v1
.end method

.method public writeByteArray([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 175
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 176
    return-void
.end method

.method public writeByteArray([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 164
    invoke-direct {p0, p3}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 165
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    .line 167
    return-void
.end method

.method public writeCountedString([B)V
    .locals 4
    .param p1, "s"    # [B

    .line 185
    array-length v0, p1

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 188
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 189
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    array-length v3, p1

    and-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 190
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 191
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid counted string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeU16(I)V
    .locals 4
    .param p1, "val"    # I

    .line 121
    int-to-long v0, p1

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->check(JI)V

    .line 122
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 123
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 124
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 125
    return-void
.end method

.method public writeU16At(II)V
    .locals 3
    .param p1, "val"    # I
    .param p2, "where"    # I

    .line 134
    int-to-long v0, p1

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->check(JI)V

    .line 135
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v0, v0, -0x2

    if-gt p2, v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "where":I
    .local v1, "where":I
    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    .line 139
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "where":I
    .restart local p2    # "where":I
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 140
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot write past end of data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeU32(J)V
    .locals 7
    .param p1, "val"    # J

    .line 148
    const/16 v0, 0x20

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/DNSOutput;->check(JI)V

    .line 149
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 150
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    const/16 v3, 0x18

    ushr-long v3, p1, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 151
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 152
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    const/16 v3, 0x8

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 153
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    and-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 154
    return-void
.end method

.method public writeU8(I)V
    .locals 3
    .param p1, "val"    # I

    .line 110
    int-to-long v0, p1

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->check(JI)V

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 112
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 113
    return-void
.end method
