.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;
.super Lcom/google/flatbuffers/Table;
.source "RequestClearAllCallInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addCmcType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "cmcType"    # J

    .line 27
    long-to-int v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static createRequestClearAllCallInternal(Lcom/google/flatbuffers/FlatBufferBuilder;J)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "cmc_type"    # J

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 22
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->addCmcType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 23
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->endRequestClearAllCallInternal(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endRequestClearAllCallInternal(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 29
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 30
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsRequestClearAllCallInternal(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->getRootAsRequestClearAllCallInternal(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsRequestClearAllCallInternal(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;

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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;

    move-result-object v0

    return-object v0
.end method

.method public static startRequestClearAllCallInternal(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 14
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->bb_pos:I

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public cmcType()J
    .locals 5

    .line 17
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->bb_pos:I

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
