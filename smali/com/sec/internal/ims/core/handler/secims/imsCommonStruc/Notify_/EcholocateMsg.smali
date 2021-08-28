.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;
.super Lcom/google/flatbuffers/Table;
.source "EcholocateMsg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addEcholocateRtpData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "echolocateRtpDataOffset"    # I

    .line 41
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addEcholocateSignalData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "echolocateSignalDataOffset"    # I

    .line 40
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "handle"    # J

    .line 38
    long-to-int v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addMsgtype(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "msgtype"    # I

    .line 39
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static createEcholocateMsg(Lcom/google/flatbuffers/FlatBufferBuilder;JIII)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "handle"    # J
    .param p3, "msgtype"    # I
    .param p4, "echolocate_signal_dataOffset"    # I
    .param p5, "echolocate_rtp_dataOffset"    # I

    .line 29
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 30
    invoke-static {p0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->addEcholocateRtpData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 31
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->addEcholocateSignalData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 32
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->addMsgtype(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 33
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 34
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->endEcholocateMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endEcholocateMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 44
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsEcholocateMsg(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->getRootAsEcholocateMsg(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsEcholocateMsg(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;

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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;

    move-result-object v0

    return-object v0
.end method

.method public static startEcholocateMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 37
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 14
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->bb_pos:I

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public echolocateRtpData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;
    .locals 1

    .line 21
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->echolocateRtpData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;

    move-result-object v0

    return-object v0
.end method

.method public echolocateRtpData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;
    .locals 3
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;

    .line 22
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public echolocateSignalData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;
    .locals 1

    .line 19
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->echolocateSignalData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;

    move-result-object v0

    return-object v0
.end method

.method public echolocateSignalData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;
    .locals 3
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;

    .line 20
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public handle()J
    .locals 5

    .line 17
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->bb_pos:I

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

.method public msgtype()I
    .locals 3

    .line 18
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
