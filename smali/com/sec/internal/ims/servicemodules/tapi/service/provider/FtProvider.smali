.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;
.super Landroid/content/ContentProvider;
.source "FtProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RCSAPI:I = 0x1

.field private static final RCSAPI_ID:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->LOG_TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 42
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransferLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->AUTHORITY:Ljava/lang/String;

    .line 48
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "filetransfer"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "filetransfer/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private buildMessagesCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "idString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "buildMessageCursor: No last segment."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    return-object v1

    .line 106
    :cond_0
    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->fillMessageCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v1

    return-object v1
.end method

.method private fillMessageCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 22
    .param p1, "idString"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 111
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "ft_id"

    if-eqz v2, :cond_1

    .line 112
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ft_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .end local p3    # "selection":Ljava/lang/String;
    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v0    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") AND "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .end local p3    # "selection":Ljava/lang/String;
    .restart local v0    # "selection":Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v0    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :cond_1
    move-object/from16 v4, p3

    .line 119
    .end local p3    # "selection":Ljava/lang/String;
    .local v4, "selection":Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " soyeon : selection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " idString:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual {v0, v5, v4, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryFtMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 123
    .local v8, "cursorDb":Landroid/database/Cursor;
    if-eqz v8, :cond_18

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v17, v4

    goto/16 :goto_c

    .line 129
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 130
    .local v10, "columnNames":[Ljava/lang/String;
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v11, v0

    .line 131
    .local v11, "cursor":Landroid/database/MatrixCursor;
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 132
    invoke-virtual {v11}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    move-object v12, v0

    .line 133
    .local v12, "rowBuilder":Landroid/database/MatrixCursor$RowBuilder;
    array-length v13, v10

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_15

    aget-object v0, v10, v15

    move-object/from16 p3, v0

    .line 134
    .local p3, "columnName":Ljava/lang/String;
    move-object/from16 v14, p3

    .end local p3    # "columnName":Ljava/lang/String;
    .local v14, "columnName":Ljava/lang/String;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p3, v0

    .line 135
    .local p3, "columnIndex":I
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v17, v4

    .end local v4    # "selection":Ljava/lang/String;
    .local v17, "selection":Ljava/lang/String;
    :try_start_1
    const-string v4, "columnName : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "columnType : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    .end local p3    # "columnIndex":I
    .local v4, "columnIndex":I
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getType(I)I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", columnValue : "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string/jumbo v0, "state"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "statusAndDirection":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->transState(Ljava/lang/String;)I

    move-result v5

    .line 140
    .local v5, "status":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 141
    const/16 v16, 0x0

    .end local v0    # "statusAndDirection":Ljava/lang/String;
    .end local v5    # "status":I
    goto/16 :goto_b

    :cond_3
    const-string/jumbo v0, "reason_code"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 143
    .local v0, "cancelReason":I
    nop

    .line 145
    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v5

    .line 143
    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->ftCancelReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v5

    .line 146
    .local v5, "reasonCode":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    invoke-virtual {v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 147
    const/16 v16, 0x0

    .end local v0    # "cancelReason":I
    .end local v5    # "reasonCode":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    goto/16 :goto_b

    :cond_4
    const-string/jumbo v0, "read_status"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 148
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aget-object v0, v0, v5

    .line 150
    .local v0, "get_status":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v5, v0, :cond_5

    .line 151
    sget-object v5, Lcom/gsma/services/rcs/RcsService$ReadStatus;->READ:Lcom/gsma/services/rcs/RcsService$ReadStatus;

    invoke-virtual {v5}, Lcom/gsma/services/rcs/RcsService$ReadStatus;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_3

    .line 153
    :cond_5
    sget-object v5, Lcom/gsma/services/rcs/RcsService$ReadStatus;->UNREAD:Lcom/gsma/services/rcs/RcsService$ReadStatus;

    invoke-virtual {v5}, Lcom/gsma/services/rcs/RcsService$ReadStatus;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 155
    .end local v0    # "get_status":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    :goto_3
    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_6
    const-string v0, "fileicon_mime_type"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "fileIconPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getContentTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "fileIconMimeType":Ljava/lang/String;
    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 159
    const/16 v16, 0x0

    .end local v0    # "fileIconPath":Ljava/lang/String;
    .end local v5    # "fileIconMimeType":Ljava/lang/String;
    goto/16 :goto_b

    :cond_7
    const-string v0, "file_expiration"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "fileicon_expiration"

    .line 160
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v16, 0x0

    goto/16 :goto_6

    .line 180
    :cond_8
    const-string v0, "expired_delivery"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_a

    .line 181
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 182
    .local v18, "delivery_time":J
    const-wide/16 v20, 0x0

    cmp-long v0, v18, v20

    if-lez v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    :goto_4
    move v0, v5

    .line 183
    .local v0, "expired_delivery":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 184
    const/16 v16, 0x0

    .end local v0    # "expired_delivery":I
    .end local v18    # "delivery_time":J
    goto/16 :goto_b

    :cond_a
    const-string v0, "fileicon"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/16 v16, 0x0

    goto/16 :goto_b

    .line 186
    :cond_b
    const-string v0, "file"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x4

    if-eqz v0, :cond_d

    .line 187
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "filePath":Ljava/lang/String;
    const-string v5, ".tmp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v9

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_5

    .line 188
    :cond_c
    const/4 v9, 0x0

    .line 191
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 192
    const/16 v16, 0x0

    .end local v0    # "filePath":Ljava/lang/String;
    goto/16 :goto_b

    .line 193
    :cond_d
    const/16 v16, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    .line 194
    .local v0, "columnType":I
    if-eq v0, v5, :cond_11

    const/4 v5, 0x2

    if-eq v0, v5, :cond_10

    const/4 v5, 0x3

    if-eq v0, v5, :cond_f

    if-eq v0, v9, :cond_e

    .line 209
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_b

    .line 205
    :cond_e
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 206
    goto/16 :goto_b

    .line 199
    :cond_f
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 200
    goto/16 :goto_b

    .line 202
    :cond_10
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 203
    goto :goto_b

    .line 196
    :cond_11
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 197
    goto :goto_b

    .line 159
    .end local v0    # "columnType":I
    :cond_12
    const/16 v16, 0x0

    .line 161
    :goto_6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v0

    .line 162
    .local v5, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    const/4 v9, 0x0

    .line 163
    .local v9, "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    const/16 v18, -0x1

    .line 165
    .local v18, "id":I
    if-eqz v2, :cond_13

    .line 166
    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    .end local v18    # "id":I
    .local v0, "id":I
    goto :goto_7

    .line 170
    .end local v0    # "id":I
    .restart local v18    # "id":I
    :catch_0
    move-exception v0

    goto :goto_8

    .line 168
    :cond_13
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v18, v0

    .line 171
    :goto_7
    move/from16 v0, v18

    goto :goto_9

    .line 170
    :goto_8
    move/from16 v0, v18

    .line 172
    .end local v18    # "id":I
    .restart local v0    # "id":I
    :goto_9
    :try_start_3
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v18

    move-object/from16 v9, v18

    .line 173
    if-eqz v9, :cond_14

    .line 174
    move/from16 v18, v0

    .end local v0    # "id":I
    .restart local v18    # "id":I
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FILE_EXPIRATION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileExpire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileExpire()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_a

    .line 177
    .end local v18    # "id":I
    .restart local v0    # "id":I
    :cond_14
    move/from16 v18, v0

    .end local v0    # "id":I
    .restart local v18    # "id":I
    const-string v0, ""

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 178
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "FILE_EXPIRATION:null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    .end local v5    # "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local v9    # "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .end local v18    # "id":I
    :goto_a
    nop

    .line 133
    .end local v4    # "columnIndex":I
    .end local v14    # "columnName":Ljava/lang/String;
    :goto_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v4, v17

    goto/16 :goto_2

    .end local v17    # "selection":Ljava/lang/String;
    .local v4, "selection":Ljava/lang/String;
    :cond_15
    move-object/from16 v17, v4

    .line 214
    .end local v4    # "selection":Ljava/lang/String;
    .end local v12    # "rowBuilder":Landroid/database/MatrixCursor$RowBuilder;
    .restart local v17    # "selection":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    goto/16 :goto_1

    .line 215
    .end local v17    # "selection":Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/String;
    :cond_16
    move-object/from16 v17, v4

    .line 216
    .end local v4    # "selection":Ljava/lang/String;
    .restart local v17    # "selection":Ljava/lang/String;
    if-eqz v8, :cond_17

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_17
    return-object v11

    .line 120
    .end local v10    # "columnNames":[Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/MatrixCursor;
    .end local v17    # "selection":Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v4

    move-object v1, v0

    .end local v4    # "selection":Ljava/lang/String;
    .restart local v17    # "selection":Ljava/lang/String;
    goto :goto_d

    .line 123
    .end local v17    # "selection":Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/String;
    :cond_18
    move-object/from16 v17, v4

    .line 124
    .end local v4    # "selection":Ljava/lang/String;
    .restart local v17    # "selection":Ljava/lang/String;
    :goto_c
    :try_start_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "buildMessageCursor: Message not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    nop

    .line 216
    if-eqz v8, :cond_19

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 120
    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_d
    if-eqz v8, :cond_1a

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_e
    throw v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .line 69
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 77
    .local v0, "uriKind":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 86
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "return null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    return-object v1

    .line 81
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->buildMessagesCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 79
    :cond_1
    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/FtProvider;->buildMessagesCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public transState(Ljava/lang/String;)I
    .locals 6
    .param p1, "statusAndDirection"    # Ljava/lang/String;

    .line 222
    const/4 v0, -0x1

    .line 223
    .local v0, "state":I
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "strArr":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 225
    return v0

    .line 227
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v2, v2, v5

    .line 228
    .local v2, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 230
    .local v5, "stateId":I
    if-eqz v5, :cond_4

    if-eq v5, v4, :cond_4

    if-eq v5, v3, :cond_3

    const/4 v3, 0x3

    if-eq v5, v3, :cond_2

    const/4 v3, 0x4

    if-eq v5, v3, :cond_1

    const/4 v3, 0x6

    if-eq v5, v3, :cond_4

    const/4 v3, 0x7

    if-eq v5, v3, :cond_1

    const/16 v3, 0x9

    if-eq v5, v3, :cond_4

    .line 252
    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ordinal()I

    move-result v0

    goto :goto_0

    .line 249
    :cond_1
    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ABORTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ordinal()I

    move-result v0

    .line 250
    goto :goto_0

    .line 245
    :cond_2
    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->TRANSFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ordinal()I

    move-result v0

    .line 246
    goto :goto_0

    .line 242
    :cond_3
    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->STARTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ordinal()I

    move-result v0

    .line 243
    goto :goto_0

    .line 235
    :cond_4
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v3, v2, :cond_5

    .line 236
    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INVITED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ordinal()I

    move-result v0

    goto :goto_0

    .line 237
    :cond_5
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v3, v2, :cond_6

    .line 238
    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INITIATING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ordinal()I

    move-result v0

    .line 255
    :cond_6
    :goto_0
    return v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
