.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;
.super Lcom/google/flatbuffers/Table;
.source "GroupChatInfoUpdated.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "infoOffset"    # I

    .line 36
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addUaHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "uaHandle"    # J

    .line 37
    long-to-int v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "uriOffset"    # I

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createGroupChatInfoUpdated(Lcom/google/flatbuffers/FlatBufferBuilder;IIJ)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "uriOffset"    # I
    .param p2, "infoOffset"    # I
    .param p3, "ua_handle"    # J

    .line 27
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 28
    invoke-static {p0, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->addUaHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 29
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->addInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 30
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 31
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->endGroupChatInfoUpdated(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endGroupChatInfoUpdated(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 39
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 40
    .local v0, "o":I
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    .line 41
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    .line 42
    return v0
.end method

.method public static getRootAsGroupChatInfoUpdated(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->getRootAsGroupChatInfoUpdated(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsGroupChatInfoUpdated(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;

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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;

    move-result-object v0

    return-object v0
.end method

.method public static startGroupChatInfoUpdated(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 34
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 14
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->bb_pos:I

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public info()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;
    .locals 1

    .line 19
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->info(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;

    move-result-object v0

    return-object v0
.end method

.method public info(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;
    .locals 3
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;

    .line 20
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public uaHandle()J
    .locals 5

    .line 21
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->bb_pos:I

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

.method public uri()Ljava/lang/String;
    .locals 2

    .line 17
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public uriAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 18
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
