.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;
.super Lcom/google/flatbuffers/Table;
.source "Cert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addCertData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "certDataOffset"    # I

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createCert(Lcom/google/flatbuffers/FlatBufferBuilder;I)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "cert_dataOffset"    # I

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 24
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->addCertData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 25
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->endCert(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static createCertDataVector(Lcom/google/flatbuffers/FlatBufferBuilder;[B)I
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [B

    .line 30
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

.method public static endCert(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 33
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 34
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsCert(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->getRootAsCert(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsCert(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;

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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;

    move-result-object v0

    return-object v0
.end method

.method public static startCert(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method

.method public static startCertDataVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 14
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->bb_pos:I

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public certData(I)I
    .locals 4
    .param p1, "j"    # I

    .line 17
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->__vector(I)I

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

.method public certDataAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 19
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public certDataLength()I
    .locals 2

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->__vector_len(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
