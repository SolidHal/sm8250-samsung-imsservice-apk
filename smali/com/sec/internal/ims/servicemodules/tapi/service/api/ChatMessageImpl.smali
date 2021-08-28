.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;
.super Lcom/gsma/services/rcs/chat/IChatMessage$Stub;
.source "ChatMessageImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mMsgId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private convertMessageStatus(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .locals 1
    .param p1, "status"    # I

    .line 177
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 178
    .local v0, "result":Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 204
    :pswitch_0
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->REJECTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 205
    goto :goto_0

    .line 201
    :pswitch_1
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->QUEUED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 202
    goto :goto_0

    .line 198
    :pswitch_2
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAY_REPORT_REQUESTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 199
    goto :goto_0

    .line 195
    :pswitch_3
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->QUEUED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 196
    goto :goto_0

    .line 192
    :pswitch_4
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 193
    goto :goto_0

    .line 189
    :pswitch_5
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENT:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 190
    goto :goto_0

    .line 186
    :pswitch_6
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENDING:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 187
    goto :goto_0

    .line 183
    :pswitch_7
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 184
    goto :goto_0

    .line 180
    :pswitch_8
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DELIVERED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 181
    nop

    .line 209
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getChatId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 74
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 75
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 78
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 85
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 86
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "contact":Ljava/lang/String;
    new-instance v3, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v3, v2}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 90
    .end local v2    # "contact":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getContent()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 97
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 98
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 101
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDirection()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 108
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 109
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->ordinal()I

    move-result v2

    return v2

    .line 112
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getId()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 119
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 120
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 123
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getMaapTrafficType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 147
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 148
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "maapTrafficType":Ljava/lang/String;
    return-object v2

    .line 152
    .end local v2    # "maapTrafficType":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 130
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 131
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 134
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getReasonCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->toInt()I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 165
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 166
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->ordinal()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->convertMessageStatus(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->toInt()I

    move-result v2

    return v2

    .line 169
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getTimestamp()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 216
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 217
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v2

    return-wide v2

    .line 220
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getTimestampDelivered()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 48
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 49
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDeliveredTimestamp()J

    move-result-wide v2

    return-wide v2

    .line 52
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getTimestampDisplayed()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 63
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 64
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDisplayedTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 67
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getTimestampSent()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 227
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 228
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getSentTimestamp()J

    move-result-wide v2

    return-wide v2

    .line 231
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public isExpiredDelivery()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 245
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 246
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v2

    .line 248
    .local v2, "status":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v2, v3, :cond_0

    .line 249
    const/4 v3, 0x1

    return v3

    .line 252
    .end local v2    # "status":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isRead()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    const/4 v0, 0x1

    return v0
.end method
