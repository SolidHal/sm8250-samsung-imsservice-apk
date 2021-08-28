.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;
.super Landroid/content/ContentProvider;
.source "ChatProvider.java"


# static fields
.field private static final CHATS:I = 0x1

.field private static final CHATS_ID:I = 0x6

.field private static final CHAT_COLUMS:[Ljava/lang/String;

.field private static final CHAT_ID:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MESSAGES:I = 0x3

.field private static final MESSAGES_CONTACTID:I = 0x5

.field private static final MESSAGE_COLUNMS:[Ljava/lang/String;

.field private static final MESSAGE_ID:I = 0x4

.field private static final PROVIDER_NAME:Ljava/lang/String;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 39
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->LOG_TAG:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$GroupChat;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->PROVIDER_NAME:Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 57
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "groupchat"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "groupchat/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "groupchat/*"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "chatmessage"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "chatmessage/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "chatmessage/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    const-string v4, "_id"

    const-string v5, "chat_id"

    const-string/jumbo v6, "state"

    const-string/jumbo v7, "subject"

    const-string v8, "direction"

    const-string/jumbo v9, "timestamp"

    const-string/jumbo v10, "reason_code"

    const-string/jumbo v11, "participants"

    const-string v12, "contact"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->CHAT_COLUMS:[Ljava/lang/String;

    .line 73
    const-string v1, "_id"

    const-string v2, "chat_id"

    const-string v3, "contact"

    const-string v4, "msg_id"

    const-string v5, "mime_type"

    const-string v6, "content"

    const-string/jumbo v7, "status"

    const-string/jumbo v8, "read_status"

    const-string v9, "direction"

    const-string/jumbo v10, "timestamp"

    const-string/jumbo v11, "timestamp_sent"

    const-string/jumbo v12, "timestamp_delivered"

    const-string/jumbo v13, "timestamp_displayed"

    const-string/jumbo v14, "reason_code"

    const-string v15, "expired_delivery"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->MESSAGE_COLUNMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private buildChatCursor()Landroid/database/Cursor;
    .locals 6

    .line 164
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->CHAT_COLUMS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 166
    .local v0, "cursor":Landroid/database/MatrixCursor;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v2

    .line 168
    .local v2, "chatList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    if-nez v2, :cond_0

    .line 169
    monitor-exit v1

    return-object v0

    .line 171
    :cond_0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 172
    .local v4, "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 173
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->fillChatCursor(Lcom/sec/internal/ims/servicemodules/im/ImSession;Landroid/database/MatrixCursor;)V

    .line 175
    .end local v4    # "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_1
    goto :goto_0

    .line 176
    .end local v2    # "chatList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    :cond_2
    monitor-exit v1

    .line 177
    return-object v0

    .line 176
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private buildChatCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 144
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->CHAT_COLUMS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 146
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "chatId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 148
    return-object v0

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    monitor-enter v2

    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    .line 153
    .local v3, "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->fillChatCursor(Lcom/sec/internal/ims/servicemodules/im/ImSession;Landroid/database/MatrixCursor;)V

    .line 159
    .end local v3    # "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    monitor-exit v2

    .line 160
    return-object v0

    .line 154
    .restart local v3    # "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_2
    :goto_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildChatCursor: Session not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    monitor-exit v2

    return-object v0

    .line 159
    .end local v3    # "chat":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private buildMessagesCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 198
    if-nez p2, :cond_0

    .line 199
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->MESSAGE_COLUNMS:[Ljava/lang/String;

    .line 201
    :cond_0
    const/4 v0, 0x0

    .line 202
    .local v0, "idString":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 203
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 204
    if-nez v0, :cond_1

    .line 205
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "buildMessageCursor: No last segment."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x0

    return-object v1

    .line 204
    :cond_1
    move-object v6, v0

    goto :goto_0

    .line 202
    :cond_2
    move-object v6, v0

    .line 209
    .end local v0    # "idString":Ljava/lang/String;
    .local v6, "idString":Ljava/lang/String;
    :goto_0
    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->fillMessageCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private fillChatCursor(Lcom/sec/internal/ims/servicemodules/im/ImSession;Landroid/database/MatrixCursor;)V
    .locals 5
    .param p1, "chat"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;

    .line 181
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->INITIATING:Lcom/gsma/services/rcs/chat/GroupChat$State;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/chat/GroupChat$State;->ordinal()I

    move-result v0

    .line 182
    .local v0, "state":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatStateId()I

    move-result v1

    .line 183
    .local v1, "getState":I
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 184
    sget-object v2, Lcom/gsma/services/rcs/chat/GroupChat$State;->STARTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/chat/GroupChat$State;->ordinal()I

    move-result v0

    goto :goto_0

    .line 185
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 186
    sget-object v2, Lcom/gsma/services/rcs/chat/GroupChat$State;->ABORTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/chat/GroupChat$State;->ordinal()I

    move-result v0

    .line 189
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 191
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 192
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 193
    return-void
.end method

.method private fillMessageCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 20
    .param p1, "idString"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 216
    move-object/from16 v1, p1

    move-object/from16 v0, p3

    move-object/from16 v2, p5

    const-string/jumbo v3, "rcs/groupchat-event"

    const-string v4, "application/geoloc"

    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fillMessageCursor idString: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", projection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", selection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", selectionArgs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", sortOrder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string/jumbo v5, "text/plain"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 222
    const-string/jumbo v6, "text/plain\' OR mime_type =\'text/plain;charset=UTF-8"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .end local p3    # "selection":Ljava/lang/String;
    .local v0, "selection":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_2

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 229
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "msg_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 225
    :cond_2
    move-object v6, v0

    .line 233
    .end local v0    # "selection":Ljava/lang/String;
    .local v6, "selection":Ljava/lang/String;
    :goto_0
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-virtual {v0, v8, v6, v9, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryChatMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 236
    .local v10, "cursorDb":Landroid/database/Cursor;
    const/4 v11, 0x0

    if-nez v10, :cond_4

    .line 237
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "buildMessageCursor: Message not found."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    nop

    .line 332
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_3
    return-object v11

    .line 233
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v6

    goto/16 :goto_a

    .line 242
    :cond_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 243
    .local v12, "columnNames":[Ljava/lang/String;
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v13, v0

    .line 244
    .local v13, "cursor":Landroid/database/MatrixCursor;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 245
    invoke-virtual {v13}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    move-object v14, v0

    .line 246
    .local v14, "rowBuilder":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v0, 0x0

    .line 247
    .local v0, "mimeType":Ljava/lang/String;
    array-length v15, v12

    const/16 v16, 0x0

    move-object v11, v0

    move/from16 v1, v16

    .end local v0    # "mimeType":Ljava/lang/String;
    .local v11, "mimeType":Ljava/lang/String;
    :goto_2
    if-ge v1, v15, :cond_17

    aget-object v0, v12, v1

    move-object/from16 v17, v0

    .line 248
    .local v17, "columnName":Ljava/lang/String;
    move-object/from16 v2, v17

    .end local v17    # "columnName":Ljava/lang/String;
    .local v2, "columnName":Ljava/lang/String;
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    .line 249
    .local v17, "columnIndex":I
    const-string/jumbo v0, "status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 250
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAY_REPORT_REQUESTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 253
    .local v0, "status":Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v19, v6

    move/from16 v6, v17

    .end local v17    # "columnIndex":I
    .local v6, "columnIndex":I
    .local v19, "selection":Ljava/lang/String;
    :try_start_2
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    aget-object v17, v18, v17

    .line 255
    .local v17, "get_status":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    invoke-static/range {v17 .. v17}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->translateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v18

    move-object/from16 v0, v18

    .line 256
    const-string/jumbo v7, "timestamp_displayed"

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 258
    .local v7, "displayedTimeStampIndex":I
    const-string/jumbo v8, "timestamp_delivered"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 260
    .local v8, "deliveredTimeStampIndex":I
    sget-object v9, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENT:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    if-ne v0, v9, :cond_5

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-lez v9, :cond_5

    .line 262
    sget-object v9, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-object v0, v9

    goto :goto_3

    .line 263
    :cond_5
    sget-object v9, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENT:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    if-ne v0, v9, :cond_6

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-lez v9, :cond_6

    .line 265
    sget-object v9, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DELIVERED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-object v0, v9

    .line 267
    :cond_6
    :goto_3
    invoke-virtual {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 268
    move-object/from16 v18, v3

    const/4 v2, 0x0

    .end local v0    # "status":Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .end local v7    # "displayedTimeStampIndex":I
    .end local v8    # "deliveredTimeStampIndex":I
    .end local v17    # "get_status":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    goto/16 :goto_9

    .end local v19    # "selection":Ljava/lang/String;
    .local v6, "selection":Ljava/lang/String;
    .local v17, "columnIndex":I
    :cond_7
    move-object/from16 v19, v6

    move/from16 v6, v17

    .end local v17    # "columnIndex":I
    .local v6, "columnIndex":I
    .restart local v19    # "selection":Ljava/lang/String;
    const-string/jumbo v0, "reason_code"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v18, v3

    const/4 v2, 0x0

    goto/16 :goto_9

    .line 270
    :cond_8
    const-string/jumbo v0, "read_status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 271
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aget-object v0, v0, v7

    .line 273
    .local v0, "get_status":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v7, v0, :cond_9

    .line 274
    sget-object v7, Lcom/gsma/services/rcs/RcsService$ReadStatus;->READ:Lcom/gsma/services/rcs/RcsService$ReadStatus;

    invoke-virtual {v7}, Lcom/gsma/services/rcs/RcsService$ReadStatus;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_4

    .line 276
    :cond_9
    sget-object v7, Lcom/gsma/services/rcs/RcsService$ReadStatus;->UNREAD:Lcom/gsma/services/rcs/RcsService$ReadStatus;

    invoke-virtual {v7}, Lcom/gsma/services/rcs/RcsService$ReadStatus;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 278
    .end local v0    # "get_status":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    :goto_4
    move-object/from16 v18, v3

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_a
    const-string v0, "mime_type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 279
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .end local v11    # "mimeType":Ljava/lang/String;
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_b

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 282
    invoke-virtual {v14, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_5

    .line 283
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 285
    invoke-virtual {v14, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_5

    .line 286
    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 288
    invoke-virtual {v14, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_5

    .line 290
    :cond_d
    invoke-virtual {v14, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 247
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v6    # "columnIndex":I
    :goto_5
    move-object v11, v0

    move-object/from16 v18, v3

    const/4 v2, 0x0

    goto/16 :goto_9

    .line 292
    .end local v0    # "mimeType":Ljava/lang/String;
    .restart local v2    # "columnName":Ljava/lang/String;
    .restart local v6    # "columnIndex":I
    .restart local v11    # "mimeType":Ljava/lang/String;
    :cond_e
    const-string v0, "expired_delivery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_10

    .line 293
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 294
    .local v8, "time_delivery":J
    const-wide/16 v17, 0x0

    cmp-long v0, v8, v17

    if-lez v0, :cond_f

    goto :goto_6

    :cond_f
    move/from16 v7, v16

    :goto_6
    move v0, v7

    .line 295
    .local v0, "expired_delivery":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 296
    move-object/from16 v18, v3

    const/4 v2, 0x0

    .end local v0    # "expired_delivery":I
    .end local v8    # "time_delivery":J
    goto/16 :goto_9

    :cond_10
    const-string v0, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v11, :cond_12

    const-string/jumbo v0, "rcspushlocation"

    .line 297
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 298
    const/4 v7, 0x0

    .line 299
    .local v7, "content":Ljava/lang/String;
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v0

    .line 301
    .local v8, "body":Ljava/lang/String;
    :try_start_3
    new-instance v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGeolocString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 305
    .end local v7    # "content":Ljava/lang/String;
    .local v0, "content":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_7

    .line 302
    .end local v0    # "content":Ljava/lang/String;
    .restart local v7    # "content":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v9, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v17, v2

    .end local v2    # "columnName":Ljava/lang/String;
    .local v17, "columnName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    const-string/jumbo v3, "parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Geo location body : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move-object v2, v8

    move-object v0, v2

    .line 306
    .end local v7    # "content":Ljava/lang/String;
    .local v0, "content":Ljava/lang/String;
    :goto_7
    invoke-virtual {v14, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 307
    const/4 v2, 0x0

    .end local v0    # "content":Ljava/lang/String;
    .end local v8    # "body":Ljava/lang/String;
    goto :goto_9

    .line 297
    .end local v17    # "columnName":Ljava/lang/String;
    .restart local v2    # "columnName":Ljava/lang/String;
    :cond_11
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "columnName":Ljava/lang/String;
    .restart local v17    # "columnName":Ljava/lang/String;
    goto :goto_8

    .line 296
    .end local v17    # "columnName":Ljava/lang/String;
    .restart local v2    # "columnName":Ljava/lang/String;
    :cond_12
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 308
    .end local v2    # "columnName":Ljava/lang/String;
    .restart local v17    # "columnName":Ljava/lang/String;
    :goto_8
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    .line 309
    .local v0, "columnType":I
    if-eq v0, v7, :cond_16

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    if-eq v0, v2, :cond_14

    const/4 v2, 0x4

    if-eq v0, v2, :cond_13

    .line 324
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_9

    .line 320
    :cond_13
    const/4 v2, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 321
    goto :goto_9

    .line 314
    :cond_14
    const/4 v2, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 315
    goto :goto_9

    .line 317
    :cond_15
    const/4 v2, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 318
    goto :goto_9

    .line 311
    :cond_16
    const/4 v2, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 312
    nop

    .line 247
    .end local v0    # "columnType":I
    .end local v6    # "columnIndex":I
    .end local v17    # "columnName":Ljava/lang/String;
    :goto_9
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    move-object/from16 v6, v19

    goto/16 :goto_2

    .end local v19    # "selection":Ljava/lang/String;
    .local v6, "selection":Ljava/lang/String;
    :cond_17
    move-object/from16 v18, v3

    move-object/from16 v19, v6

    const/4 v2, 0x0

    .line 329
    .end local v6    # "selection":Ljava/lang/String;
    .end local v11    # "mimeType":Ljava/lang/String;
    .end local v14    # "rowBuilder":Landroid/database/MatrixCursor$RowBuilder;
    .restart local v19    # "selection":Ljava/lang/String;
    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object v11, v2

    move-object/from16 v2, p5

    goto/16 :goto_1

    .line 330
    .end local v19    # "selection":Ljava/lang/String;
    .restart local v6    # "selection":Ljava/lang/String;
    :cond_18
    move-object/from16 v19, v6

    .end local v6    # "selection":Ljava/lang/String;
    .restart local v19    # "selection":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v0, v1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 331
    nop

    .line 332
    if-eqz v10, :cond_19

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_19
    return-object v13

    .line 233
    .end local v12    # "columnNames":[Ljava/lang/String;
    .end local v13    # "cursor":Landroid/database/MatrixCursor;
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_a

    .end local v19    # "selection":Ljava/lang/String;
    .restart local v6    # "selection":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v6

    move-object v1, v0

    .end local v6    # "selection":Ljava/lang/String;
    .restart local v19    # "selection":Ljava/lang/String;
    :goto_a
    if-eqz v10, :cond_1a

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_b
    throw v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .line 100
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ImCache is not ready yet."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-object v1

    .line 113
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    return-object v1

    .line 121
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->buildChatCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 130
    :pswitch_1
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->buildMessagesCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 127
    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->buildMessagesCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 124
    :pswitch_3
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->buildMessagesCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 118
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->buildChatCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 115
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/ChatProvider;->buildChatCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
