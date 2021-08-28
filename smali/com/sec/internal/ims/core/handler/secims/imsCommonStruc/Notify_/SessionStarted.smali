.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
.super Lcom/google/flatbuffers/Table;
.source "SessionStarted.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addAllowHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "allowHdrOffset"    # I

    .line 65
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addDisplayName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "displayNameOffset"    # I

    .line 69
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addImError(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "imErrorOffset"    # I

    .line 61
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addIsChatbotRole(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "isChatbotRole"    # Z

    .line 68
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static addIsMsgFallbackSupported(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "isMsgFallbackSupported"    # Z

    .line 67
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static addIsMsgRevokeSupported(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "isMsgRevokeSupported"    # Z

    .line 66
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static addRetryHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "retryHdrOffset"    # I

    .line 63
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "sessionHandle"    # J

    .line 60
    long-to-int v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addSessionUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "sessionUriOffset"    # I

    .line 62
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "warningHdrOffset"    # I

    .line 64
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createSessionStarted(Lcom/google/flatbuffers/FlatBufferBuilder;JIIIIIZZZI)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "session_handle"    # J
    .param p3, "im_errorOffset"    # I
    .param p4, "session_uriOffset"    # I
    .param p5, "retry_hdrOffset"    # I
    .param p6, "warning_hdrOffset"    # I
    .param p7, "allow_hdrOffset"    # I
    .param p8, "is_msg_revoke_supported"    # Z
    .param p9, "is_msg_fallback_supported"    # Z
    .param p10, "is_chatbot_role"    # Z
    .param p11, "display_nameOffset"    # I

    .line 45
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 46
    invoke-static {p0, p11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->addDisplayName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 47
    invoke-static {p0, p7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->addAllowHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 48
    invoke-static {p0, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 49
    invoke-static {p0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->addRetryHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 50
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->addSessionUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 51
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->addImError(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 52
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 53
    invoke-static {p0, p10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->addIsChatbotRole(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 54
    invoke-static {p0, p9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->addIsMsgFallbackSupported(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 55
    invoke-static {p0, p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->addIsMsgRevokeSupported(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 56
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->endSessionStarted(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endSessionStarted(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 71
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 72
    .local v0, "o":I
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    .line 73
    return v0
.end method

.method public static getRootAsSessionStarted(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->getRootAsSessionStarted(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsSessionStarted(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    move-result-object v0

    return-object v0
.end method

.method public static startSessionStarted(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 59
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 14
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb_pos:I

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public allowHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;
    .locals 1

    .line 26
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->allowHdr(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;

    move-result-object v0

    return-object v0
.end method

.method public allowHdr(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;
    .locals 3
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;

    .line 27
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public displayName()Ljava/lang/String;
    .locals 2

    .line 31
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public displayNameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 32
    const/16 v0, 0x16

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;
    .locals 1

    .line 18
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->imError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v0

    return-object v0
.end method

.method public imError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;
    .locals 3
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    .line 19
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public isChatbotRole()Z
    .locals 4

    .line 30
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMsgFallbackSupported()Z
    .locals 4

    .line 29
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMsgRevokeSupported()Z
    .locals 4

    .line 28
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public retryHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;
    .locals 1

    .line 22
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->retryHdr(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;

    move-result-object v0

    return-object v0
.end method

.method public retryHdr(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;
    .locals 3
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;

    .line 23
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public sessionHandle()J
    .locals 5

    .line 17
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb_pos:I

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

.method public sessionUri()Ljava/lang/String;
    .locals 2

    .line 20
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public sessionUriAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 21
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;
    .locals 1

    .line 24
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->warningHdr(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v0

    return-object v0
.end method

.method public warningHdr(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;
    .locals 3
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    .line 25
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
