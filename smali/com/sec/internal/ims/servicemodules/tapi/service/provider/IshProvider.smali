.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;
.super Landroid/content/ContentProvider;
.source "IshProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field private static final CONTENT_TYPE:Ljava/lang/String; = "placeholder"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RCSAPI:I = 0x1

.field private static final RCSAPI_ID:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

.field private final session_columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->LOG_TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 39
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->AUTHORITY:Ljava/lang/String;

    .line 45
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "ish"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "ish/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 49
    const-string v0, "_id"

    const-string/jumbo v1, "sharingId"

    const-string v2, "contact"

    const-string v3, "filename"

    const-string v4, "mime_type"

    const-string v5, "direction"

    const-string v6, "filesize"

    const-string/jumbo v7, "transferred"

    const-string/jumbo v8, "state"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->session_columns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance()Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 82
    move-object/from16 v0, p0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 83
    .local v1, "uriKind":I
    new-instance v3, Landroid/database/MatrixCursor;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->session_columns:[Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 84
    .local v3, "cm":Landroid/database/MatrixCursor;
    const/4 v4, 0x0

    .line 85
    .local v4, "rowId":I
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCache.getSize() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eq v1, v14, :cond_4

    if-eq v1, v13, :cond_0

    goto/16 :goto_5

    .line 106
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 107
    .local v15, "shareid":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v12, v16

    .local v12, "i":I
    :goto_0
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v5

    if-ge v12, v5, :cond_3

    .line 108
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v5, v12}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v5

    .line 109
    .local v5, "share":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v6

    .line 110
    .local v6, "info":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    if-eqz v15, :cond_2

    if-nez v6, :cond_1

    .line 111
    goto :goto_1

    .line 113
    :cond_1
    iget-wide v7, v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 114
    sget-object v7, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v4, 0x1

    .line 116
    .end local v4    # "rowId":I
    .local v8, "rowId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v11

    iget-wide v9, v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v14

    iget-object v4, v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 117
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v13

    iget-object v4, v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 118
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v7, v9

    const-string/jumbo v4, "placeholder"

    const/4 v9, 0x4

    aput-object v4, v7, v9

    iget v4, v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v7, v9

    iget v4, v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x6

    aput-object v4, v7, v9

    iget-wide v9, v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    .line 120
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x7

    aput-object v4, v7, v9

    iget-wide v9, v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataProgress:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v9, 0x8

    aput-object v4, v7, v9

    iget v4, v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v9, 0x9

    aput-object v4, v7, v9

    .line 115
    invoke-virtual {v3, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 124
    move v4, v8

    goto :goto_2

    .line 107
    .end local v5    # "share":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .end local v6    # "info":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    .end local v8    # "rowId":I
    .restart local v4    # "rowId":I
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 127
    .end local v12    # "i":I
    :cond_3
    :goto_2
    goto/16 :goto_5

    .line 88
    .end local v15    # "shareid":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 89
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v6

    .line 90
    .local v6, "share":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    instance-of v7, v6, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    if-nez v7, :cond_5

    .line 91
    const/16 v8, 0x9

    const/4 v11, 0x7

    const/16 v12, 0x8

    const/16 v17, 0x5

    goto :goto_4

    .line 93
    :cond_5
    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v7

    .line 94
    .local v7, "info":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    sget-object v8, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/16 v8, 0x9

    new-array v9, v8, [Ljava/lang/Object;

    add-int/lit8 v10, v4, 0x1

    .line 96
    .end local v4    # "rowId":I
    .local v10, "rowId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v11

    iget-wide v11, v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v14

    iget-object v4, v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 97
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v13

    iget-object v4, v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 98
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x3

    aput-object v4, v9, v11

    iget v4, v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v9, v12

    iget v4, v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v17, 0x5

    aput-object v4, v9, v17

    iget-wide v11, v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    .line 99
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v9, v11

    iget-wide v11, v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataProgress:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v11, 0x7

    aput-object v4, v9, v11

    iget v4, v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v12, 0x8

    aput-object v4, v9, v12

    .line 95
    invoke-virtual {v3, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move v4, v10

    .line 88
    .end local v6    # "share":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .end local v7    # "info":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    .end local v10    # "rowId":I
    .restart local v4    # "rowId":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x0

    goto/16 :goto_3

    .line 104
    .end local v5    # "i":I
    :cond_6
    nop

    .line 131
    :goto_5
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/IshProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cm.getCount() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
