.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;
.super Lcom/google/flatbuffers/Table;
.source "RequestSendImNotificationStatus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "contributionIdOffset"    # I

    .line 75
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "conversationIdOffset"    # I

    .line 74
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addCpimDateTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "cpimDateTimeOffset"    # I

    .line 81
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addDeviceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "deviceIdOffset"    # I

    .line 77
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addExtension(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "extensionOffset"    # I

    .line 78
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addIsBotSessionAnonymized(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "isBotSessionAnonymized"    # Z

    .line 80
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static addIsGroupChat(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "isGroupChat"    # Z

    .line 79
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static addNotifications(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "notificationsOffset"    # I

    .line 69
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "registrationHandle"    # J

    .line 72
    long-to-int v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addService(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "service"    # I

    .line 76
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "sessionId"    # J

    .line 68
    long-to-int v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "uriOffset"    # I

    .line 73
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createNotificationsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 70
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static createRequestSendImNotificationStatus(Lcom/google/flatbuffers/FlatBufferBuilder;JIJIIIIIIZZI)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "session_id"    # J
    .param p3, "notificationsOffset"    # I
    .param p4, "registration_handle"    # J
    .param p6, "uriOffset"    # I
    .param p7, "conversation_idOffset"    # I
    .param p8, "contribution_idOffset"    # I
    .param p9, "service"    # I
    .param p10, "device_idOffset"    # I
    .param p11, "extensionOffset"    # I
    .param p12, "is_group_chat"    # Z
    .param p13, "is_bot_session_anonymized"    # Z
    .param p14, "cpim_date_timeOffset"    # I

    .line 51
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 52
    invoke-static {p0, p14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addCpimDateTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 53
    invoke-static {p0, p11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addExtension(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 54
    invoke-static {p0, p10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addDeviceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 55
    invoke-static {p0, p9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addService(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 56
    invoke-static {p0, p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 57
    invoke-static {p0, p7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 58
    invoke-static {p0, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 59
    invoke-static {p0, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 60
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addNotifications(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 61
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 62
    invoke-static {p0, p13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addIsBotSessionAnonymized(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 63
    invoke-static {p0, p12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addIsGroupChat(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 64
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->endRequestSendImNotificationStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endRequestSendImNotificationStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 84
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsRequestSendImNotificationStatus(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->getRootAsRequestSendImNotificationStatus(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsRequestSendImNotificationStatus(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;

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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;

    move-result-object v0

    return-object v0
.end method

.method public static startNotificationsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 71
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startRequestSendImNotificationStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 67
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 14
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb_pos:I

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public contributionId()Ljava/lang/String;
    .locals 2

    .line 26
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public contributionIdAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 27
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public conversationId()Ljava/lang/String;
    .locals 2

    .line 24
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public conversationIdAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 25
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public cpimDateTime()Ljava/lang/String;
    .locals 2

    .line 35
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public cpimDateTimeAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 36
    const/16 v0, 0x1a

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public deviceId()Ljava/lang/String;
    .locals 2

    .line 29
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public deviceIdAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 30
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public extension()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;
    .locals 1

    .line 31
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->extension(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;

    move-result-object v0

    return-object v0
.end method

.method public extension(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;
    .locals 3
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;

    .line 32
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public isBotSessionAnonymized()Z
    .locals 4

    .line 34
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isGroupChat()Z
    .locals 4

    .line 33
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public notifications(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;
    .locals 1
    .param p1, "j"    # I

    .line 18
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->notifications(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;

    move-result-object v0

    return-object v0
.end method

.method public notifications(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;
    .locals 3
    .param p1, "obj"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;
    .param p2, "j"    # I

    .line 19
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public notificationsLength()I
    .locals 2

    .line 20
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__vector_len(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public registrationHandle()J
    .locals 5

    .line 21
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb_pos:I

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

.method public service()I
    .locals 3

    .line 28
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public sessionId()J
    .locals 5

    .line 17
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb_pos:I

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

    .line 22
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public uriAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 23
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
