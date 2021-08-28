.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;
.super Landroid/content/ContentProvider;
.source "HistoryLogProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String;

.field private static final COLUMS:[Ljava/lang/String;

.field private static final HISTORY_ID:I = 0x2

.field private static final HISTORY_PARAMLESS:I = 0x3

.field private static final HISTORY_PARAMLESS_ID:I = 0x4

.field private static final HISTROY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 27
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/gsma/services/rcs/history/HistoryLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->AUTHORITY:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 41
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "history"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "history/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "history_paramless"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "history_paramless/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    const-string/jumbo v4, "provider_id"

    const-string v5, "id"

    const-string v6, "mime_type"

    const-string v7, "direction"

    const-string v8, "contact"

    const-string/jumbo v9, "timestamp"

    const-string/jumbo v10, "timestamp_sent"

    const-string/jumbo v11, "timestamp_delivered"

    const-string/jumbo v12, "timestamp_displayed"

    const-string/jumbo v13, "status"

    const-string/jumbo v14, "reason_code"

    const-string/jumbo v15, "read_status"

    const-string v16, "chat_id"

    const-string v17, "content"

    const-string v18, "fileicon"

    const-string v19, "fileicon_mime_type"

    const-string v20, "filename"

    const-string v21, "filesize"

    const-string/jumbo v22, "transferred"

    const-string v23, "duration"

    filled-new-array/range {v4 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->COLUMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    return-void
.end method

.method private getColumnValueToInsert(Ljava/lang/String;ILandroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "providerId"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 178
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 179
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 180
    const-string v0, "msg_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "index":I
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 182
    .end local v0    # "index":I
    :cond_0
    if-nez p2, :cond_1

    .line 183
    const-string v0, "chat_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 184
    .restart local v0    # "index":I
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 185
    .end local v0    # "index":I
    :cond_1
    if-ne p2, v1, :cond_3

    .line 186
    const-string v0, "ft_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 187
    .restart local v0    # "index":I
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    .end local v0    # "index":I
    :cond_2
    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 191
    const-string v0, "file"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 192
    .restart local v0    # "index":I
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 194
    .end local v0    # "index":I
    :cond_3
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 195
    .restart local v0    # "index":I
    if-gez v0, :cond_4

    .line 196
    const/4 v1, 0x0

    return-object v1

    .line 198
    :cond_4
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private mergeAdditionalProviderCursor(Landroid/database/MatrixCursor;[Ljava/lang/String;I)V
    .locals 10
    .param p1, "matrixCursor"    # Landroid/database/MatrixCursor;
    .param p2, "cursorColums"    # [Ljava/lang/String;
    .param p3, "providerId"    # I

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;->getExternalProviderMap()Ljava/util/Map;

    move-result-object v0

    .line 206
    .local v0, "extraProviderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;

    .line 207
    .local v1, "member":Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;
    if-nez v1, :cond_0

    .line 208
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not registered provider, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 212
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->getColumnMapping()Ljava/util/Map;

    move-result-object v2

    .line 214
    .local v2, "columnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 215
    .local v3, "cursor":Landroid/database/Cursor;
    if-nez v3, :cond_2

    .line 216
    :try_start_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No data exsit in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_1
    return-void

    .line 220
    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 221
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 222
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 223
    .local v4, "rowBuilder":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, p2

    if-ge v5, v6, :cond_6

    .line 224
    aget-object v6, p2, v5

    .line 225
    .local v6, "column":Ljava/lang/String;
    const-string/jumbo v7, "provider_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 226
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 229
    :cond_3
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 230
    .local v7, "cs":Ljava/lang/String;
    const/4 v8, 0x0

    if-nez v7, :cond_4

    .line 231
    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 232
    goto :goto_2

    .line 235
    :cond_4
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 236
    .local v9, "index":I
    if-gez v9, :cond_5

    .line 237
    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 238
    goto :goto_2

    .line 240
    :cond_5
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .end local v6    # "column":Ljava/lang/String;
    .end local v7    # "cs":Ljava/lang/String;
    .end local v9    # "index":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 242
    .end local v4    # "rowBuilder":Landroid/database/MatrixCursor$RowBuilder;
    .end local v5    # "i":I
    :cond_6
    goto :goto_0

    .line 243
    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 244
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_8
    return-void

    .line 214
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_9

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    throw v4
.end method

.method private mergeAll([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "providerIds"    # [Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;->getExternalProviderMap()Ljava/util/Map;

    move-result-object v0

    .line 113
    .local v0, "extraProviderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;>;"
    if-nez p1, :cond_0

    .line 114
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mergeAll, projection is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->COLUMS:[Ljava/lang/String;

    .local v1, "cursorColumn":[Ljava/lang/String;
    goto :goto_0

    .line 117
    .end local v1    # "cursorColumn":[Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .line 119
    .restart local v1    # "cursorColumn":[Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 120
    .local v2, "cursor":Landroid/database/MatrixCursor;
    sget-object v3, Lcom/gsma/services/rcs/chat/ChatLog$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeDefaultProviderCursor(Landroid/database/MatrixCursor;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 122
    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransferLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeDefaultProviderCursor(Landroid/database/MatrixCursor;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 124
    sget-object v3, Lcom/gsma/services/rcs/sharing/image/ImageSharingLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeDefaultProviderCursor(Landroid/database/MatrixCursor;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 126
    sget-object v3, Lcom/gsma/services/rcs/sharing/video/VideoSharingLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeDefaultProviderCursor(Landroid/database/MatrixCursor;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 130
    if-nez p2, :cond_2

    .line 131
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 132
    .local v4, "id":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v2, v1, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeAdditionalProviderCursor(Landroid/database/MatrixCursor;[Ljava/lang/String;I)V

    .line 133
    .end local v4    # "id":Ljava/lang/Integer;
    goto :goto_1

    :cond_1
    goto :goto_3

    .line 135
    :cond_2
    array-length v3, p2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, p2, v4

    .line 137
    .local v5, "pId":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v2, v1, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeAdditionalProviderCursor(Landroid/database/MatrixCursor;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .line 135
    .end local v5    # "pId":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 138
    .restart local v5    # "pId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    const-string v6, "NumberFormatException, close cursor"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->close()V

    .line 141
    const/4 v2, 0x0

    .line 142
    nop

    .line 146
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "pId":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object v2
.end method

.method private mergeDefaultProviderCursor(Landroid/database/MatrixCursor;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "matrixCursor"    # Landroid/database/MatrixCursor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cursorColums"    # [Ljava/lang/String;
    .param p4, "providerId"    # I

    .line 151
    if-nez p3, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 156
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No data exsit in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_1
    return-void

    .line 159
    :cond_2
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor getCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    :cond_3
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 163
    .local v1, "rowBuilder":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_5

    .line 164
    aget-object v3, p3, v2

    .line 165
    .local v3, "column":Ljava/lang/String;
    const-string/jumbo v4, "provider_id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 166
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 167
    goto :goto_1

    .line 169
    :cond_4
    invoke-direct {p0, v3, p4, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->getColumnValueToInsert(Ljava/lang/String;ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 163
    .end local v3    # "column":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "rowBuilder":Landroid/database/MatrixCursor$RowBuilder;
    .end local v2    # "i":I
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    .line 173
    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_7
    return-void

    .line 154
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mResolver:Landroid/content/ContentResolver;

    .line 68
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

    .line 74
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getHistoryService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mHistorySvcApi:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 80
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Query:  HistoryLogProvider is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v1

    .line 84
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 85
    .local v0, "type":I
    const/4 v2, 0x0

    .line 87
    .local v2, "cursor":Landroid/database/MatrixCursor;
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "ids":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 96
    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "providerIds":[Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeAll([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 98
    .end local v1    # "providerIds":[Ljava/lang/String;
    goto :goto_0

    .line 99
    :cond_3
    invoke-direct {p0, p2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeAll([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 101
    goto :goto_0

    .line 90
    .end local v3    # "ids":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/HistoryLogProvider;->mergeAll([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 91
    nop

    .line 106
    :goto_0
    return-object v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    return v0
.end method
