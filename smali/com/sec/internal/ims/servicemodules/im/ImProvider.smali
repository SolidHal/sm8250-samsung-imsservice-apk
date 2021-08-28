.class public Lcom/sec/internal/ims/servicemodules/im/ImProvider;
.super Landroid/content/ContentProvider;
.source "ImProvider.java"


# static fields
.field private static final AUTO_ACCEPT_FT:[Ljava/lang/String;

.field private static final BOT_USER_AGENT_SETTING:[Ljava/lang/String;

.field private static final CHAT_COLUMNS:[Ljava/lang/String;

.field private static final FILE_TRANSFER_COLUMNS:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MESSAGE_COLUMNS:[Ljava/lang/String;

.field private static final MESSAGE_NOTIFICATIONS_COLUMNS:[Ljava/lang/String;

.field private static final PARTICIPANT_COLUMNS:[Ljava/lang/String;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.im"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 53
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 58
    const-string v2, "_id"

    const-string v3, "chat_id"

    const-string/jumbo v4, "sim_imsi"

    const-string v5, "is_group_chat"

    const-string v6, "is_ft_group_chat"

    const-string/jumbo v7, "status"

    const-string/jumbo v8, "subject"

    const-string v9, "is_muted"

    const-string v10, "max_participants_count"

    const-string v11, "imdn_notifications_availability"

    const-string/jumbo v12, "preferred_uri"

    const-string/jumbo v13, "own_sim_imsi"

    const-string v14, "is_chatbot_role"

    const-string v15, "conversation_id"

    const-string v16, "contribution_id"

    const-string/jumbo v17, "session_uri"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->CHAT_COLUMNS:[Ljava/lang/String;

    .line 77
    const-string v2, "_id"

    const-string v3, "is_filetransfer"

    const-string v4, "direction"

    const-string v5, "chat_id"

    const-string/jumbo v6, "remote_uri"

    const-string/jumbo v7, "sender_alias"

    const-string v8, "content_type"

    const-string v9, "inserted_timestamp"

    const-string v10, "body"

    const-string v11, "notification_disposition_mask"

    const-string v12, "notification_status"

    const-string/jumbo v13, "sent_timestamp"

    const-string v14, "delivered_timestamp"

    const-string v15, "displayed_timestamp"

    const-string v16, "message_type"

    const-string/jumbo v17, "status"

    const-string v18, "not_displayed_counter"

    const-string v19, "imdn_message_id"

    const-string v20, "maap_traffic_type"

    const-string v21, "messaging_tech"

    const-string/jumbo v22, "sim_imsi"

    const-string v23, "file_path"

    const-string v24, "file_size"

    const-string/jumbo v25, "state"

    const-string/jumbo v26, "reason"

    const-string v27, "bytes_transf"

    const-string v28, "ft_status"

    const-string/jumbo v29, "thumbnail_path"

    const-string v30, "is_resumable"

    const-string v31, "ext_info"

    filled-new-array/range {v2 .. v31}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->MESSAGE_COLUMNS:[Ljava/lang/String;

    .line 115
    const-string v2, "_id"

    const-string v3, "chat_id"

    const-string/jumbo v4, "remote_uri"

    const-string/jumbo v5, "sender_alias"

    const-string v6, "file_path"

    const-string v7, "file_size"

    const-string/jumbo v8, "state"

    const-string/jumbo v9, "reason"

    const-string v10, "direction"

    const-string v11, "message_type AS type"

    const-string v12, "inserted_timestamp"

    const-string v13, "bytes_transf"

    const-string v14, "content_type"

    const-string v15, "ft_status"

    const-string/jumbo v16, "thumbnail_path"

    const-string v17, "is_resumable"

    const-string v18, "delivered_timestamp"

    const-string v19, "file_disposition"

    const-string/jumbo v20, "playing_length"

    const-string v21, "ext_info"

    const-string v22, "imdn_message_id"

    const-string/jumbo v23, "sent_timestamp"

    const-string v24, "messaging_tech"

    const-string/jumbo v25, "sim_imsi"

    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->FILE_TRANSFER_COLUMNS:[Ljava/lang/String;

    .line 142
    const-string v2, "_id"

    const-string v3, "chat_id"

    const-string/jumbo v4, "status"

    const-string/jumbo v5, "type"

    const-string/jumbo v6, "uri"

    const-string v7, "alias"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->PARTICIPANT_COLUMNS:[Ljava/lang/String;

    .line 150
    const-string v1, "id"

    const-string v2, "imdn_id"

    const-string/jumbo v3, "sender_uri"

    const-string/jumbo v4, "status"

    const-string/jumbo v5, "timestamp"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->MESSAGE_NOTIFICATIONS_COLUMNS:[Ljava/lang/String;

    .line 157
    const-string v1, "_id"

    const-string/jumbo v2, "setting_value"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->AUTO_ACCEPT_FT:[Ljava/lang/String;

    .line 161
    const-string v1, "bot_user_agent"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->BOT_USER_AGENT_SETTING:[Ljava/lang/String;

    .line 167
    const-string v1, "com.samsung.rcs.im"

    const-string v2, "messages/*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "message/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "messagescount/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "chats"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "enrichedchats"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "chat/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "participants/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "unreadmessages/*"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "unreadmessagescount"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "unreadmessagescount/*"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "filetransfers/*"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "filetransfer/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "messageswithft/*"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "autoacceptft"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "messageswithftcount/*"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "settings"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "messagenotifications/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "chatidsbycontenttype/*"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "session"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "message"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "participant"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "clouddeletemessage/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "clouddeleteparticipant/#"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudinsertmessage"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudinsertparticipant"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudupdatemessage/#"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudupdateparticipant/#"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudquerymessagerowid/#"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudquerymessagechatid/*"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudquerymessageimdnid/*"

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudqueryparticipant/*"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudquerysessionid/#"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudquerysessionchatid/*"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudinsertsession"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudinsertnotification"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudupdatenotification/*"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cloudupdatesession/*"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "getreliableimage/*"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "botsetting"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 234
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    return-void
.end method

.method private buildAutoAcceptFtCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .line 683
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 684
    .local v0, "phoneId":I
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 685
    const-string v2, "ftautaccept"

    invoke-static {v2, v0}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 684
    invoke-static {v1, v2, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readLongParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 687
    .local v1, "value":J
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$_Hm-GrNbWrkSPdbrf7pQUJqFX84;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$_Hm-GrNbWrkSPdbrf7pQUJqFX84;

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 688
    .local v6, "simMnoName":Ljava/lang/String;
    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    const-string v3, "GenericIR92_US:CSpire"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 689
    const-wide/16 v1, 0x2

    .line 692
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v3

    if-nez v3, :cond_1

    .line 693
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    .line 696
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    move-result-object v3

    .line 697
    .local v3, "pref":Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAccept(Landroid/content/Context;I)I

    move-result v4

    .line 698
    .local v4, "accept":I
    if-ltz v4, :cond_2

    .line 699
    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildAutoAcceptFtCursor: override with user setting - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    int-to-long v1, v4

    .line 703
    :cond_2
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->AUTO_ACCEPT_FT:[Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 704
    .local v7, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    .line 705
    invoke-virtual {v8, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    .line 706
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 708
    return-object v7
.end method

.method private buildBotUserAgentCursor()Landroid/database/Cursor;
    .locals 9

    .line 717
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_MODEL:Ljava/lang/String;

    .line 718
    .local v0, "model":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    .line 720
    .local v1, "version":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    .line 721
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 722
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getUserAgent: ISimManager is null, return"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-object v3

    .line 726
    :cond_0
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    const-string/jumbo v5, "rcs_client_version"

    const-string v6, "6.0"

    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 729
    .local v4, "clientVersion":Ljava/lang/String;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 730
    .local v5, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v6, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x3

    if-nez v6, :cond_3

    sget-object v6, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/sec/internal/constants/Mno;->TMOBILE_CZ:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 733
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v1

    :goto_0
    move-object v1, v6

    goto :goto_3

    .line 731
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x8

    if-le v6, v8, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v1

    :goto_2
    move-object v1, v6

    .line 736
    :goto_3
    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 737
    new-array v3, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    const/4 v6, 0x1

    aput-object v1, v3, v6

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v6, "IM-client/OMA1.0 Samsung/%s-%s Samsung-RCS/%s"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 738
    .local v3, "useragent":Ljava/lang/String;
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->BOT_USER_AGENT_SETTING:[Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 739
    .local v6, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v6}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    .line 740
    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 741
    return-object v6

    .line 743
    .end local v3    # "useragent":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/MatrixCursor;
    :cond_5
    return-object v3
.end method

.method private buildChatCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .line 454
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->CHAT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 456
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "chatId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 458
    return-object v0

    .line 461
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    monitor-enter v2

    .line 462
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    .line 463
    .local v3, "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v3, :cond_1

    .line 464
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildChatCursor: Session not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    monitor-exit v2

    return-object v0

    .line 468
    :cond_1
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 469
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 470
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 471
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 472
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    if-eqz v5, :cond_2

    move-wide v10, v8

    goto :goto_0

    :cond_2
    move-wide v10, v6

    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 473
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 474
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatStateId()I

    move-result v5

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 475
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 476
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isMuted()Z

    move-result v5

    if-eqz v5, :cond_3

    move-wide v10, v8

    goto :goto_1

    :cond_3
    move-wide v10, v6

    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 477
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getMaxParticipantsCount()I

    move-result v5

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 478
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 479
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 480
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotRole()Z

    move-result v5

    if-eqz v5, :cond_4

    move-wide v6, v8

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 481
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 482
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 483
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 484
    nop

    .end local v3    # "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    monitor-exit v2

    .line 485
    return-object v0

    .line 484
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private buildIMFTCursorForBufferDBChatId(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 489
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildIMFTCursorForBufferDB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "idString":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 492
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "buildMessageCursor: No last segment."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-object v1

    .line 496
    :cond_0
    const-string v2, "chat_id= ? "

    .line 497
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 498
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v1, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 500
    .local v1, "cursorDb":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 501
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "buildMessageCursor: Message not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_1
    return-object v1
.end method

.method private buildIMFTCursorForBufferDBImdnId(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 527
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildIMFTCursorForBufferDBImdnId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "imdnIdString":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 530
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "buildMessageCursor: No last segment."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-object v1

    .line 534
    :cond_0
    const-string v2, "imdn_message_id=? "

    .line 535
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 536
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v1, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 538
    .local v1, "cursorDb":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 539
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "buildMessageCursor: Message not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1
    return-object v1
.end method

.method private buildIMFTCursorForBufferDBRowId(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 508
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildIMFTCursorForBufferDB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "idString":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 511
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "buildMessageCursor: No last segment."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-object v1

    .line 515
    :cond_0
    const-string v2, "_id= ? "

    .line 516
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 517
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v1, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 519
    .local v1, "cursorDb":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 520
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "buildMessageCursor: Message not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_1
    return-object v1
.end method

.method private buildMessageCursor(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "culumns"    # [Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "idString":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 429
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "buildMessageCursor: No last segment."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-object v1

    .line 434
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    nop

    .line 439
    const-string v2, "_id= ?"

    .line 440
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 443
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, p2, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 444
    .local v4, "cursorDb":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 445
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v6, "buildMessageCursor: Message not found."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 447
    return-object v1

    .line 450
    :cond_1
    return-object v4

    .line 435
    .end local v2    # "selection":Ljava/lang/String;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v4    # "cursorDb":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v4, "buildMessageCursor: Invalid ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-object v1
.end method

.method private buildMessageNotificationsCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 644
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->MESSAGE_NOTIFICATIONS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 646
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "imdnString":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 648
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v4, "buildMessageNotificationsCursor: No last segment."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->close()V

    .line 650
    return-object v2

    .line 653
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imdn_id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v3, "imdn_id= ? "

    .line 656
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 659
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v5, v2, v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessageNotification([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 660
    .local v5, "cursorDb":Landroid/database/Cursor;
    const-string v6, "buildMessageNotificationsCursor: Message not found."

    if-nez v5, :cond_2

    .line 661
    :try_start_0
    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    nop

    .line 678
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 663
    :cond_1
    return-object v2

    .line 666
    :cond_2
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 667
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    nop

    .line 678
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 668
    :cond_3
    return-object v0

    .line 670
    :cond_4
    :goto_0
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 671
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const-string v6, "id"

    .line 672
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const-string v6, "imdn_id"

    .line 673
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const-string/jumbo v6, "sender_uri"

    .line 674
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const-string/jumbo v6, "status"

    .line 675
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const-string/jumbo v6, "timestamp"

    .line 676
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 678
    :cond_5
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 679
    .end local v5    # "cursorDb":Landroid/database/Cursor;
    :cond_6
    return-object v0

    .line 659
    .restart local v5    # "cursorDb":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v5, :cond_7

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v2
.end method

.method private buildParticipantCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 603
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->PARTICIPANT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 605
    .local v0, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "chatId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 607
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "buildParticipantCursor: No last segment."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-object v0

    .line 611
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getParticipants(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 613
    .local v2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    if-nez v2, :cond_1

    .line 615
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "buildParticipantCursor: Participant not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    monitor-exit v3

    return-object v0

    .line 619
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildParticipantCursor: build a cursor for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 622
    .local v5, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 623
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 624
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 625
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 626
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 627
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 628
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 629
    nop

    .end local v5    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 630
    :cond_2
    monitor-exit v3

    .line 634
    .end local v1    # "chatId":Ljava/lang/String;
    .end local v2    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    nop

    .line 635
    return-object v0

    .line 630
    .restart local v1    # "chatId":Ljava/lang/String;
    .restart local v2    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 631
    .end local v1    # "chatId":Ljava/lang/String;
    .end local v2    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    .restart local v0    # "cursor":Landroid/database/MatrixCursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 632
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->close()V

    .line 633
    const/4 v2, 0x0

    return-object v2
.end method

.method private buildParticipantCursorForBufferDB(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 584
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildParticipantCursorForBufferDB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "idString":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 587
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "buildParticipantCursor: No last segment."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-object v1

    .line 591
    :cond_0
    const-string v2, "chat_id= ? "

    .line 592
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 593
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->PARTICIPANT_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 595
    .local v1, "cursorDb":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 596
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "buildParticipantCursorForBufferDB: Message not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_1
    return-object v1
.end method

.method private buildSessionCursorForChatId(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 565
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildSessionCursorForchatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "idString":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 568
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "buildMessageCursor: No last segment."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-object v1

    .line 572
    :cond_0
    const-string v2, "chat_id= ? "

    .line 573
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 574
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v1, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 576
    .local v1, "cursorDb":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 577
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "buildMessageCursor: Message not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_1
    return-object v1
.end method

.method private buildSessionCursorForSessionRowId(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 546
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildSessionCursorForSessionRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "idString":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 549
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "buildMessageCursor: No last segment."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-object v1

    .line 553
    :cond_0
    const-string v2, "_id= ? "

    .line 554
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 555
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v1, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 557
    .local v1, "cursorDb":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 558
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "buildMessageCursor: Message not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_1
    return-object v1
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 297
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulkInsert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ImCache is not ready yet."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v1

    .line 302
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_1

    .line 309
    return v1

    .line 304
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUFFERDB_INSERT_SESSION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudsearchAndInsertSession(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 238
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 241
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ImCache is not ready yet."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v1

    .line 244
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v2, 0x17

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_1

    .line 259
    return v1

    .line 251
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLOUD_DELETE_PARTICIPANT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudDeleteParticipant(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 246
    .end local v0    # "id":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLOUD_DELETE_MESSAGE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "idString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudDeleteMessage(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 269
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 272
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ImCache is not ready yet."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v1

    .line 276
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v2, 0x15

    if-eq v0, v2, :cond_3

    const/16 v2, 0x18

    if-eq v0, v2, :cond_2

    const/16 v2, 0x27

    if-eq v0, v2, :cond_1

    .line 292
    return-object v1

    .line 286
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUFFERDB_INSERT_NOTIFICATION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudInsertNotification(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 282
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLOUD_INSERT_PARTICIPANT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudInsertParticipant(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 278
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLOUD_INSERT_MESSAGE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudInsertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 752
    .local v1, "location":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x23

    if-eq v2, v4, :cond_0

    .line 769
    return-object v3

    .line 754
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_1

    .line 756
    return-object v3

    .line 758
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/rcsreliable_d/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "fileLocation":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 761
    .local v3, "reliableImage":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 762
    const/high16 v4, 0x10000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 764
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get RELIABLE_IMAGE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_2
    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 319
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 325
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_9

    const/4 v2, 0x5

    if-eq v0, v2, :cond_8

    const/16 v2, 0xa

    if-eq v0, v2, :cond_7

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6

    const/16 v2, 0xf

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_4

    const/16 v2, 0x20

    if-eq v0, v2, :cond_3

    const/16 v2, 0x25

    if-eq v0, v2, :cond_2

    const/16 v2, 0x26

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 390
    return-object v1

    .line 371
    :pswitch_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUFFERDB_QUERY_PARTICIPANT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildParticipantCursorForBufferDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 363
    :pswitch_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUFFERDB_QUERY_MESSAGE_CHATID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildIMFTCursorForBufferDBChatId(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 359
    :pswitch_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUFFERDB_QUERY_MESSAGE_ROWID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildIMFTCursorForBufferDBRowId(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 354
    :pswitch_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all_participant query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 350
    :pswitch_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all_message query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 346
    :pswitch_5
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all_session query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 367
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUFFERDB_QUERY_MESSAGE_IMDNID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildIMFTCursorForBufferDBImdnId(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 383
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "BOT_SETTING"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildBotUserAgentCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 375
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUFFERDB_QUERY_SESSION_ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildSessionCursorForSessionRowId(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 379
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUFFERDB_QUERY_SESSION_CHATID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildSessionCursorForChatId(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 340
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildMessageNotificationsCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 343
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildAutoAcceptFtCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 337
    :cond_7
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->FILE_TRANSFER_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildMessageCursor(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 334
    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildParticipantCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 327
    :cond_9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildChatCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 331
    :cond_a
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->MESSAGE_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->buildMessageCursor(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 321
    :cond_b
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ImCache is not ready yet or NoSimCard"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shutdown()V
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->closeDB()V

    .line 714
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 395
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "idString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isLoaded()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 398
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ImCache is not ready yet."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v2

    .line 402
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v3, 0x16

    if-eq v1, v3, :cond_4

    const/16 v3, 0x19

    if-eq v1, v3, :cond_3

    const/16 v3, 0x24

    if-eq v1, v3, :cond_2

    const/16 v3, 0x28

    if-eq v1, v3, :cond_1

    .line 423
    return v2

    .line 412
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUFFERDB_UPDATE_NOTIFICATION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudupdateNotification(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    return v1

    .line 416
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLOUD_UPDATE_SESSION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudUpdateSession(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    return v1

    .line 408
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLOUD_UPDATE_PARTICIPANT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudUpdateParticipant(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    return v1

    .line 404
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLOUD_UPDATE_MESSAGE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudUpdateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method
