.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;
.super Lcom/google/flatbuffers/Table;
.source "XdmStoreGbaData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addBtid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "btidOffset"    # I

    .line 54
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addGbaType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "gbaTypeOffset"    # I

    .line 56
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addHexProtocolId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "hexProtocolIdOffset"    # I

    .line 58
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addLifetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "lifetimeOffset"    # I

    .line 55
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addNafFqdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "nafFqdnOffset"    # I

    .line 57
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addNonce(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "nonceOffset"    # I

    .line 53
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addRid(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "rid"    # J

    .line 52
    long-to-int v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static createHexProtocolIdVector(Lcom/google/flatbuffers/FlatBufferBuilder;[B)I
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [B

    .line 59
    array-length v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(B)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static createXdmStoreGbaData(Lcom/google/flatbuffers/FlatBufferBuilder;JIIIIII)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "rid"    # J
    .param p3, "nonceOffset"    # I
    .param p4, "btidOffset"    # I
    .param p5, "lifetimeOffset"    # I
    .param p6, "gba_typeOffset"    # I
    .param p7, "naf_fqdnOffset"    # I
    .param p8, "hex_protocol_idOffset"    # I

    .line 40
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 41
    invoke-static {p0, p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->addHexProtocolId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 42
    invoke-static {p0, p7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->addNafFqdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 43
    invoke-static {p0, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->addGbaType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 44
    invoke-static {p0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->addLifetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 45
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->addBtid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 46
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->addNonce(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 47
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->addRid(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 48
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->endXdmStoreGbaData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endXdmStoreGbaData(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 62
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 63
    .local v0, "o":I
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    .line 64
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    .line 65
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    .line 66
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    .line 67
    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    .line 68
    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    .line 69
    return v0
.end method

.method public static getRootAsXdmStoreGbaData(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->getRootAsXdmStoreGbaData(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsXdmStoreGbaData(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;

    .line 13
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;

    move-result-object v0

    return-object v0
.end method

.method public static startHexProtocolIdVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startXdmStoreGbaData(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 51
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 14
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->bb_pos:I

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public btid()Ljava/lang/String;
    .locals 2

    .line 20
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public btidAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 21
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public gbaType()Ljava/lang/String;
    .locals 2

    .line 24
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public gbaTypeAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 25
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public hexProtocolId(I)I
    .locals 4
    .param p1, "j"    # I

    .line 28
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__vector(I)I

    move-result v2

    mul-int/lit8 v3, p1, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hexProtocolIdAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 30
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public hexProtocolIdLength()I
    .locals 2

    .line 29
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__vector_len(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public lifetime()Ljava/lang/String;
    .locals 2

    .line 22
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public lifetimeAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 23
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nafFqdn()Ljava/lang/String;
    .locals 2

    .line 26
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public nafFqdnAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 27
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nonce()Ljava/lang/String;
    .locals 2

    .line 18
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public nonceAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 19
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public rid()J
    .locals 5

    .line 17
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XdmStoreGbaData;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method
