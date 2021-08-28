.class public Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;
.super Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;
.source "BufferDBTranslation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getAllPayloadUrlFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 7
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 493
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 495
    .local v0, "rowId":J
    const-string v2, ""

    .line 496
    .local v2, "payloadpartUrl":Ljava/lang/String;
    const-string v3, ""

    .line 497
    .local v3, "payloadUrl":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object v4

    .line 498
    .local v4, "rcsCursor":Landroid/database/Cursor;
    if-eqz v4, :cond_1

    .line 499
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 500
    const-string/jumbo v5, "payloadpartFull"

    .line 501
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 500
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 502
    const-string/jumbo v5, "payloadurl"

    .line 503
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 502
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 504
    const-string/jumbo v5, "payloadpartThumb"

    .line 505
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 504
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;

    .line 506
    const-string/jumbo v5, "payloadpartThumb_filename"

    .line 507
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 506
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mFTThumbnailFileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 497
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v5

    .line 510
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 511
    .end local v4    # "rcsCursor":Landroid/database/Cursor;
    :cond_2
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 512
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsFTThumbnail:Z

    .line 515
    :cond_3
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public getCallLogObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 5
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 420
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 422
    .local v0, "rowId":J
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryCallLogDataBufferDB(J)Landroid/database/Cursor;

    move-result-object v2

    .line 423
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v3, ""

    if-eqz v2, :cond_4

    .line 424
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 425
    const-string/jumbo v4, "res_url"

    .line 426
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 425
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    .local v4, "id":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 429
    nop

    .line 435
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_0
    return-object v3

    .line 432
    :cond_1
    const/16 v3, 0x2f

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_2
    return-object v3

    .line 422
    .end local v4    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v3

    .line 435
    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 436
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_5
    return-object v3
.end method

.method public getFaxObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 5
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 379
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 381
    .local v0, "rowId":J
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryFaxBufferDB(J)Landroid/database/Cursor;

    move-result-object v2

    .line 382
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v3, ""

    if-eqz v2, :cond_4

    .line 383
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 384
    const-string/jumbo v4, "res_url"

    .line 385
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 384
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .local v4, "id":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 388
    nop

    .line 394
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_0
    return-object v3

    .line 391
    :cond_1
    const/16 v3, 0x2f

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_2
    return-object v3

    .line 381
    .end local v4    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v3

    .line 394
    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 395
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_5
    return-object v3
.end method

.method public getFaxObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 773
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFaxObjectFromBufferDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object v0

    .line 774
    .local v0, "obj":Lcom/sec/internal/omanetapi/nms/data/Object;
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryFaxBufferDB(J)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFaxHttpPayloadFromCursor(Landroid/database/Cursor;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    .line 775
    .local v1, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 778
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    return-object v2
.end method

.method public getFaxpayLoadUrlFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 6
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 400
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 401
    .local v0, "rowId":J
    const/4 v2, 0x0

    .line 403
    .local v2, "payloadUrl":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryFaxBufferDB(J)Landroid/database/Cursor;

    move-result-object v3

    .line 404
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_2

    .line 405
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    const-string/jumbo v4, "payloadurl"

    .line 407
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 406
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 409
    if-nez v2, :cond_2

    .line 410
    const-string v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_0
    return-object v4

    .line 403
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v4

    .line 414
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 415
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v2
.end method

.method public getFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Z)Landroid/util/Pair;
    .locals 11
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p2, "isResUrl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 128
    iget-wide v4, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_0
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 130
    iget-wide v4, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->querymmsPduBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_1
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-ne v1, v3, :cond_2

    .line 132
    iget-wide v4, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_2
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-ne v1, v2, :cond_3

    .line 134
    iget-wide v4, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryVvmDataBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_3
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v4, 0x15

    if-ne v1, v4, :cond_4

    .line 136
    iget-wide v4, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryFaxBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_4
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v4, 0x10

    if-ne v1, v4, :cond_5

    .line 138
    iget-wide v4, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryCallLogDataBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_5
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v4, 0x12

    if-ne v1, v4, :cond_6

    .line 140
    iget-wide v4, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    .line 143
    :cond_6
    :goto_0
    const-string v1, ""

    .line 144
    .local v1, "resUrl":Ljava/lang/String;
    const-string v4, ""

    .line 145
    .local v4, "objId":Ljava/lang/String;
    const-string v5, ""

    .line 147
    .local v5, "flagName":Ljava/lang/String;
    move-object v6, v0

    .line 148
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_d

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 149
    const-string/jumbo v7, "res_url"

    .line 150
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 149
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 151
    const-string/jumbo v7, "syncaction"

    .line 152
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 151
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 153
    .local v7, "action":I
    sget-object v8, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "resUrl : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v8

    if-ne v7, v8, :cond_9

    .line 155
    iget v8, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "\\Seen"

    if-ne v8, v2, :cond_8

    .line 156
    :try_start_1
    const-string v2, "flagRead"

    .line 157
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 156
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 158
    .local v2, "read":I
    if-nez v2, :cond_7

    .line 159
    const-string v8, "\\Flagged"

    move-object v5, v8

    goto :goto_1

    .line 161
    :cond_7
    move-object v5, v9

    .line 163
    .end local v2    # "read":I
    :goto_1
    goto :goto_2

    .line 164
    :cond_8
    move-object v2, v9

    .end local v5    # "flagName":Ljava/lang/String;
    .local v2, "flagName":Ljava/lang/String;
    move-object v5, v2

    .line 166
    .end local v2    # "flagName":Ljava/lang/String;
    .restart local v5    # "flagName":Ljava/lang/String;
    :goto_2
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FlagNames: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 167
    :cond_9
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    if-ne v7, v2, :cond_a

    .line 168
    const-string v2, "\\Deleted"

    move-object v5, v2

    .line 171
    :cond_a
    :goto_3
    if-nez v1, :cond_b

    .line 172
    const-string v2, ""

    move-object v1, v2

    .line 175
    :cond_b
    if-nez p2, :cond_d

    .line 176
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v2

    goto :goto_5

    .line 147
    .end local v7    # "action":I
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_c

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    throw v2

    .line 179
    :cond_d
    :goto_5
    if-eqz v6, :cond_e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    .end local v6    # "cs":Landroid/database/Cursor;
    :cond_e
    if-eqz p2, :cond_f

    .line 182
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 184
    :cond_f
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public getImdnObjectPair(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 16
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 784
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 785
    .local v2, "hasError":Z
    const/4 v3, 0x0

    .line 786
    .local v3, "imdnId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 787
    .local v4, "opUri":Ljava/lang/String;
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    move-object v5, v0

    .line 790
    .local v5, "object":Lcom/sec/internal/omanetapi/nms/data/Object;
    const/4 v6, 0x0

    .line 791
    .local v6, "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    move-object v7, v0

    .line 793
    .local v7, "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    const-string v0, "imdn-message"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    .line 798
    move-object/from16 v8, p1

    iget-wide v9, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {v1, v9, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryRCSNotificationDB(J)Landroid/database/Cursor;

    move-result-object v9

    .line 799
    .local v9, "notificationCursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    .line 800
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 801
    const-string v11, "imdn_id"

    .line 802
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 801
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 803
    iput-object v3, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    .line 805
    new-array v11, v10, [Ljava/lang/String;

    aput-object v3, v11, v0

    invoke-virtual {v7, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionOriginalMessageID([Ljava/lang/String;)V

    .line 809
    const-string/jumbo v11, "sender_uri"

    .line 810
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 809
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 811
    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 812
    sget-object v11, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getImdnObjectPairFromCursor :: ImdnID : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " parsed opUri : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 812
    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 798
    :catchall_0
    move-exception v0

    move-object v10, v0

    if-eqz v9, :cond_0

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v10

    .line 816
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 818
    .end local v9    # "notificationCursor":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryRCSMessageDBUsingImdn(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 819
    .local v9, "rcsCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 820
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 822
    const-string v11, "notification_status"

    .line 823
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 822
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 825
    .local v11, "notificationStatus":I
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v12

    if-ne v12, v11, :cond_3

    .line 826
    const-string v12, "delivery"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionType([Ljava/lang/String;)V

    .line 829
    const-string v12, "delivered"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionStatus([Ljava/lang/String;)V

    goto :goto_2

    .line 832
    :cond_3
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v12

    if-ne v12, v11, :cond_4

    .line 833
    const-string v12, "display"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionType([Ljava/lang/String;)V

    .line 836
    const-string v12, "displayed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionStatus([Ljava/lang/String;)V

    goto :goto_2

    .line 840
    :cond_4
    const/4 v2, 0x1

    .line 843
    :goto_2
    new-instance v12, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v12}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v12, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 845
    iget-object v12, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v13, "\\Flagged"

    const-string v14, "\\Seen"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    .line 849
    const-string v12, "direction"

    .line 850
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 849
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    int-to-long v12, v12

    .line 851
    .local v12, "direction":J
    sget-object v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getImdnObjectPairFromCursor :: direction : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " notificationStatus: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v0

    int-to-long v14, v0

    cmp-long v0, v12, v14

    if-nez v0, :cond_5

    .line 854
    const/4 v2, 0x1

    goto :goto_4

    .line 855
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v0

    int-to-long v14, v0

    cmp-long v0, v12, v14

    if-nez v0, :cond_7

    .line 856
    const-string v0, "IN"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 860
    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v0, v10

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionOriginalTo([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 818
    .end local v11    # "notificationStatus":I
    .end local v12    # "direction":J
    :catchall_2
    move-exception v0

    move-object v10, v0

    if-eqz v9, :cond_6

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v10

    .line 866
    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 868
    .end local v9    # "rcsCursor":Landroid/database/Cursor;
    :cond_8
    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v0

    .line 869
    .end local v6    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .local v0, "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    iput-object v0, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 871
    const/4 v6, 0x0

    if-eqz v2, :cond_9

    .line 872
    return-object v6

    .line 874
    :cond_9
    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 85
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInitialSyncStatusByLine: line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->CONTENT_URI_BUFFERDB:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "multilinestatus"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 89
    .local v0, "queryMessageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 90
    .local v1, "cs":Landroid/database/Cursor;
    if-eqz v1, :cond_4

    .line 91
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    :cond_0
    const-string v2, "initsync_status"

    .line 94
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 93
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 95
    .local v2, "initStatus":I
    const-string v3, "messagetype"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 96
    .local v3, "msgType":I
    invoke-static {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v4

    .line 97
    .local v4, "savedType":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    invoke-virtual {p2, v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveInitialSyncStatus(I)V

    .line 102
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_1
    return-object v5

    .line 104
    .end local v2    # "initStatus":I
    .end local v3    # "msgType":I
    .end local v4    # "savedType":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    .line 89
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2

    .line 107
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 108
    .end local v1    # "cs":Landroid/database/Cursor;
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    return-object v1
.end method

.method public getMmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 762
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getMmsObjectFromPduAndAddress(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object v0

    .line 763
    .local v0, "obj":Lcom/sec/internal/omanetapi/nms/data/Object;
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 764
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object v1

    .line 763
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getMmsPartHttpPayloadFromCursor(Landroid/database/Cursor;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    .line 765
    .local v1, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 768
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    return-object v2
.end method

.method public getObjectIdFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Z)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getObjectIdPartIdFromMmsBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 12
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 525
    const-string v0, ""

    .line 526
    .local v0, "ObjectId":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v1, "partId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 530
    .local v2, "rowId":J
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->querymmsPduBufferDB(J)Landroid/database/Cursor;

    move-result-object v4

    .line 531
    .local v4, "pduCursor":Landroid/database/Cursor;
    const/16 v5, 0x2f

    const-string v6, ""

    if-eqz v4, :cond_2

    .line 532
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 533
    const-string/jumbo v7, "res_url"

    .line 534
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 533
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 535
    .local v7, "resUrl":Ljava/lang/String;
    sget-object v8, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "resUrl: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    if-nez v7, :cond_0

    .line 537
    move-object v0, v6

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {v7, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v8

    .line 541
    .end local v7    # "resUrl":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 530
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v5

    .line 543
    :cond_2
    move-object v0, v6

    .line 545
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 547
    .end local v4    # "pduCursor":Landroid/database/Cursor;
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object v4

    .line 548
    .local v4, "partCursor":Landroid/database/Cursor;
    if-eqz v4, :cond_9

    .line 549
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 552
    :cond_5
    const-string/jumbo v7, "payloadurl"

    .line 553
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 552
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 554
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 555
    move-object v8, v6

    .local v8, "id":Ljava/lang/String;
    goto :goto_3

    .line 557
    .end local v8    # "id":Ljava/lang/String;
    :cond_6
    invoke-virtual {v7, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 559
    .restart local v8    # "id":Ljava/lang/String;
    :goto_3
    sget-object v9, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "payLoadurl: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "partId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 561
    goto :goto_4

    .line 563
    :cond_7
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "id":Ljava/lang/String;
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v7, :cond_5

    goto :goto_6

    .line 547
    :catchall_2
    move-exception v5

    if-eqz v4, :cond_8

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw v5

    .line 567
    :cond_9
    :goto_6
    if-eqz v4, :cond_a

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 568
    .end local v4    # "partCursor":Landroid/database/Cursor;
    :cond_a
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public getObjectIdPartIdFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 10
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 441
    const-string v0, ""

    .line 442
    .local v0, "ObjectId":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v1, "partId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 446
    .local v2, "rowId":J
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object v4

    .line 447
    .local v4, "rcsCursor":Landroid/database/Cursor;
    const-string v5, ""

    if-eqz v4, :cond_3

    .line 448
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 449
    const-string/jumbo v6, "res_url"

    .line 450
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 449
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, "resUrl":Ljava/lang/String;
    sget-object v7, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resUrl: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/16 v7, 0x2f

    if-nez v6, :cond_0

    .line 453
    move-object v0, v5

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 458
    :goto_0
    const-string/jumbo v5, "payloadpartFull"

    .line 459
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 458
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, "payloadUrl":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 461
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 462
    .local v7, "id":Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    .end local v5    # "payloadUrl":Ljava/lang/String;
    .end local v6    # "resUrl":Ljava/lang/String;
    .end local v7    # "id":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 446
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v5

    .line 466
    :cond_3
    move-object v0, v5

    .line 468
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 469
    .end local v4    # "rcsCursor":Landroid/database/Cursor;
    :cond_5
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public getPayloadPartUrlFromMmsBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/util/List;
    .locals 8
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v0, "partUrl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 578
    .local v1, "rowId":J
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object v3

    .line 579
    .local v3, "partCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_3

    .line 580
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 582
    :cond_0
    const-string/jumbo v4, "payloadurl"

    .line 583
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 582
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "url":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "payLoadurl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 586
    goto :goto_0

    .line 588
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    goto :goto_2

    .line 578
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v4

    .line 592
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 593
    .end local v3    # "partCursor":Landroid/database/Cursor;
    :cond_4
    return-object v0
.end method

.method public getPayloadPartUrlFromMmsPartUsingPartBufferId(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 7
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 598
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 599
    .local v0, "rowId":J
    const/4 v2, 0x0

    .line 600
    .local v2, "partUrl":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryPartsBufferDBUsingPartBufferId(J)Landroid/database/Cursor;

    move-result-object v3

    .line 601
    .local v3, "partCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 602
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 603
    const-string/jumbo v4, "payloadurl"

    .line 604
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 603
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 605
    sget-object v4, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "payLoadurl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 600
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v4

    .line 608
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 609
    .end local v3    # "partCursor":Landroid/database/Cursor;
    :cond_2
    return-object v2
.end method

.method public getPayloadPartandAllPayloadUrlFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 7
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 474
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 476
    .local v0, "rowId":J
    const-string v2, ""

    .line 477
    .local v2, "payloadpartUrl":Ljava/lang/String;
    const-string v3, ""

    .line 478
    .local v3, "payloadUrl":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object v4

    .line 479
    .local v4, "rcsCursor":Landroid/database/Cursor;
    if-eqz v4, :cond_1

    .line 480
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 481
    const-string/jumbo v5, "payloadpartFull"

    .line 482
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 481
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 483
    const-string/jumbo v5, "payloadurl"

    .line 484
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 483
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    goto :goto_1

    .line 478
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v5

    .line 487
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 488
    .end local v4    # "rcsCursor":Landroid/database/Cursor;
    :cond_2
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public getRCSObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 8
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 635
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x0

    .line 638
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 639
    iget-wide v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryrcsMessageBufferDB(J)Landroid/database/Cursor;

    move-result-object v1

    .line 640
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 641
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 642
    const-string v3, "message_isslm"

    .line 643
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 642
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 644
    .local v3, "isSlm":I
    const-string v4, "is_filetransfer"

    .line 645
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 644
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 646
    .local v4, "isFt":I
    sget-object v5, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRCSObjectPairFromCursor :: isSlm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isFt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-ne v3, v2, :cond_0

    .line 649
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getSlmObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 650
    :cond_0
    if-ne v4, v2, :cond_1

    .line 652
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFtObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 655
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getChatObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_1

    .line 639
    .end local v3    # "isSlm":I
    .end local v4    # "isFt":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2

    .line 659
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 661
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_4
    return-object v0
.end method

.method public getResourceUrlFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Z)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getSearchCursorByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Ljava/lang/String;
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 58
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSearchCursorByLine: line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->CONTENT_URI_BUFFERDB:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "multilinestatus"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    .local v0, "queryMessageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 63
    .local v1, "cs":Landroid/database/Cursor;
    if-eqz v1, :cond_4

    .line 64
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    :cond_0
    const-string v2, "initsync_cusor"

    .line 67
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 66
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "searchCursor":Ljava/lang/String;
    const-string v3, "messagetype"

    .line 69
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 68
    invoke-static {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v3

    .line 70
    .local v3, "savedType":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    invoke-virtual {p2, v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveObjectSearchCursor(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    nop

    .line 80
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_1
    return-object v2

    .line 77
    .end local v2    # "searchCursor":Ljava/lang/String;
    .end local v3    # "savedType":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    .line 62
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2

    .line 80
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 81
    .end local v1    # "cs":Landroid/database/Cursor;
    :cond_5
    const-string v1, ""

    return-object v1
.end method

.method public getSmsObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 5
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 217
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 219
    .local v0, "rowId":J
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object v2

    .line 220
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v3, ""

    if-eqz v2, :cond_4

    .line 221
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 222
    const-string/jumbo v4, "res_url"

    .line 223
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 222
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .local v4, "id":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 226
    nop

    .line 232
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_0
    return-object v3

    .line 229
    :cond_1
    const/16 v3, 0x2f

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_2
    return-object v3

    .line 219
    .end local v4    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v3

    .line 232
    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 233
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_5
    return-object v3
.end method

.method public getSmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 16
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 670
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 672
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    move-object/from16 v3, p1

    iget-wide v4, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object v4

    .line 673
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_5

    .line 674
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 675
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 677
    .local v0, "object":Lcom/sec/internal/omanetapi/nms/data/Object;
    new-instance v5, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v5}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v5, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 679
    const-string/jumbo v5, "read"

    .line 680
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 679
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 681
    .local v5, "read":I
    const-string/jumbo v6, "type"

    .line 682
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 681
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    .local v6, "direction":J
    const-string v8, "\\Flagged"

    const-wide/16 v9, 0x2

    const/4 v11, 0x1

    if-eq v5, v11, :cond_1

    cmp-long v12, v6, v9

    if-nez v12, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    :try_start_1
    iget-object v12, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    goto :goto_1

    .line 685
    :cond_1
    :goto_0
    iget-object v12, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v13, "\\Seen"

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    .line 694
    :goto_1
    const/4 v8, 0x0

    .line 695
    .local v8, "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    new-instance v12, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v12, v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 697
    .local v12, "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    const-string v15, "date"

    .line 698
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 697
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v14, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 699
    .local v9, "date":Ljava/lang/String;
    new-array v10, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v9, v10, v13

    invoke-virtual {v12, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 703
    const-string v10, "address"

    .line 704
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 703
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 706
    .local v10, "address":Ljava/lang/String;
    const-wide/16 v14, 0x1

    cmp-long v14, v6, v14

    if-nez v14, :cond_2

    .line 707
    const-string v14, "IN"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 710
    new-array v14, v11, [Ljava/lang/String;

    .line 711
    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v13

    .line 710
    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 714
    new-array v11, v11, [Ljava/lang/String;

    .line 716
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v14

    .line 715
    invoke-virtual {v1, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    .line 714
    invoke-virtual {v12, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    goto :goto_2

    .line 718
    :cond_2
    const-wide/16 v14, 0x2

    cmp-long v14, v6, v14

    if-nez v14, :cond_3

    .line 719
    const-string v14, "OUT"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 722
    new-array v14, v11, [Ljava/lang/String;

    .line 723
    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v13

    .line 722
    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    .line 726
    new-array v11, v11, [Ljava/lang/String;

    .line 728
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v14

    .line 727
    invoke-virtual {v1, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    .line 726
    invoke-virtual {v12, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 732
    :cond_3
    :goto_2
    const-string v11, "no"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCpmGroup([Ljava/lang/String;)V

    .line 736
    const-string/jumbo v11, "pager-message"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    .line 740
    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v11

    move-object v8, v11

    .line 741
    iput-object v8, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 743
    new-instance v11, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v13, "form-data;name=\"attachments\";filename=\"sms.txt\""

    const-string/jumbo v14, "text/plain"

    const-string v15, "body"

    .line 746
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 745
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    .local v11, "part":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    new-instance v13, Landroid/util/Pair;

    invoke-direct {v13, v0, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v13

    goto :goto_4

    .line 672
    .end local v0    # "object":Lcom/sec/internal/omanetapi/nms/data/Object;
    .end local v5    # "read":I
    .end local v6    # "direction":J
    .end local v8    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .end local v9    # "date":Ljava/lang/String;
    .end local v10    # "address":Ljava/lang/String;
    .end local v11    # "part":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .end local v12    # "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v5

    .line 752
    :cond_5
    :goto_4
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 754
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_6
    return-object v2
.end method

.method public getSummaryObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 5
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 193
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 195
    .local v0, "rowId":J
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->querySummaryDB(J)Landroid/database/Cursor;

    move-result-object v2

    .line 196
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v3, ""

    if-eqz v2, :cond_4

    .line 197
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    const-string/jumbo v4, "res_url"

    .line 199
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 198
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .local v4, "id":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 202
    nop

    .line 208
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_0
    return-object v3

    .line 205
    :cond_1
    const/16 v3, 0x2f

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_2
    return-object v3

    .line 195
    .end local v4    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v3

    .line 208
    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 209
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_5
    return-object v3
.end method

.method public getVVMGreetingObjectPairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVvmObjectFromDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object v0

    .line 373
    .local v0, "obj":Lcom/sec/internal/omanetapi/nms/data/Object;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVvmGreetingBodyFromDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    .line 374
    .local v1, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public getVVMGreetingTypeFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 5
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 615
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    .line 616
    .local v0, "vvmCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 617
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 619
    const-string v1, "greetingtype"

    .line 620
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 619
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 621
    .local v1, "type":I
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVVMGreetingTypeFromBufDb : type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->valueOf(I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_0
    return-object v2

    .line 615
    .end local v1    # "type":I
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 625
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 626
    .end local v0    # "vvmCursor":Landroid/database/Cursor;
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    return-object v0
.end method

.method public getVVMGreetingpayLoadUrlFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 6
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 280
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 281
    .local v0, "rowId":J
    const/4 v2, 0x0

    .line 283
    .local v2, "payloadUrl":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object v3

    .line 284
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_2

    .line 285
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    const-string/jumbo v4, "payloadurl"

    .line 287
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 286
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 289
    if-nez v2, :cond_2

    .line 290
    const-string v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_0
    return-object v4

    .line 283
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v4

    .line 294
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 295
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v2
.end method

.method public getVVMObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 5
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 239
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 241
    .local v0, "rowId":J
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryVvmDataBufferDB(J)Landroid/database/Cursor;

    move-result-object v2

    .line 242
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v3, ""

    if-eqz v2, :cond_4

    .line 243
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 244
    const-string/jumbo v4, "res_url"

    .line 245
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 244
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .local v4, "id":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 248
    nop

    .line 254
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_0
    return-object v3

    .line 251
    :cond_1
    const/16 v3, 0x2f

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_2
    return-object v3

    .line 241
    .end local v4    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v3

    .line 254
    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 255
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_5
    return-object v3
.end method

.method public getVVMServiceProfileFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    .locals 12
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p2, "profile"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    .line 300
    if-eqz p1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 304
    :cond_0
    const/4 v0, 0x0

    .line 305
    .local v0, "profiletype":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 306
    .local v1, "type":I
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 307
    .local v2, "rowId":J
    const/16 v4, 0x13

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v4, :cond_9

    const/16 v4, 0x14

    if-eq v1, v4, :cond_1

    goto/16 :goto_5

    .line 331
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryVvmProfileBufferDB(J)Landroid/database/Cursor;

    move-result-object v4

    .line 332
    .local v4, "profilecursor":Landroid/database/Cursor;
    if-eqz v4, :cond_7

    .line 333
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 334
    const-string/jumbo v7, "profile_changetype"

    .line 335
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 334
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 336
    .local v7, "changeType":I
    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v8, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 337
    .local v8, "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    sget-object v9, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v9}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v9

    if-ne v9, v7, :cond_2

    .line 338
    const-string v9, "email_addr1"

    .line 339
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 338
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 340
    .local v9, "email1":Ljava/lang/String;
    const-string v10, "email_addr2"

    .line 341
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 340
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 342
    .local v10, "email2":Ljava/lang/String;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    aput-object v9, v11, v5

    aput-object v10, v11, v6

    invoke-virtual {v8, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setEmailAddress([Ljava/lang/String;)V

    .line 345
    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    move-object v0, v5

    .line 346
    .end local v9    # "email1":Ljava/lang/String;
    .end local v10    # "email2":Ljava/lang/String;
    goto :goto_0

    :cond_2
    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 347
    const-string/jumbo v5, "true"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setVVMOn([Ljava/lang/String;)V

    .line 350
    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    move-object v0, v5

    goto :goto_0

    .line 351
    :cond_3
    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 352
    const-string v5, "false"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setVVMOn([Ljava/lang/String;)V

    .line 355
    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    move-object v0, v5

    goto :goto_0

    .line 356
    :cond_4
    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 357
    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    move-object v0, v5

    .line 359
    :cond_5
    :goto_0
    invoke-virtual {v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v5

    iput-object v5, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 331
    .end local v7    # "changeType":I
    .end local v8    # "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_6

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v5

    .line 362
    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 363
    .end local v4    # "profilecursor":Landroid/database/Cursor;
    :cond_8
    goto :goto_5

    .line 309
    :cond_9
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryVvmPinBufferDB(J)Landroid/database/Cursor;

    move-result-object v4

    .line 310
    .local v4, "pincursor":Landroid/database/Cursor;
    if-eqz v4, :cond_b

    .line 311
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 312
    const-string v7, "oldpwd"

    .line 313
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 312
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, "oldPwd":Ljava/lang/String;
    const-string v8, "newpwd"

    .line 316
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 315
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, "newPwd":Ljava/lang/String;
    new-instance v9, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v9, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 319
    .local v9, "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    new-array v10, v6, [Ljava/lang/String;

    aput-object v7, v10, v5

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setOldPwd([Ljava/lang/String;)V

    .line 322
    new-array v6, v6, [Ljava/lang/String;

    aput-object v8, v6, v5

    invoke-virtual {v9, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setPwd([Ljava/lang/String;)V

    .line 325
    invoke-virtual {v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v5

    iput-object v5, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 309
    .end local v7    # "oldPwd":Ljava/lang/String;
    .end local v8    # "newPwd":Ljava/lang/String;
    .end local v9    # "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    :catchall_2
    move-exception v5

    if-eqz v4, :cond_a

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    throw v5

    .line 328
    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 329
    .end local v4    # "pincursor":Landroid/database/Cursor;
    :cond_c
    nop

    .line 367
    :goto_5
    return-object v0

    .line 301
    .end local v0    # "profiletype":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    .end local v1    # "type":I
    .end local v2    # "rowId":J
    :cond_d
    :goto_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVVMpayLoadUrlFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 6
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 260
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 261
    .local v0, "rowId":J
    const/4 v2, 0x0

    .line 263
    .local v2, "payloadUrl":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->queryVvmDataBufferDB(J)Landroid/database/Cursor;

    move-result-object v3

    .line 264
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_2

    .line 265
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    const-string/jumbo v4, "payloadurl"

    .line 267
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 266
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 269
    if-nez v2, :cond_2

    .line 270
    const-string v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_0
    return-object v4

    .line 263
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v4

    .line 274
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 275
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v2
.end method
