.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;
.super Landroid/content/ContentProvider;
.source "VideoSharingProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

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

    .line 36
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->LOG_TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 41
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->AUTHORITY:Ljava/lang/String;

    .line 47
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "videoshare"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v2, "videoshare/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 51
    const-string v0, "_id"

    const-string/jumbo v1, "sharing_id"

    const-string v2, "contact"

    const-string v3, "direction"

    const-string/jumbo v4, "timestamp"

    const-string/jumbo v5, "state"

    const-string/jumbo v6, "reason_code"

    const-string v7, "duration"

    const-string/jumbo v8, "video_encoding"

    const-string/jumbo v9, "width"

    const-string v10, "height"

    const-string/jumbo v11, "orientation"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->session_columns:[Ljava/lang/String;

    return-void
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
    .locals 2

    .line 78
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "VshProvider : onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance()Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 86
    move-object v1, p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v2, p1

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 87
    .local v3, "uriKind":I
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->session_columns:[Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v4, v0

    .line 88
    .local v4, "cm":Landroid/database/MatrixCursor;
    const/4 v5, 0x0

    .line 89
    .local v5, "rowId":I
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCache.getSize() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v6, "vsh_tapi"

    const/4 v0, 0x1

    if-eq v3, v0, :cond_4

    const/4 v7, 0x2

    if-eq v3, v7, :cond_0

    goto/16 :goto_9

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 123
    .local v7, "shareid":Ljava/lang/String;
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 124
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v9

    .line 125
    .local v9, "share":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    invoke-interface {v9}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v10

    .line 126
    .local v10, "info":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    if-eqz v7, :cond_2

    if-nez v10, :cond_1

    .line 127
    goto/16 :goto_3

    .line 129
    :cond_1
    nop

    .line 130
    invoke-static {v6}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    iget-wide v11, v10, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 131
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->getVideoSharingByID(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;

    move-result-object v11

    .line 132
    .local v11, "vshSession":Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;
    iget-wide v12, v10, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_0
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v6, v5, 0x1

    .line 136
    .end local v5    # "rowId":I
    .local v6, "rowId":I
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget-wide v12, v10, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 137
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget-object v5, v10, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 139
    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-static {v5}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 140
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 141
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getTimeStamp()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 142
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getState()Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 143
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getVideoEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget v5, v10, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoWidth:I

    .line 144
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget v5, v10, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 145
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getOrientation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_1
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    move v5, v6

    goto :goto_4

    .line 148
    :catch_0
    move-exception v0

    move v5, v6

    goto :goto_1

    .line 146
    :catch_1
    move-exception v0

    move v5, v6

    goto :goto_2

    .line 148
    .end local v6    # "rowId":I
    .restart local v5    # "rowId":I
    :catch_2
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 146
    :catch_3
    move-exception v0

    .line 147
    .local v0, "e":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
    :goto_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;->printStackTrace()V

    .line 150
    .end local v0    # "e":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
    goto :goto_4

    .line 123
    .end local v9    # "share":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .end local v10    # "info":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    .end local v11    # "vshSession":Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 154
    .end local v8    # "i":I
    :cond_3
    :goto_4
    goto/16 :goto_9

    .line 92
    .end local v7    # "shareid":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    move v7, v5

    move v5, v0

    .local v5, "i":I
    .local v7, "rowId":I
    :goto_5
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 93
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v8

    .line 94
    .local v8, "share":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    instance-of v0, v8, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    if-nez v0, :cond_5

    .line 95
    goto/16 :goto_8

    .line 97
    :cond_5
    invoke-interface {v8}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v9

    .line 98
    .local v9, "info":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    nop

    .line 100
    invoke-static {v6}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    iget-wide v10, v9, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 101
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->getVideoSharingByID(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;

    move-result-object v10

    .line 103
    .local v10, "vshSession":Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;
    :try_start_2
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0
    :try_end_2
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_6

    add-int/lit8 v11, v7, 0x1

    .line 104
    .end local v7    # "rowId":I
    .local v11, "rowId":I
    :try_start_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget-wide v12, v9, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 105
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget-object v7, v9, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 107
    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-static {v7}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getTimeStamp()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getState()Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getVideoEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget v7, v9, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoWidth:I

    .line 112
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget v7, v9, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;->getOrientation()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_3
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 118
    move v7, v11

    goto :goto_8

    .line 116
    :catch_4
    move-exception v0

    move v7, v11

    goto :goto_6

    .line 114
    :catch_5
    move-exception v0

    move v7, v11

    goto :goto_7

    .line 116
    .end local v11    # "rowId":I
    .restart local v7    # "rowId":I
    :catch_6
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    :goto_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_7
    move-exception v0

    .line 115
    .local v0, "e":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
    :goto_7
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;->printStackTrace()V

    .line 118
    .end local v0    # "e":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
    nop

    .line 92
    .end local v8    # "share":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .end local v9    # "info":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    .end local v10    # "vshSession":Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 120
    .end local v5    # "i":I
    :cond_6
    move v5, v7

    .line 158
    .end local v7    # "rowId":I
    .local v5, "rowId":I
    :goto_9
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/VideoSharingProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cm.getCount() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/database/MatrixCursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-object v4
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
