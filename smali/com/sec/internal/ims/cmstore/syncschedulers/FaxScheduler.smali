.class public Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "FaxScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rule"    # Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;
    .param p3, "builder"    # Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;
    .param p4, "deviceDataListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;
    .param p5, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 59
    new-instance v0, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-direct {v0, p1, p5}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    .line 60
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mDbTableContractIndex:I

    .line 61
    return-void
.end method

.method private deleteFilePath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 471
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    return-void

    .line 475
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFilePath(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1
    return-void
.end method

.method private handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 4
    .param p1, "object"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "downloadlist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 311
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    const-string v1, "handleCloudNotifyChangedObj()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 341
    .local v0, "summaryCs":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    const-string/jumbo v1, "syncaction"

    .line 343
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 342
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 344
    .local v1, "status":I
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 345
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "this is a deleted object"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_0
    return-void

    .line 348
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V

    .line 349
    .end local v1    # "status":I
    goto :goto_0

    .line 350
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onNmsEventChangedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 353
    .end local v0    # "summaryCs":Landroid/database/Cursor;
    :cond_3
    return-void

    .line 340
    .restart local v0    # "summaryCs":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method private handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 4
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    .line 85
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    const-string v1, "handleCloudNotifyDeletedObj()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 113
    .local v0, "summaryCs":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const-string/jumbo v1, "syncaction"

    .line 115
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 114
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 116
    .local v1, "status":I
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 117
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "this is a deleted object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_0
    return-void

    .line 120
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    .line 121
    .end local v1    # "status":I
    goto :goto_0

    .line 122
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onNmsEventDeletedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 125
    .end local v0    # "summaryCs":Landroid/database/Cursor;
    :cond_3
    return-void

    .line 112
    .restart local v0    # "summaryCs":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method private handleExistingFaxUsingClientCorrelator(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V
    .locals 16
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "object"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleExistingFaxUsingClientCorrelator, status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v5, v5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->status:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->status:Ljava/lang/String;

    const-string v4, "Delivered"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "FAX"

    const-string v5, "MessageApp"

    const-string/jumbo v7, "syncdirection"

    const-string/jumbo v8, "syncaction"

    const-string v9, "deliverstatus"

    const-string v10, "correlation_id"

    const-string/jumbo v11, "res_url"

    const-string v12, "_bufferdbid"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v3, :cond_0

    .line 358
    const-string/jumbo v3, "transaction_id=?"

    .line 359
    .local v3, "select":Ljava/lang/String;
    new-array v14, v14, [Ljava/lang/String;

    iget-object v15, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v15, v15, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->client_correlator:Ljava/lang/String;

    aput-object v15, v14, v13

    move-object v13, v14

    .line 360
    .local v13, "selectionArgs":[Ljava/lang/String;
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 361
    .local v14, "rowid":J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .local v12, "cv":Landroid/content/ContentValues;
    iget-object v6, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v6, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v12, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->DELIVERED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    const/16 v7, 0x15

    invoke-virtual {v6, v7, v12, v3, v13}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 369
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v6, v5, v4, v14, v15}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .end local v3    # "select":Ljava/lang/String;
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "rowid":J
    goto :goto_0

    .line 371
    :cond_0
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->status:Ljava/lang/String;

    const-string v6, "Failed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    const-string/jumbo v3, "transaction_id=?"

    .line 373
    .restart local v3    # "select":Ljava/lang/String;
    new-array v6, v14, [Ljava/lang/String;

    iget-object v14, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v14, v14, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->client_correlator:Ljava/lang/String;

    aput-object v14, v6, v13

    .line 374
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 375
    .local v12, "rowid":J
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 376
    .local v14, "cv":Landroid/content/ContentValues;
    iget-object v15, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v11, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v14, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v14, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    const/16 v8, 0x15

    invoke-virtual {v7, v8, v14, v3, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 383
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v7, v5, v4, v12, v13}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 371
    .end local v3    # "select":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "rowid":J
    .end local v14    # "cv":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    nop

    .line 386
    :goto_1
    return-void
.end method

.method private handledeleteFax(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 22
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 440
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string/jumbo v0, "syncdirection"

    const-string/jumbo v1, "syncaction"

    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    iget v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->queryFaxMessageBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v12

    .line 441
    .local v12, "cs":Landroid/database/Cursor;
    if-eqz v12, :cond_3

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 442
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object v13, v2

    .line 443
    .local v13, "cv":Landroid/content/ContentValues;
    const-string v2, "_bufferdbid"

    .line 444
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 443
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-wide v6, v2

    .line 445
    .local v6, "bufferDbId":J
    nop

    .line 446
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 445
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v19

    .line 447
    .local v19, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 448
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 447
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v18

    .line 449
    .local v18, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v2, "file_path"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 450
    .local v9, "filePath":Ljava/lang/String;
    const-string v2, "direction"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move v5, v2

    .line 451
    .local v5, "faxdirection":I
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 452
    invoke-direct {v10, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->deleteFilePath(Ljava/lang/String;)V

    .line 454
    :cond_0
    const-string v2, "linenum"

    .line 455
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 454
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 456
    .local v8, "line":Ljava/lang/String;
    iget-object v14, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v15, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mDbTableContractIndex:I

    sget-object v20, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    move-wide/from16 v16, v6

    invoke-virtual/range {v14 .. v20}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    move-object v14, v2

    .line 459
    .local v14, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-object v2, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    iget-object v0, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v10, v13, v6, v7, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 462
    iget-boolean v0, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 463
    iget v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide v3, v6

    move/from16 v17, v5

    .end local v5    # "faxdirection":I
    .local v17, "faxdirection":I
    move v5, v0

    move-wide/from16 v20, v6

    .end local v6    # "bufferDbId":J
    .local v20, "bufferDbId":J
    move v6, v15

    move/from16 v7, v16

    move-object v0, v9

    .end local v9    # "filePath":Ljava/lang/String;
    .local v0, "filePath":Ljava/lang/String;
    move-object/from16 v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 462
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v17    # "faxdirection":I
    .end local v20    # "bufferDbId":J
    .restart local v5    # "faxdirection":I
    .restart local v6    # "bufferDbId":J
    .restart local v9    # "filePath":Ljava/lang/String;
    :cond_1
    move/from16 v17, v5

    move-wide/from16 v20, v6

    move-object v0, v9

    .end local v5    # "faxdirection":I
    .end local v6    # "bufferDbId":J
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v0    # "filePath":Ljava/lang/String;
    .restart local v17    # "faxdirection":I
    .restart local v20    # "bufferDbId":J
    goto :goto_1

    .line 440
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v14    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v17    # "faxdirection":I
    .end local v18    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v19    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .end local v20    # "bufferDbId":J
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_2

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 467
    :cond_3
    :goto_1
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 468
    .end local v12    # "cs":Landroid/database/Cursor;
    :cond_4
    return-void
.end method

.method private handlereadFax(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 21
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 482
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string/jumbo v0, "syncdirection"

    const-string/jumbo v1, "syncaction"

    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    iget v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->queryFaxMessageBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v12

    .line 483
    .local v12, "cs":Landroid/database/Cursor;
    if-eqz v12, :cond_2

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 484
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object v13, v2

    .line 485
    .local v13, "cv":Landroid/content/ContentValues;
    const-string v2, "_bufferdbid"

    .line 486
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 485
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-wide v6, v2

    .line 487
    .local v6, "bufferDbId":J
    nop

    .line 488
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 487
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v19

    .line 489
    .local v19, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 490
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 489
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v18

    .line 491
    .local v18, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v2, "linenum"

    .line 492
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 491
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 493
    .local v8, "line":Ljava/lang/String;
    iget-object v14, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v15, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mDbTableContractIndex:I

    sget-object v20, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Read:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    move-wide/from16 v16, v6

    invoke-virtual/range {v14 .. v20}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    move-object v14, v2

    .line 496
    .local v14, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-object v2, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    iget-object v0, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v10, v13, v6, v7, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 499
    iget-boolean v0, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 500
    iget v5, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/4 v0, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide v3, v6

    move-wide v15, v6

    .end local v6    # "bufferDbId":J
    .local v15, "bufferDbId":J
    move v6, v0

    move v7, v9

    move-object/from16 v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 499
    .end local v15    # "bufferDbId":J
    .restart local v6    # "bufferDbId":J
    :cond_0
    move-wide v15, v6

    .end local v6    # "bufferDbId":J
    .restart local v15    # "bufferDbId":J
    goto :goto_1

    .line 482
    .end local v8    # "line":Ljava/lang/String;
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v14    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v15    # "bufferDbId":J
    .end local v18    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v19    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_1

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 504
    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 505
    .end local v12    # "cs":Landroid/database/Cursor;
    :cond_3
    return-void
.end method

.method private handlesendFax(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 508
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->queryFaxMessageBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 509
    .local v0, "cs":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    const-string v1, "_bufferdbid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 511
    .local v1, "rowid":I
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->reSendFax(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;I)V

    .line 512
    .end local v1    # "rowid":I
    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->sendFax(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 516
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_1
    return-void

    .line 508
    .restart local v0    # "cs":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method private onFaxSendingFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 6
    .param p1, "paramOMAObj"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 300
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v0, "cv":Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "uploadstatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 305
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    .line 307
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 305
    const-string v4, "MessageApp"

    const-string v5, "FAX"

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 308
    return-void
.end method

.method private onFaxSendingSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 6
    .param p1, "paramOMAObj"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 286
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v0, "cv":Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->SUCCESS:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "uploadstatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->PENDING:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deliverstatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    nop

    .line 292
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    const-string/jumbo v2, "res_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 294
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    .line 296
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 294
    const-string v4, "MessageApp"

    const-string v5, "FAX"

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 297
    return-void
.end method

.method private onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V
    .locals 11
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    .line 225
    const-string v0, "flagRead"

    .line 226
    const-string v1, "messagetype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 225
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 227
    .local v1, "type":I
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNmsEventChangedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    iget-object v3, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 229
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->queryFaxMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 230
    .local v2, "clgCs":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    const-string v3, "_bufferdbid"

    .line 232
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 231
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 233
    .local v3, "rowid":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 234
    .local v4, "seen":I
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    iget-object v6, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v5

    .line 235
    .local v5, "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v7, v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 237
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v7, "cv":Landroid/content/ContentValues;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string/jumbo v0, "syncaction"

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string/jumbo v0, "syncdirection"

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 241
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 240
    invoke-virtual {v7, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    int-to-long v8, v3

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {p0, v7, v8, v9, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    const-string v6, "MessageApp"

    const-string v8, "FAX"

    int-to-long v9, v3

    invoke-virtual {v0, v6, v8, v9, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 228
    .end local v3    # "rowid":I
    .end local v4    # "seen":I
    .end local v5    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .end local v7    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0

    .line 248
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v2    # "clgCs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private onNmsEventChangedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 10
    .param p1, "object"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "downloadlist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v1, 0x15

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    .line 255
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "line":Ljava/lang/String;
    :try_start_0
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->client_correlator:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->insertNewFaxUsingChangedObject(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Ljava/lang/String;)J

    move-result-wide v3

    .line 261
    .local v3, "rowid":J
    iget-object v7, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v2, 0x15

    const/4 v5, 0x0

    move-object v1, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    return-void

    .line 266
    .end local v3    # "rowid":J
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->client_correlator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->queryFaxMessageBufferDBwithClientCorrelator(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v1

    .line 268
    .local v7, "cs":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    const-string v2, "handleCloudNotifyChangedObj: changeObj exist"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0, v7, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handleExistingFaxUsingClientCorrelator(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->insertNewFaxUsingChangedObject(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Ljava/lang/String;)J

    move-result-wide v3

    .line 275
    .restart local v3    # "rowid":J
    iget-object v8, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v2, 0x15

    const/4 v5, 0x0

    move-object v1, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    .end local v3    # "rowid":J
    :goto_0
    if-eqz v7, :cond_2

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    .end local v7    # "cs":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 266
    .restart local v7    # "cs":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "line":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;
    .end local p1    # "object":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .end local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :cond_3
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 280
    .end local v7    # "cs":Landroid/database/Cursor;
    .restart local v0    # "line":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;
    .restart local p1    # "object":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .restart local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNmsEventChangedObjSummaryDbNotAvailableUsingUrl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    return-void
.end method

.method private onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 10
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    .line 193
    const-string/jumbo v0, "syncaction"

    .line 194
    const-string v1, "messagetype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 193
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 195
    .local v1, "type":I
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNmsEventDeletedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    iget-object v3, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 197
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->queryFaxMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 198
    .local v2, "clgCs":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    const-string v3, "_bufferdbid"

    .line 200
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 199
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 201
    .local v3, "rowid":I
    nop

    .line 202
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 201
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 203
    .local v4, "action":I
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    if-eq v5, v4, :cond_1

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 204
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 205
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v5, "cv":Landroid/content/ContentValues;
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string/jumbo v0, "syncdirection"

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 208
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 207
    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    int-to-long v6, v3

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    const-string v6, "MessageApp"

    const-string v7, "FAX"

    int-to-long v8, v3

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 196
    .end local v3    # "rowid":I
    .end local v4    # "action":I
    .end local v5    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0

    .line 215
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 216
    .end local v2    # "clgCs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private onNmsEventDeletedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 2
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v1, 0x15

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventDeletedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)J

    .line 221
    return-void
.end method


# virtual methods
.method public handleNormalSyncDownloadedFaxMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V
    .locals 12
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    .line 519
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNormalSyncDownloadedFaxMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 521
    .local v0, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 522
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->queryFaxMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 523
    .local v1, "mmsCs":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    const-string v2, "_bufferdbid"

    .line 525
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 524
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 526
    .local v2, "rowid":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 527
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "syncaction"

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    const-string/jumbo v4, "syncdirection"

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    const-string/jumbo v4, "payloadurl"

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 531
    .local v10, "line":Ljava/lang/String;
    int-to-long v4, v2

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 532
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v6, 0x15

    int-to-long v7, v2

    const/4 v9, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 521
    .end local v2    # "rowid":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v10    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2

    .line 536
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 537
    .end local v1    # "mmsCs":Landroid/database/Cursor;
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 538
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 540
    :cond_3
    return-void
.end method

.method public handleObjectFaxMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J
    .locals 26
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p2, "mIsGoforwardSync"    # Z

    .line 129
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string/jumbo v0, "syncdirection"

    const-string/jumbo v1, "syncaction"

    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleObjectFaxMessageCloudSearch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-wide/16 v12, -0x1

    .line 140
    .local v12, "rowId":J
    :try_start_0
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    iget-object v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->queryFaxMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v14, v2

    .line 141
    .local v14, "cs":Landroid/database/Cursor;
    :try_start_1
    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 142
    .local v15, "line":Ljava/lang/String;
    if-eqz v14, :cond_4

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    const-string v2, "_bufferdbid"

    .line 144
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 143
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 145
    .local v8, "bufferid":J
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 146
    .local v2, "_id":I
    nop

    .line 147
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 146
    invoke-static {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v21

    .line 148
    .local v21, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 149
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 148
    invoke-static {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v20

    .line 150
    .local v20, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object v7, v3

    .line 151
    .local v7, "cv":Landroid/content/ContentValues;
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    move-object v5, v3

    .line 153
    .local v5, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    const/4 v3, 0x0

    iput-boolean v3, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    .line 154
    const-string v3, "flagRead"

    iget-object v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    iget-object v6, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 155
    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->getIfSeenValueUsingFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 154
    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v4, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_0

    .line 157
    :try_start_2
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mDbTableContractIndex:I

    sget-object v22, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-wide/from16 v18, v8

    invoke-virtual/range {v16 .. v22}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v3

    move-wide/from16 v22, v8

    move-wide/from16 v18, v12

    move-object v13, v5

    move-object v12, v7

    goto :goto_0

    .line 140
    .end local v2    # "_id":I
    .end local v5    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "bufferid":J
    .end local v15    # "line":Ljava/lang/String;
    .end local v20    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v21    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-wide/from16 v18, v12

    goto/16 :goto_4

    .line 159
    .restart local v2    # "_id":I
    .restart local v5    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "bufferid":J
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v20    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .restart local v21    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :cond_0
    :try_start_3
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v4, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mDbTableContractIndex:I

    sget-object v16, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v17, v5

    .end local v5    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v17, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    move-wide v5, v8

    move-wide/from16 v18, v12

    move-object v12, v7

    .end local v7    # "cv":Landroid/content/ContentValues;
    .local v12, "cv":Landroid/content/ContentValues;
    .local v18, "rowId":J
    move-object/from16 v7, v20

    move-wide/from16 v22, v8

    .end local v8    # "bufferid":J
    .local v22, "bufferid":J
    move-object/from16 v8, v21

    move-object/from16 v9, v16

    :try_start_4
    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v3

    move-object v5, v3

    move-object v13, v5

    .end local v17    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v5    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    goto :goto_0

    .line 162
    .end local v18    # "rowId":J
    .end local v22    # "bufferid":J
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "bufferid":J
    .local v12, "rowId":J
    :cond_1
    move-object/from16 v17, v5

    move-wide/from16 v22, v8

    move-wide/from16 v18, v12

    move-object v12, v7

    .end local v5    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "bufferid":J
    .local v12, "cv":Landroid/content/ContentValues;
    .restart local v17    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v18    # "rowId":J
    .restart local v22    # "bufferid":J
    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 163
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mDbTableContractIndex:I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide/from16 v5, v22

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v3

    move-object v5, v3

    move-object v13, v5

    .end local v17    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v5    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    goto :goto_0

    .line 162
    .end local v5    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v17    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :cond_2
    move-object/from16 v13, v17

    .line 167
    .end local v17    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v13, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleObjectFaxMessageCloudSearch: fax found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v22

    .end local v22    # "bufferid":J
    .restart local v8    # "bufferid":J
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", mIsChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean v3, v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v3, :cond_3

    .line 170
    iget-object v3, v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    iget-object v1, v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v10, v12, v8, v9, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 173
    const/16 v5, 0x15

    const/4 v6, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move/from16 v16, v2

    .end local v2    # "_id":I
    .local v16, "_id":I
    move-object v2, v13

    move-wide v3, v8

    move/from16 v7, p2

    move-wide/from16 v24, v8

    .end local v8    # "bufferid":J
    .local v24, "bufferid":J
    move-object v8, v15

    move-object v9, v0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 177
    .end local v16    # "_id":I
    .end local v24    # "bufferid":J
    .restart local v2    # "_id":I
    .restart local v8    # "bufferid":J
    :cond_3
    move/from16 v16, v2

    move-wide/from16 v24, v8

    .end local v2    # "_id":I
    .end local v8    # "bufferid":J
    .restart local v16    # "_id":I
    .restart local v24    # "bufferid":J
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    move-wide/from16 v1, v24

    .end local v24    # "bufferid":J
    .local v1, "bufferid":J
    invoke-virtual {v10, v12, v1, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 179
    .end local v1    # "bufferid":J
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v16    # "_id":I
    .end local v20    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v21    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :goto_1
    move-wide/from16 v12, v18

    goto :goto_2

    .line 142
    .end local v18    # "rowId":J
    .local v12, "rowId":J
    :cond_4
    move-wide/from16 v18, v12

    .line 180
    .end local v12    # "rowId":J
    .restart local v18    # "rowId":J
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    const-string v1, "handleObjectFaxMessageCloudSearch: fax not found: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v1, 0x15

    invoke-virtual {v0, v11, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 183
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v0, v11, v15}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->insertFaxMessageUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide v12, v0

    .line 185
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "rowId":J
    .restart local v12    # "rowId":J
    :goto_2
    if-eqz v14, :cond_5

    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .end local v14    # "cs":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_6

    .line 187
    :cond_5
    :goto_3
    goto :goto_7

    .line 140
    .end local v12    # "rowId":J
    .restart local v14    # "cs":Landroid/database/Cursor;
    .restart local v18    # "rowId":J
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .end local v18    # "rowId":J
    .restart local v12    # "rowId":J
    :catchall_2
    move-exception v0

    move-wide/from16 v18, v12

    move-object v1, v0

    .end local v12    # "rowId":J
    .restart local v18    # "rowId":J
    :goto_4
    if-eqz v14, :cond_6

    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v18    # "rowId":J
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;
    .end local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .end local p2    # "mIsGoforwardSync":Z
    :cond_6
    :goto_5
    throw v1
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    .line 185
    .end local v14    # "cs":Landroid/database/Cursor;
    .restart local v18    # "rowId":J
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .restart local p2    # "mIsGoforwardSync":Z
    :catch_1
    move-exception v0

    move-wide/from16 v12, v18

    goto :goto_6

    .end local v18    # "rowId":J
    .restart local v12    # "rowId":J
    :catch_2
    move-exception v0

    move-wide/from16 v18, v12

    .line 186
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_6
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_7
    return-wide v12
.end method

.method public handleSendFaxMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 3
    .param p1, "paramOMAObj"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "isSuccess"    # Z

    .line 593
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendFaxMessageResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onFaxSendingSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onFaxSendingFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 599
    :goto_0
    return-void
.end method

.method public notifyMsgAppDeleteFail(IJLjava/lang/String;)V
    .locals 6
    .param p1, "dbIndex"    # I
    .param p2, "bufferDbId"    # J
    .param p4, "line"    # Ljava/lang/String;

    .line 615
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMsgAppDeleteFail, dbIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufferDbId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    .line 618
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 619
    .local v0, "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 620
    .local v1, "jsobjct":Lcom/google/gson/JsonObject;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 622
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 624
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 622
    const-string v4, "MessageApp"

    const-string v5, "FAX"

    invoke-interface {v2, v4, v5, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .end local v0    # "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    .end local v1    # "jsobjct":Lcom/google/gson/JsonObject;
    :cond_0
    return-void
.end method

.method public onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 423
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handledeleteFax(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 433
    goto :goto_0

    .line 429
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handlereadFax(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 430
    goto :goto_0

    .line 426
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handlesendFax(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)V

    .line 427
    nop

    .line 437
    :goto_0
    return-void
.end method

.method public onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 1
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "mIsGoforwardSync"    # Z

    .line 629
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 630
    return-void
.end method

.method public onFaxAllPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 20
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "mIsGoforwardSync"    # Z

    .line 544
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaxAllPayloadDownloaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-eqz v11, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_5

    .line 549
    :cond_0
    :try_start_0
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 550
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 549
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    .line 551
    .local v12, "csfax":Landroid/database/Cursor;
    if-eqz v12, :cond_7

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 552
    const-string v0, "_bufferdbid"

    .line 553
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 552
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v13, v0

    .line 554
    .local v13, "id":I
    const-string v0, "linenum"

    .line 555
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 554
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 556
    .local v8, "line":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "filename":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 558
    nop

    .line 559
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/BodyPart;

    invoke-virtual {v2}, Ljavax/mail/BodyPart;->getDisposition()Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getFileNamefromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object v14, v0

    goto :goto_0

    .line 557
    :cond_1
    move-object v14, v0

    .line 561
    .end local v0    # "filename":Ljava/lang/String;
    .local v14, "filename":Ljava/lang/String;
    :goto_0
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 562
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    const-string v1, "onFaxPayloadDownloaded: no file name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 586
    if-eqz v12, :cond_2

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 563
    :cond_2
    return-void

    .line 565
    :cond_3
    const/4 v0, 0x0

    .line 566
    .local v0, "filepath":Ljava/lang/String;
    :try_start_3
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mContext:Landroid/content/Context;

    invoke-static {v2, v14, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 567
    .end local v0    # "filepath":Ljava/lang/String;
    .local v15, "filepath":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generated file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v9, v0

    .line 569
    .local v9, "cv":Landroid/content/ContentValues;
    const-wide/16 v2, 0x0

    .line 570
    .local v2, "totalsaved":J
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, v0

    .line 571
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_4
    invoke-static {v4, v15}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveInputStreamtoPath(Ljava/io/InputStream;Ljava/lang/String;)J

    move-result-wide v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-wide/from16 v16, v5

    .line 572
    .end local v2    # "totalsaved":J
    .local v16, "totalsaved":J
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 573
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "total filesize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-virtual {v1}, Ljavax/mail/BodyPart;->getSize()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v0, "file_name"

    invoke-virtual {v9, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v0, "file_path"

    invoke-virtual {v9, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v0, "file_size"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 577
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 579
    .local v0, "param":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    const-string/jumbo v1, "syncaction"

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    const-string/jumbo v1, "syncdirection"

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    int-to-long v1, v13

    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v10, v9, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 582
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/16 v5, 0x15

    const/4 v6, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v7, p2

    move-object/from16 v19, v9

    .end local v9    # "cv":Landroid/content/ContentValues;
    .local v19, "cv":Landroid/content/ContentValues;
    move-object/from16 v9, v18

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 570
    .end local v0    # "param":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v16    # "totalsaved":J
    .end local v19    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "totalsaved":J
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    move-object/from16 v19, v9

    move-object v1, v0

    .end local v9    # "cv":Landroid/content/ContentValues;
    .restart local v19    # "cv":Landroid/content/ContentValues;
    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_7
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v12    # "csfax":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;
    .end local p1    # "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .end local p2    # "mIsGoforwardSync":Z
    :cond_5
    :goto_1
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 549
    .end local v2    # "totalsaved":J
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "line":Ljava/lang/String;
    .end local v13    # "id":I
    .end local v14    # "filename":Ljava/lang/String;
    .end local v15    # "filepath":Ljava/lang/String;
    .end local v19    # "cv":Landroid/content/ContentValues;
    .restart local v12    # "csfax":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;
    .restart local p1    # "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .restart local p2    # "mIsGoforwardSync":Z
    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_6

    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;
    .end local p1    # "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .end local p2    # "mIsGoforwardSync":Z
    :cond_6
    :goto_2
    throw v1

    .line 586
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;
    .restart local p1    # "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .restart local p2    # "mIsGoforwardSync":Z
    :cond_7
    :goto_3
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljavax/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0

    .line 588
    .end local v12    # "csfax":Landroid/database/Cursor;
    :cond_8
    goto :goto_4

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 546
    :cond_9
    :goto_5
    return-void
.end method

.method public onNotificationReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V
    .locals 4
    .param p1, "notification"    # Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;

    .line 64
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 67
    .local v0, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    if-eqz v1, :cond_2

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 69
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v2, v2, v1

    .line 70
    .local v2, "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 74
    :cond_0
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    .line 68
    .end local v2    # "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 82
    :cond_3
    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V
    .locals 1
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;
    .param p2, "mIsGoforwardSync"    # Z

    .line 603
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 604
    return-void
.end method

.method public queryFaxMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 611
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->queryFaxMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryToDeviceUnDownloadedFax(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "linenum"    # Ljava/lang/String;

    .line 607
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->queryToDeviceUnDownloadedFax(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public reSendFax(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;I)V
    .locals 10
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "buffDbId"    # I

    .line 410
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 411
    .local v0, "cv":Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->PENDING:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "uploadstatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    int-to-long v1, p2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 415
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 416
    .local v1, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    int-to-long v5, p2

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceFax(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 419
    return-void
.end method

.method public sendFax(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)V
    .locals 12
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->getFaxDataFromTelephony(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 390
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 391
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    iget v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    const-string/jumbo v4, "sender"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "direction"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "flagRead"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "error_message"

    const-string/jumbo v4, "sending fax"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->PENDING:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "uploadstatus"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    const-string v4, "linenum"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncaction"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 400
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 399
    const-string/jumbo v4, "syncdirection"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->insertFaxtoBufferDB(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 402
    .local v1, "rowid":J
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v3}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    move-object v9, v3

    .line 403
    .local v9, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v10, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    move-object v3, v11

    move-wide v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v3, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceFax(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 407
    .end local v1    # "rowid":J
    .end local v9    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :cond_0
    return-void
.end method

.method public wipeOutData(ILjava/lang/String;)V
    .locals 1
    .param p1, "tableindex"    # I
    .param p2, "line"    # Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->wipeOutIncomingFaxAttachement(ILjava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/FaxQueryBuilder;->deleteAllUsingLineAndTableIndex(ILjava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->deleteAllUsingLineAndTableIndex(ILjava/lang/String;)V

    .line 637
    return-void
.end method
