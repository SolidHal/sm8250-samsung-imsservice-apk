.class public Lorg/xbill/DNS/DNSInput;
.super Ljava/lang/Object;
.source "DNSInput.java"


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private saved_end:I

.field private saved_pos:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->saved_pos:I

    .line 38
    iput v0, p0, Lorg/xbill/DNS/DNSInput;->saved_end:I

    .line 39
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "input"    # [B

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->saved_pos:I

    .line 27
    iput v0, p0, Lorg/xbill/DNS/DNSInput;->saved_end:I

    .line 28
    return-void
.end method

.method private require(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 63
    return-void

    .line 61
    :cond_0
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "end of input"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearActive()V
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 87
    return-void
.end method

.method public current()I
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public jump(I)V
    .locals 2
    .param p1, "index"    # I

    .line 120
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 126
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot jump past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteArray([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 196
    invoke-direct {p0, p3}, Lorg/xbill/DNS/DNSInput;->require(I)V

    .line 197
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 198
    return-void
.end method

.method public readByteArray()[B
    .locals 4

    .line 220
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    .line 221
    .local v0, "len":I
    new-array v1, v0, [B

    .line 222
    .local v1, "out":[B
    iget-object v2, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 223
    return-object v1
.end method

.method public readByteArray(I)[B
    .locals 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1}, Lorg/xbill/DNS/DNSInput;->require(I)V

    .line 208
    new-array v0, p1, [B

    .line 209
    .local v0, "out":[B
    iget-object v1, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 210
    return-object v0
.end method

.method public readCountedString()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 235
    .local v0, "len":I
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v1

    return-object v1
.end method

.method public readU16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSInput;->require(I)V

    .line 172
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public readU32()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSInput;->require(I)V

    .line 183
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readU8()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSInput;->require(I)V

    .line 161
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public remaining()I
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public restore()V
    .locals 2

    .line 144
    iget v0, p0, Lorg/xbill/DNS/DNSInput;->saved_pos:I

    if-ltz v0, :cond_0

    .line 147
    iget-object v1, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/xbill/DNS/DNSInput;->saved_end:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->saved_pos:I

    .line 150
    iput v0, p0, Lorg/xbill/DNS/DNSInput;->saved_end:I

    .line 151
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreActive(I)V
    .locals 2
    .param p1, "pos"    # I

    .line 105
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 110
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot set active region past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save()V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->saved_pos:I

    .line 136
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->saved_end:I

    .line 137
    return-void
.end method

.method public saveActive()I
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public setActive(I)V
    .locals 2
    .param p1, "len"    # I

    .line 73
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 78
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot set active region past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
