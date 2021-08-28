.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;
.super Landroid/content/ContentProvider;
.source "GroupDeliveryInfoProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RCSAPI:I = 0x1

.field private static final RCSAPI_ID:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final MESSAGES_COLUMS:[Ljava/lang/String;

.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->LOG_TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 45
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfoLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->AUTHORITY:Ljava/lang/String;

    .line 50
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "GroupDeliveryInfoLog"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "GroupDeliveryInfoLog/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 54
    const-string v0, "_id"

    const-string v1, "id"

    const-string v2, "contact"

    const-string v3, "chat_id"

    const-string/jumbo v4, "timestamp_delivered"

    const-string/jumbo v5, "timestamp_displayed"

    const-string/jumbo v6, "status"

    const-string/jumbo v7, "reason_code"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->MESSAGES_COLUMS:[Ljava/lang/String;

    return-void
.end method

.method private buildMessagesCursor()Landroid/database/Cursor;
    .locals 2

    .line 115
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->MESSAGES_COLUMS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 116
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 117
    return-object v0
.end method

.method private buildMessagesCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 104
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "idString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 106
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "buildMessageCursor: No last segment."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    return-object v1

    .line 109
    :cond_0
    new-instance v1, Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->MESSAGES_COLUMS:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 110
    .local v1, "cursor":Landroid/database/MatrixCursor;
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 111
    return-object v1
.end method

.method private fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .locals 9
    .param p1, "cursor"    # Landroid/database/MatrixCursor;
    .param p2, "idString"    # Ljava/lang/String;

    .line 121
    const-string v0, "_id"

    const-string/jumbo v1, "remote_uri"

    const-string v2, "chat_id"

    const-string v3, "delivered_timestamp"

    const-string v4, "displayed_timestamp"

    const-string v5, "notification_status"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "MESSAGES_COLUMS":[Ljava/lang/String;
    const-string v1, "_id= ?"

    .line 127
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 130
    .local v2, "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 132
    .local v3, "cursorDb":Landroid/database/Cursor;
    const/4 v4, 0x0

    if-nez p2, :cond_0

    .line 133
    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v5, v0, v4, v4, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 135
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v5, v0, v1, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 137
    :goto_0
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 141
    :cond_1
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 142
    const-string v4, "notification_status"

    .line 143
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 142
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v4

    .line 144
    .local v4, "status":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    sget-object v5, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->NOT_DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {v5}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->ordinal()I

    move-result v5

    .line 145
    .local v5, "state":I
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v6, v4, :cond_2

    .line 146
    sget-object v6, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->NOT_DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {v6}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->ordinal()I

    move-result v6

    move v5, v6

    goto :goto_2

    .line 147
    :cond_2
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v6, v4, :cond_3

    .line 148
    sget-object v6, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {v6}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->ordinal()I

    move-result v6

    move v5, v6

    goto :goto_2

    .line 149
    :cond_3
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v6, v4, :cond_4

    .line 150
    sget-object v6, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DISPLAYED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {v6}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->ordinal()I

    move-result v6

    move v5, v6

    .line 152
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    const-string v7, "_id"

    .line 154
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 153
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    const-string/jumbo v7, "remote_uri"

    .line 156
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 155
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    const-string v7, "chat_id"

    .line 158
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 157
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    const-string v7, "delivered_timestamp"

    .line 160
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 159
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    const-string v7, "displayed_timestamp"

    .line 162
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 161
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    sget-object v7, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    invoke-virtual {v7}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    nop

    .end local v4    # "status":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .end local v5    # "state":I
    goto/16 :goto_1

    .line 166
    :cond_5
    if-eqz v3, :cond_6

    .line 167
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_6
    return-void

    .line 138
    :cond_7
    :goto_3
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "buildMessageCursor: Message not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    if-eqz v3, :cond_8

    .line 167
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_8
    return-void

    .line 166
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_9

    .line 167
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_9
    throw v4
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .line 78
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 87
    .local v0, "uriKind":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 95
    new-instance v1, Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->MESSAGES_COLUMS:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v1

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->buildMessagesCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GroupDeliveryInfoProvider;->buildMessagesCursor()Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
