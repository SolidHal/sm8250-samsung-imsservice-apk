.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;
.super Lcom/google/flatbuffers/Table;
.source "ImSessionInvited.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addIsDeferred(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "isDeferred"    # Z

    .line 48
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static addIsForStoredNoti(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "isForStoredNoti"    # Z

    .line 49
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "messageParamOffset"    # I

    .line 46
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addRemoteMsrpAddr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "remoteMsrpAddrOffset"    # I

    .line 47
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addSession(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "sessionOffset"    # I

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addUserHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "userHandle"    # J

    .line 50
    long-to-int v0, p1

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static createImSessionInvited(Lcom/google/flatbuffers/FlatBufferBuilder;IIIZZJ)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "sessionOffset"    # I
    .param p2, "message_paramOffset"    # I
    .param p3, "remote_msrp_addrOffset"    # I
    .param p4, "is_deferred"    # Z
    .param p5, "is_for_stored_noti"    # Z
    .param p6, "user_handle"    # J

    .line 34
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 35
    invoke-static {p0, p6, p7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->addUserHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 36
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->addRemoteMsrpAddr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 37
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 38
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 39
    invoke-static {p0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->addIsForStoredNoti(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 40
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->addIsDeferred(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 41
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->endImSessionInvited(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endImSessionInvited(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 52
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 53
    .local v0, "o":I
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    .line 54
    return v0
.end method

.method public static getRootAsImSessionInvited(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->getRootAsImSessionInvited(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsImSessionInvited(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;

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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;

    move-result-object v0

    return-object v0
.end method

.method public static startImSessionInvited(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 44
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 14
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb_pos:I

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public isDeferred()Z
    .locals 4

    .line 23
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isForStoredNoti()Z
    .locals 4

    .line 24
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public messageParam()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;
    .locals 1

    .line 19
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->messageParam(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object v0

    return-object v0
.end method

.method public messageParam(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;
    .locals 3
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    .line 20
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public remoteMsrpAddr()Ljava/lang/String;
    .locals 2

    .line 21
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public remoteMsrpAddrAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 22
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public session()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;
    .locals 1

    .line 17
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->session(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;

    move-result-object v0

    return-object v0
.end method

.method public session(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;
    .locals 3
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public userHandle()J
    .locals 5

    .line 25
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->bb_pos:I

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
