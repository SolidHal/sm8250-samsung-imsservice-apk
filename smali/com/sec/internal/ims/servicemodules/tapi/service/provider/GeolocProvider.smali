.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;
.super Landroid/content/ContentProvider;
.source "GeolocProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RCSAPI:I = 0x1

.field private static final RCSAPI_ID:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final MESSAGE_COLUMNS:[Ljava/lang/String;

.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 39
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->AUTHORITY:Ljava/lang/String;

    .line 45
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "geolocshare"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "geolocshare/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 49
    const-string v0, "_id"

    const-string/jumbo v1, "sharing_id"

    const-string v2, "contact"

    const-string v3, "content"

    const-string v4, "mime_type"

    const-string v5, "direction"

    const-string/jumbo v6, "timestamp"

    const-string/jumbo v7, "state"

    const-string/jumbo v8, "reason_code"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->MESSAGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private buildMessagesCursor()Landroid/database/Cursor;
    .locals 2

    .line 100
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->MESSAGE_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 102
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 103
    return-object v0
.end method

.method private buildMessagesCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 109
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "buildMessageCursor: No last segment."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, 0x0

    return-object v1

    .line 112
    :cond_0
    new-instance v1, Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->MESSAGE_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 113
    .local v1, "cursor":Landroid/database/MatrixCursor;
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 116
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "buildMessageCursor: Message not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    return-object v1
.end method

.method private fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .locals 16
    .param p1, "cursor"    # Landroid/database/MatrixCursor;
    .param p2, "idString"    # Ljava/lang/String;

    .line 124
    move-object/from16 v1, p0

    const-string v2, "_id"

    const-string v3, "chat_id"

    const-string/jumbo v4, "remote_uri"

    const-string v5, "content_type"

    const-string v6, "direction"

    const-string v7, "ext_info"

    const-string/jumbo v8, "reason"

    const-string v9, "delivered_timestamp"

    const-string/jumbo v10, "state"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 136
    .local v2, "MSG_COLUMS":[Ljava/lang/String;
    const-string v3, "_id= ? "

    .line 137
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 140
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 142
    .local v6, "cursorDb":Landroid/database/Cursor;
    const/4 v7, 0x0

    if-nez p2, :cond_0

    .line 143
    :try_start_0
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v8, v2, v7, v7, v7}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v6, v8

    goto :goto_0

    .line 145
    :cond_0
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v8, v2, v3, v4, v7}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v6, v8

    .line 148
    :goto_0
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    move-object v15, v1

    move-object/from16 v1, p1

    goto/16 :goto_4

    .line 153
    :cond_1
    const/4 v8, 0x0

    .line 154
    .local v8, "id":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 156
    const-string v9, "content_type"

    .line 157
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 156
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, "contentType":Ljava/lang/String;
    const-string v10, "ext_info"

    .line 159
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 158
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, "extInfo":Ljava/lang/String;
    const-string/jumbo v11, "remote_uri"

    .line 161
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 160
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 162
    .local v11, "remoteUri":Ljava/lang/String;
    const-string v12, "direction"

    .line 163
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 162
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 165
    .local v12, "direction":I
    if-eqz v9, :cond_5

    const-string v13, "application/vnd.gsma.rcspushlocation+xml"

    .line 166
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 167
    if-eqz v10, :cond_3

    .line 168
    const/16 v13, 0x9

    new-array v13, v13, [Ljava/lang/Object;

    add-int/lit8 v14, v8, 0x1

    .line 169
    .end local v8    # "id":I
    .local v14, "id":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v13, v5

    const-string v8, "_id"

    .line 171
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 170
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v13, v0

    const/4 v8, 0x2

    .line 172
    if-eqz v11, :cond_2

    move-object v15, v11

    goto :goto_2

    :cond_2
    move-object v15, v7

    :goto_2
    invoke-static {v15}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v8

    const/4 v8, 0x3

    aput-object v9, v13, v8

    const/4 v8, 0x4

    .line 174
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v8

    const/4 v8, 0x5

    aput-object v10, v13, v8

    const/4 v8, 0x6

    const-string/jumbo v15, "reason"

    .line 177
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 176
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-direct {v1, v15}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->transReason(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v8

    const/4 v8, 0x7

    const-string v15, "delivered_timestamp"

    .line 179
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 178
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    int-to-long v0, v15

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v13, v8

    const/16 v0, 0x8

    const-string/jumbo v1, "state"

    .line 181
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 180
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v15, p0

    :try_start_2
    invoke-direct {v15, v1, v12}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->transState(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    move-object/from16 v1, p1

    :try_start_3
    invoke-virtual {v1, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v8, v14

    goto :goto_3

    .line 187
    .end local v9    # "contentType":Ljava/lang/String;
    .end local v10    # "extInfo":Ljava/lang/String;
    .end local v11    # "remoteUri":Ljava/lang/String;
    .end local v12    # "direction":I
    .end local v14    # "id":I
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_5

    .line 167
    .restart local v8    # "id":I
    .restart local v9    # "contentType":Ljava/lang/String;
    .restart local v10    # "extInfo":Ljava/lang/String;
    .restart local v11    # "remoteUri":Ljava/lang/String;
    .restart local v12    # "direction":I
    :cond_3
    move-object v15, v1

    move-object/from16 v1, p1

    goto :goto_3

    .line 166
    :cond_4
    move-object v15, v1

    move-object/from16 v1, p1

    goto :goto_3

    .line 165
    :cond_5
    move-object v15, v1

    move-object/from16 v1, p1

    .line 185
    .end local v9    # "contentType":Ljava/lang/String;
    .end local v10    # "extInfo":Ljava/lang/String;
    .end local v11    # "remoteUri":Ljava/lang/String;
    .end local v12    # "direction":I
    :goto_3
    move-object v1, v15

    const/4 v0, 0x1

    goto/16 :goto_1

    .line 154
    :cond_6
    move-object v15, v1

    move-object/from16 v1, p1

    .line 187
    .end local v8    # "id":I
    if-eqz v6, :cond_7

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_7
    return-void

    .line 148
    :cond_8
    move-object v15, v1

    move-object/from16 v1, p1

    .line 149
    :goto_4
    :try_start_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "buildMessageCursor: Message not found."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 187
    if-eqz v6, :cond_9

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_9
    return-void

    .line 187
    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v15, v1

    :goto_5
    move-object/from16 v1, p1

    :goto_6
    if-eqz v6, :cond_a

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_a
    throw v0
.end method

.method private transReason(I)I
    .locals 4
    .param p1, "reasonId"    # I

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "geoReasonId":I
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v1

    .line 231
    .local v1, "cancelReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    if-nez v1, :cond_0

    .line 232
    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result v2

    return v2

    .line 234
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason:[I

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 267
    :pswitch_0
    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result v0

    .line 268
    goto :goto_0

    .line 261
    :pswitch_1
    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result v0

    .line 262
    goto :goto_0

    .line 248
    :pswitch_2
    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result v0

    .line 249
    goto :goto_0

    .line 245
    :pswitch_3
    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result v0

    .line 246
    goto :goto_0

    .line 242
    :pswitch_4
    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result v0

    .line 243
    goto :goto_0

    .line 239
    :pswitch_5
    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result v0

    .line 240
    goto :goto_0

    .line 236
    :pswitch_6
    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result v0

    .line 237
    nop

    .line 273
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private transState(II)I
    .locals 2
    .param p1, "stateId"    # I
    .param p2, "direction"    # I

    .line 199
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result v0

    .line 201
    .local v0, "state":I
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result v0

    .line 220
    goto :goto_0

    .line 215
    :cond_1
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->RINGING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result v0

    .line 216
    goto :goto_0

    .line 212
    :cond_2
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result v0

    .line 213
    goto :goto_0

    .line 205
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    if-ne v1, p2, :cond_4

    .line 206
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result v0

    goto :goto_0

    .line 207
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    if-ne v1, p2, :cond_5

    .line 208
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result v0

    .line 224
    :cond_5
    :goto_0
    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .line 73
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ImCache is not ready yet."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v1

    .line 86
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 87
    .local v0, "uriKind":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 95
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "return null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v1

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->buildMessagesCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->buildMessagesCursor()Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
