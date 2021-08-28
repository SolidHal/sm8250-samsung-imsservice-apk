.class public Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "VVMScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

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

    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 64
    new-instance v0, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-direct {v0, p1, p5}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 65
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mDbTableContractIndex:I

    .line 66
    return-void
.end method

.method private getTextDatafromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;

    .line 689
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 691
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const-string v1, "getTextDatafromInputStream: error:"

    if-eqz p1, :cond_2

    .line 692
    const/16 v2, 0x100

    :try_start_0
    new-array v2, v2, [B

    .line 693
    .local v2, "buffer":[B
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 694
    .local v3, "len":I
    :goto_0
    if-ltz v3, :cond_2

    .line 695
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 696
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    goto :goto_0

    .line 703
    .end local v2    # "buffer":[B
    .end local v3    # "len":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 699
    :catch_0
    move-exception v2

    .line 700
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTextDatafromInputStream error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    const/4 v3, 0x0

    .line 703
    if-eqz p1, :cond_0

    .line 705
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 708
    goto :goto_1

    .line 706
    :catch_1
    move-exception v4

    .line 707
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-object v3

    .line 703
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz p1, :cond_1

    .line 705
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 708
    goto :goto_3

    .line 706
    :catch_2
    move-exception v3

    .line 707
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v2

    .line 703
    :cond_2
    if-eqz p1, :cond_3

    .line 705
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 708
    :goto_4
    goto :goto_5

    .line 706
    :catch_3
    move-exception v2

    .line 707
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 711
    :cond_3
    :goto_5
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTextDatafromInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCloudNotifyChangedObjGreeting(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 10
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "downloadlist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 371
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string v1, "handleCloudNotifyChangedObjGreeting()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "line":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 375
    .local v7, "summaryCs":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    const-string/jumbo v1, "syncaction"

    .line 377
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 376
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 378
    .local v1, "status":I
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 379
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "this is a deleted object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_0
    return-void

    .line 382
    .end local v1    # "status":I
    :cond_1
    goto :goto_0

    .line 383
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v2, 0x12

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    move-result-wide v3

    .line 388
    .local v3, "rowId":J
    iget-object v8, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v2, 0x7

    const/4 v5, 0x0

    move-object v1, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    .end local v3    # "rowId":J
    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 393
    .end local v7    # "summaryCs":Landroid/database/Cursor;
    :cond_3
    return-void

    .line 374
    .restart local v7    # "summaryCs":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
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

.method private handleCloudNotifyChangedObjVVM(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 4
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "downloadlist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 396
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string v1, "handleCloudNotifyChangedObjVVM()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 426
    .local v0, "summaryCs":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    const-string/jumbo v1, "syncaction"

    .line 428
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 427
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 429
    .local v1, "status":I
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 430
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "this is a deleted object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 431
    :cond_0
    return-void

    .line 433
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V

    .line 434
    .end local v1    # "status":I
    goto :goto_0

    .line 435
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onNmsEventChangedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 438
    .end local v0    # "summaryCs":Landroid/database/Cursor;
    :cond_3
    return-void

    .line 425
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

.method private handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)V
    .locals 4
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .param p2, "dataContractType"    # I

    .line 441
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string v1, "handleCloudNotifyDeletedObj()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 469
    .local v0, "summaryCs":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 470
    const-string/jumbo v1, "syncaction"

    .line 471
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 470
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 472
    .local v1, "status":I
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 473
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "this is a deleted object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 474
    :cond_0
    return-void

    .line 476
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)V

    .line 477
    .end local v1    # "status":I
    goto :goto_0

    .line 478
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onNmsEventDeletedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 481
    .end local v0    # "summaryCs":Landroid/database/Cursor;
    :cond_3
    return-void

    .line 468
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

.method private handleCloudNotifyObject(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;ILjava/lang/String;)V
    .locals 4
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;
    .param p2, "dataContractType"    # I
    .param p3, "line"    # Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloudNotifyObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v0, 0x13

    if-eq p2, v0, :cond_1

    const/16 v0, 0x14

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    :try_start_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;-><init>()V

    .line 192
    .local v0, "updateemail":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    iput-object p3, v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    .line 193
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->emailAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mEmail1:Ljava/lang/String;

    .line 194
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onUpdateNewEmailProfile(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)V

    .line 195
    goto :goto_0

    .line 185
    .end local v0    # "updateemail":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;-><init>()V

    .line 186
    .local v0, "updatepin":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    iput-object p3, v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    .line 187
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->vvmPin:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mNewPwd:Ljava/lang/String;

    .line 188
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onUpdateNewPin(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    nop

    .line 201
    .end local v0    # "updatepin":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    :goto_0
    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_1
    return-void
.end method

.method private handleReadVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 12
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 810
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmMessageBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 811
    .local v0, "cs":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 812
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 813
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "linenum"

    .line 814
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 813
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 815
    .local v8, "line":Ljava/lang/String;
    const-string/jumbo v2, "syncdirection"

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 816
    const-string/jumbo v2, "syncaction"

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 817
    const-string v2, "flagRead"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 818
    const-string v2, "_bufferdbid"

    .line 819
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 818
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 820
    .local v5, "bufferDbId":J
    const-string v2, "_bufferdbid=?"

    .line 821
    .local v2, "select":Ljava/lang/String;
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    move-object v9, v3

    .line 822
    .local v9, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    invoke-virtual {v3, v4, v1, v2, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 824
    iget-object v10, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/4 v7, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 810
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "select":Ljava/lang/String;
    .end local v5    # "bufferDbId":J
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 827
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 828
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private handleUnReadVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 12
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 831
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmMessageBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 832
    .local v0, "cs":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 834
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "linenum"

    .line 835
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 834
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 836
    .local v8, "line":Ljava/lang/String;
    const-string/jumbo v2, "syncdirection"

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    const-string/jumbo v2, "syncaction"

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 838
    const-string v2, "flagRead"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 839
    const-string v2, "_bufferdbid"

    .line 840
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 839
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 841
    .local v5, "bufferDbId":J
    const-string v2, "_bufferdbid=?"

    .line 842
    .local v2, "select":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    move-object v9, v4

    .line 843
    .local v9, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    invoke-virtual {v3, v4, v1, v2, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 845
    iget-object v10, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/4 v7, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 831
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "select":Ljava/lang/String;
    .end local v5    # "bufferDbId":J
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 848
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 849
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private handleUploadVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)V
    .locals 11
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 990
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 993
    :cond_0
    const-wide/16 v0, 0x0

    .line 994
    .local v0, "bufferDbId":J
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 995
    .local v2, "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange:[I

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mVvmChange:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 1013
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmNewProfileDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)J

    move-result-wide v0

    .line 1014
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v6, 0x14

    const/4 v9, 0x0

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    iget-object v10, v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    move-object v5, v4

    move-wide v7, v0

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 1018
    goto :goto_0

    .line 1004
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmNewPinDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)J

    move-result-wide v0

    .line 1005
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v6, 0x13

    const/4 v9, 0x0

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    iget-object v10, v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    move-object v5, v4

    move-wide v7, v0

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 1009
    goto :goto_0

    .line 997
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmNewGreetingDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)J

    move-result-wide v0

    .line 998
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v6, 0x12

    const/4 v9, 0x0

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    iget-object v10, v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    move-object v5, v4

    move-wide v7, v0

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 1002
    nop

    .line 1022
    :goto_0
    return-void

    .line 991
    .end local v0    # "bufferDbId":J
    .end local v2    # "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :cond_4
    :goto_1
    return-void
.end method

.method private handledeleteVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 21
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 852
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string/jumbo v0, "syncdirection"

    const-string/jumbo v1, "syncaction"

    const/4 v2, 0x0

    .line 854
    .local v2, "cs":Landroid/database/Cursor;
    :try_start_0
    iget v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_0

    .line 855
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v4, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmMessageBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    move-object v12, v2

    goto :goto_0

    .line 856
    :cond_0
    iget v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    .line 857
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v4, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmGreetingBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v3

    move-object v12, v2

    .line 862
    .end local v2    # "cs":Landroid/database/Cursor;
    .local v12, "cs":Landroid/database/Cursor;
    :goto_0
    if-eqz v12, :cond_1

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 863
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object v13, v2

    .line 864
    .local v13, "cv":Landroid/content/ContentValues;
    const-string v2, "_bufferdbid"

    .line 865
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 864
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 866
    .local v16, "bufferDbId":J
    nop

    .line 867
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 866
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v19

    .line 868
    .local v19, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 869
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 868
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v18

    .line 870
    .local v18, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v2, "linenum"

    .line 871
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 870
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 872
    .local v8, "line":Ljava/lang/String;
    iget-object v14, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v15, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    sget-object v20, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual/range {v14 .. v20}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    move-object v14, v2

    .line 875
    .local v14, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-object v2, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    iget-object v0, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    const-string v0, "_bufferdbid=?"

    .line 878
    .local v0, "select":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v15, v2

    .line 879
    .local v15, "selectionArgs":[Ljava/lang/String;
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    invoke-virtual {v2, v3, v13, v0, v15}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 881
    iget-boolean v2, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-ne v2, v1, :cond_1

    .line 882
    iget v5, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, v16

    move-object/from16 v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 887
    .end local v0    # "select":Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v14    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v15    # "selectionArgs":[Ljava/lang/String;
    .end local v16    # "bufferDbId":J
    .end local v18    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v19    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :catchall_0
    move-exception v0

    move-object v2, v12

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 888
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 891
    :cond_2
    return-void

    .line 859
    .end local v12    # "cs":Landroid/database/Cursor;
    .restart local v2    # "cs":Landroid/database/Cursor;
    :cond_3
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handledeleteVvm, unrecognized datatype: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 887
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 888
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 860
    :cond_4
    return-void

    .line 887
    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 888
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_5
    throw v0
.end method

.method private onDownloadRequestFromApp(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)V
    .locals 11
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 796
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mVvmChange:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mVvmChange:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 797
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertDownloadNewProfileRequest(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)J

    move-result-wide v0

    .line 799
    .local v0, "rowId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 800
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    move-object v8, v2

    .line 801
    .local v8, "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v9, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v10, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v3, 0x14

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    move-object v2, v10

    move-wide v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2, v8}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 807
    .end local v0    # "rowId":J
    .end local v8    # "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :cond_0
    return-void
.end method

.method private onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V
    .locals 13
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    .line 484
    const-string v0, "VVMDATA"

    const-string v1, "flagRead"

    const-string/jumbo v2, "syncaction"

    .line 485
    const-string v3, "messagetype"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 484
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 486
    .local v3, "type":I
    sget-object v4, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNmsEventChangedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v4, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryVVMwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 488
    .local v4, "vvmCs":Landroid/database/Cursor;
    if-eqz v4, :cond_4

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 489
    const-string v5, "_bufferdbid"

    .line 490
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 489
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 491
    .local v5, "rowid":I
    nop

    .line 492
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 491
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 493
    .local v6, "action":I
    nop

    .line 494
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 493
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 495
    .local v7, "localSeen":I
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v8

    if-eq v8, v6, :cond_1

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 496
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v8

    if-ne v8, v6, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v9, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->getIfSeenValueUsingFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)I

    move-result v8

    .line 501
    .local v8, "serverSeen":I
    sget-object v9, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "local seen: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", server seen: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eq v7, v8, :cond_4

    .line 503
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 504
    .local v9, "cv":Landroid/content/ContentValues;
    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    const-string/jumbo v2, "syncdirection"

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 506
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 505
    invoke-virtual {v9, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    const-string v1, "_bufferdbid=?"

    .line 509
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 510
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v11, 0x11

    invoke-virtual {v10, v11, v9, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 512
    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    int-to-long v11, v5

    invoke-virtual {v10, v0, v0, v11, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    .line 497
    .end local v1    # "selection":Ljava/lang/String;
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "serverSeen":I
    .end local v9    # "cv":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string v1, "onNmsEventChangedObjSummaryDbAvailableUsingUrl: delete vvm ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 498
    :cond_2
    return-void

    .line 487
    .end local v5    # "rowid":I
    .end local v6    # "action":I
    .end local v7    # "localSeen":I
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0

    .line 517
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 518
    .end local v4    # "vvmCs":Landroid/database/Cursor;
    :cond_5
    return-void
.end method

.method private onNmsEventChangedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 11
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "downloadlist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    .line 528
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "line":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmMessageUsingChangedObject(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Ljava/lang/String;)J

    move-result-wide v7

    .line 532
    .local v7, "rowId":J
    iget-object v9, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v10, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, v10

    move-wide v3, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    return-void
.end method

.method private onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)V
    .locals 12
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .param p3, "dataContractType"    # I

    .line 540
    const-string/jumbo v0, "syncaction"

    .line 541
    const-string v1, "messagetype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 540
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 542
    .local v1, "type":I
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNmsEventDeletedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v2, 0x0

    .line 545
    .local v2, "clgCs":Landroid/database/Cursor;
    const/16 v3, 0x12

    const/16 v4, 0x11

    if-ne p3, v4, :cond_0

    .line 546
    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v6, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v2, v5

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 547
    :cond_0
    if-ne p3, v3, :cond_4

    .line 548
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v6, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmGreetingBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v2, v5

    .line 553
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 554
    const-string v5, "_bufferdbid"

    .line 555
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 554
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 556
    .local v5, "rowid":I
    nop

    .line 557
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 556
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 558
    .local v6, "action":I
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v7

    if-eq v7, v6, :cond_2

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 559
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 560
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 561
    .local v7, "cv":Landroid/content/ContentValues;
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    const-string/jumbo v0, "syncdirection"

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 563
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 562
    invoke-virtual {v7, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    const-string v0, "_bufferdbid=?"

    .line 565
    .local v0, "selection":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    .local v8, "selectionArgs":[Ljava/lang/String;
    const-string v9, "VVMDATA"

    if-ne p3, v4, :cond_1

    .line 567
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v3, v4, v7, v0, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 569
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    int-to-long v10, v5

    invoke-virtual {v3, v9, v9, v10, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 572
    :cond_1
    if-ne p3, v3, :cond_2

    .line 573
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v4, v3, v7, v0, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 575
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const-string v4, "GREETING"

    int-to-long v10, v5

    invoke-virtual {v3, v9, v4, v10, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    .end local v0    # "selection":Ljava/lang/String;
    .end local v5    # "rowid":I
    .end local v6    # "action":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 583
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_3
    return-void

    .line 550
    :cond_4
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNmsEventDeletedObjSummaryDbAvailableUsingUrl, unrecognized datatype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 582
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 583
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 551
    :cond_5
    return-void

    .line 582
    :goto_2
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 583
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_6
    throw v0
.end method

.method private onNmsEventDeletedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)V
    .locals 1
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .param p2, "dataContractType"    # I

    .line 589
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventDeletedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)J

    .line 590
    return-void
.end method

.method private onUpdateNewEmailProfile(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)V
    .locals 5
    .param p1, "update"    # Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    .line 214
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateNewEmailProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 216
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmNewEmailProfileCloudUpdate(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)J

    move-result-wide v0

    .line 217
    .local v0, "bufferDbId":J
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const-string v3, "VVMDATA"

    const-string v4, "PROFILE"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 221
    return-void
.end method

.method private onUpdateNewPin(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)V
    .locals 5
    .param p1, "update"    # Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    .line 205
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateNewPin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmNewPinCloudUpdate(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)J

    move-result-wide v0

    .line 207
    .local v0, "bufferDbId":J
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const-string v3, "VVMDATA"

    const-string v4, "PIN"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 211
    return-void
.end method

.method private onVvmGreetingUpdateFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 8
    .param p1, "paramOMAObj"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 945
    const-string v0, "_bufferdbid=?"

    .line 946
    .local v0, "select":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 947
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 946
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 948
    .local v1, "selectionArgs":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 949
    .local v2, "cv":Landroid/content/ContentValues;
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "uploadstatus"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 950
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncaction"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 951
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncdirection"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 952
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 954
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 956
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 954
    const-string v6, "VVMDATA"

    const-string v7, "GREETING"

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 957
    return-void
.end method

.method private onVvmGreetingUpdateSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 8
    .param p1, "paramOMAObj"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 924
    const-string v0, "_bufferdbid=?"

    .line 925
    .local v0, "select":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 926
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 925
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 927
    .local v1, "selectionArgs":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 928
    .local v2, "cv":Landroid/content/ContentValues;
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->SUCCESS:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "uploadstatus"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncaction"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncdirection"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 931
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    if-eqz v3, :cond_0

    .line 932
    nop

    .line 933
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 932
    const-string/jumbo v4, "res_url"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 939
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 941
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 939
    const-string v6, "VVMDATA"

    const-string v7, "GREETING"

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 942
    return-void
.end method

.method private onVvmPINUpdateFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 8
    .param p1, "paramOMAObj"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 909
    const-string v0, "_bufferdbid=?"

    .line 910
    .local v0, "select":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 911
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 910
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 912
    .local v1, "selectionArgs":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 913
    .local v2, "cv":Landroid/content/ContentValues;
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "uploadstatus"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 914
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncaction"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 915
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncdirection"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 916
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 918
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 920
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 918
    const-string v6, "VVMDATA"

    const-string v7, "PIN"

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 921
    return-void
.end method

.method private onVvmPINUpdateSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 8
    .param p1, "paramOMAObj"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 894
    const-string v0, "_bufferdbid=?"

    .line 895
    .local v0, "select":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 896
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 895
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 897
    .local v1, "selectionArgs":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 898
    .local v2, "cv":Landroid/content/ContentValues;
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->SUCCESS:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "uploadstatus"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncaction"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 900
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncdirection"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 903
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 905
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 903
    const-string v6, "VVMDATA"

    const-string v7, "PIN"

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 906
    return-void
.end method

.method private onVvmProfileUpdateFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 8
    .param p1, "paramOMAObj"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 975
    const-string v0, "_bufferdbid=?"

    .line 976
    .local v0, "select":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 977
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 976
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 978
    .local v1, "selectionArgs":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 979
    .local v2, "cv":Landroid/content/ContentValues;
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "uploadstatus"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 980
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncaction"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 981
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncdirection"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 984
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 986
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 984
    const-string v6, "VVMDATA"

    const-string v7, "PROFILE"

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 987
    return-void
.end method

.method private onVvmProfileUpdateSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 8
    .param p1, "paramOMAObj"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 960
    const-string v0, "_bufferdbid=?"

    .line 961
    .local v0, "select":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 962
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 961
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 963
    .local v1, "selectionArgs":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 964
    .local v2, "cv":Landroid/content/ContentValues;
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->SUCCESS:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "uploadstatus"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 965
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncaction"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 966
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncdirection"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 967
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 969
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 971
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 969
    const-string v6, "VVMDATA"

    const-string v7, "PROFILE"

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 972
    return-void
.end method

.method private parseDownloadedVvmAttributes(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;
    .locals 5
    .param p1, "profile"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    .line 152
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 156
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;-><init>()V

    .line 157
    .local v0, "attribute":Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 158
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 160
    goto/16 :goto_2

    .line 161
    :cond_1
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v4, "cosname"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->COSName:Ljava/lang/String;

    goto/16 :goto_2

    .line 163
    :cond_2
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v4, "isblocked"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->IsBlocked:Ljava/lang/String;

    goto/16 :goto_2

    .line 165
    :cond_3
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v4, "language"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->Language:Ljava/lang/String;

    goto :goto_2

    .line 167
    :cond_4
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v4, "nut"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->NUT:Ljava/lang/String;

    goto :goto_2

    .line 169
    :cond_5
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string/jumbo v4, "vvmon"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->VVMOn:Ljava/lang/String;

    goto :goto_2

    .line 171
    :cond_6
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v3, "EmailAddress"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 172
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 173
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 157
    .end local v2    # "j":I
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 177
    .end local v1    # "i":I
    :cond_8
    return-object v0

    .line 153
    .end local v0    # "attribute":Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;
    :cond_9
    :goto_3
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parseDownloadedVvmAttributes: invalid profile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public handleDownLoadMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 4
    .param p1, "paramOMAObj"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "isSuccess"    # Z

    .line 766
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownLoadMessageResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    if-nez p2, :cond_0

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->OBJECT_NOT_FOUND:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->setMsgDeleted(IJ)V

    .line 770
    :cond_0
    return-void
.end method

.method public handleNormalSyncDownloadedVVMGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V
    .locals 11
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    .line 338
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNormalSyncDownloadedVVMGreeting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 340
    .local v0, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    const-wide/16 v1, 0x0

    .line 341
    .local v1, "rowid":J
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 342
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmGreetingBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 343
    .local v3, "vvmgrtcs":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    const-string v5, "_bufferdbid"

    .line 346
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 345
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-wide v1, v5

    .line 347
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v5, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "syncaction"

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    const-string/jumbo v6, "syncdirection"

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    const-string/jumbo v6, "uploadstatus"

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->SUCCESS:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v6, "_bufferdbid=?"

    .line 352
    .local v6, "selection":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 353
    .local v7, "selectionArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v9, 0x12

    invoke-virtual {v8, v9, v5, v6, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const-string v9, "VVMDATA"

    const-string v10, "GREETING"

    invoke-virtual {v8, v9, v10, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 358
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0

    .line 359
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v5, p1, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmGreetingUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    .end local v1    # "rowid":J
    .local v7, "rowid":J
    :try_start_1
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v6, 0x12

    const/4 v9, 0x0

    move-object v5, v2

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v1, v7

    .line 364
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "rowid":J
    .restart local v1    # "rowid":J
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 365
    .end local v3    # "vvmgrtcs":Landroid/database/Cursor;
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 368
    :cond_2
    return-void

    .line 341
    .end local v1    # "rowid":J
    .restart local v3    # "vvmgrtcs":Landroid/database/Cursor;
    .restart local v7    # "rowid":J
    :catchall_0
    move-exception v4

    move-wide v1, v7

    goto :goto_1

    .end local v7    # "rowid":J
    .restart local v1    # "rowid":J
    :catchall_1
    move-exception v4

    :goto_1
    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v4
.end method

.method public handleNormalSyncDownloadedVVMMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V
    .locals 14
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    .line 593
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNormalSyncDownloadedVVMMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 595
    .local v0, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryVVMwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 596
    .local v1, "mmsCs":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 597
    const-string v2, "_bufferdbid"

    .line 598
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 597
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 599
    .local v2, "rowid":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 600
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "syncaction"

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    const-string/jumbo v4, "syncdirection"

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    const-string/jumbo v4, "payloadurl"

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v4, "_bufferdbid=?"

    .line 604
    .local v4, "selection":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 605
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 606
    .local v12, "line":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v7, 0x11

    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 608
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v13, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v8, 0x11

    int-to-long v9, v2

    const/4 v11, 0x0

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 595
    .end local v2    # "rowid":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "line":Ljava/lang/String;
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

    .line 612
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 613
    .end local v1    # "mmsCs":Landroid/database/Cursor;
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 614
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 616
    :cond_3
    return-void
.end method

.method public handleObjectVvmGreetingCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 5
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    .line 324
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleObjectVvmGreetingCloudSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-wide/16 v0, -0x1

    .line 327
    .local v0, "rowId":J
    :try_start_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "line":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v4, 0x12

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 330
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v3, p1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmGreetingUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 333
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_0

    .line 331
    :catch_0
    move-exception v2

    .line 332
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-wide v0
.end method

.method public handleObjectVvmMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J
    .locals 32
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p2, "mIsGoforwardSync"    # Z

    .line 257
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string/jumbo v0, "syncdirection"

    const-string/jumbo v1, "syncaction"

    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleObjectVvmMessageCloudSearch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mIsGoforwardSync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p2

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-wide/16 v13, -0x1

    .line 268
    .local v13, "rowId":J
    :try_start_0
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 269
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v15, v2

    .line 270
    .local v15, "cs":Landroid/database/Cursor;
    :try_start_1
    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 271
    .local v9, "line":Ljava/lang/String;
    if-eqz v15, :cond_4

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 272
    const-string v3, "_bufferdbid"

    .line 273
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 272
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v7, v3

    .line 274
    .local v7, "bufferid":J
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v6, v3

    .line 275
    .local v6, "_id":I
    nop

    .line 276
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 275
    invoke-static {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v21

    .line 277
    .local v21, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 278
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 277
    invoke-static {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v20

    .line 279
    .local v20, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v3, "_bufferdbid=?"

    move-object v5, v3

    .line 280
    .local v5, "selectUpdate":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x0

    aput-object v16, v4, v2

    .line 281
    .local v4, "selectionArgsUpdate":[Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v29, v16

    .line 282
    .local v29, "cv":Landroid/content/ContentValues;
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v3, v2, v12}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    move-object v2, v3

    .line 284
    .local v2, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    .line 285
    const-string v3, "flagRead"

    iget-object v12, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    move-object/from16 v30, v2

    .end local v2    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v30, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 286
    invoke-virtual {v12, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->getIfSeenValueUsingFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 285
    move-object/from16 v12, v29

    .end local v29    # "cv":Landroid/content/ContentValues;
    .local v12, "cv":Landroid/content/ContentValues;
    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_0

    .line 288
    :try_start_2
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mDbTableContractIndex:I

    sget-object v22, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-wide/from16 v18, v7

    invoke-virtual/range {v16 .. v22}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v2

    .end local v30    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v2    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    goto :goto_0

    .line 268
    .end local v2    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v4    # "selectionArgsUpdate":[Ljava/lang/String;
    .end local v5    # "selectUpdate":Ljava/lang/String;
    .end local v6    # "_id":I
    .end local v7    # "bufferid":J
    .end local v9    # "line":Ljava/lang/String;
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v20    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v21    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-wide/from16 v18, v13

    goto/16 :goto_4

    .line 290
    .restart local v4    # "selectionArgsUpdate":[Ljava/lang/String;
    .restart local v5    # "selectUpdate":Ljava/lang/String;
    .restart local v6    # "_id":I
    .restart local v7    # "bufferid":J
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v12    # "cv":Landroid/content/ContentValues;
    .restart local v20    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .restart local v21    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .restart local v30    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :cond_0
    :try_start_3
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_1

    .line 291
    :try_start_4
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mDbTableContractIndex:I

    sget-object v28, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v22, v2

    move/from16 v23, v3

    move-wide/from16 v24, v7

    move-object/from16 v26, v20

    move-object/from16 v27, v21

    invoke-virtual/range {v22 .. v28}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    move-object v3, v2

    .end local v30    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v2    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    goto :goto_0

    .line 293
    .end local v2    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v30    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :cond_1
    const/4 v2, 0x1

    if-ge v6, v2, :cond_2

    .line 294
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mDbTableContractIndex:I

    sget-object v28, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v22, v2

    move/from16 v23, v3

    move-wide/from16 v24, v7

    move-object/from16 v26, v20

    move-object/from16 v27, v21

    invoke-virtual/range {v22 .. v28}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v2

    .end local v30    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v2    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    goto :goto_0

    .line 293
    .end local v2    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v30    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :cond_2
    move-object/from16 v3, v30

    .line 299
    .end local v30    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v3, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :goto_0
    :try_start_5
    iget-boolean v2, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v2, :cond_3

    .line 300
    iget-object v2, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    iget-object v1, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v12, v5, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 304
    const/16 v0, 0x11

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    .end local v3    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v4    # "selectionArgsUpdate":[Ljava/lang/String;
    .restart local v30    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v31, "selectionArgsUpdate":[Ljava/lang/String;
    move-wide v3, v7

    move-wide/from16 v18, v13

    move-object v13, v5

    .end local v5    # "selectUpdate":Ljava/lang/String;
    .local v13, "selectUpdate":Ljava/lang/String;
    .local v18, "rowId":J
    move v5, v0

    move v0, v6

    .end local v6    # "_id":I
    .local v0, "_id":I
    move/from16 v6, v16

    move-wide/from16 v22, v7

    .end local v7    # "bufferid":J
    .local v22, "bufferid":J
    move/from16 v7, p2

    move-object v8, v9

    move-object v14, v9

    .end local v9    # "line":Ljava/lang/String;
    .local v14, "line":Ljava/lang/String;
    move-object/from16 v9, v17

    :try_start_6
    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 308
    .end local v0    # "_id":I
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "rowId":J
    .end local v22    # "bufferid":J
    .end local v30    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v31    # "selectionArgsUpdate":[Ljava/lang/String;
    .restart local v3    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v4    # "selectionArgsUpdate":[Ljava/lang/String;
    .restart local v5    # "selectUpdate":Ljava/lang/String;
    .restart local v6    # "_id":I
    .restart local v7    # "bufferid":J
    .restart local v9    # "line":Ljava/lang/String;
    .local v13, "rowId":J
    :cond_3
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move v0, v6

    move-wide/from16 v22, v7

    move-wide/from16 v18, v13

    move-object v13, v5

    move-object v14, v9

    .end local v3    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v4    # "selectionArgsUpdate":[Ljava/lang/String;
    .end local v5    # "selectUpdate":Ljava/lang/String;
    .end local v6    # "_id":I
    .end local v7    # "bufferid":J
    .end local v9    # "line":Ljava/lang/String;
    .restart local v0    # "_id":I
    .local v13, "selectUpdate":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v18    # "rowId":J
    .restart local v22    # "bufferid":J
    .restart local v30    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v31    # "selectionArgsUpdate":[Ljava/lang/String;
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    move-object/from16 v2, v31

    const/16 v3, 0x11

    .end local v31    # "selectionArgsUpdate":[Ljava/lang/String;
    .local v2, "selectionArgsUpdate":[Ljava/lang/String;
    invoke-virtual {v1, v3, v12, v13, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 311
    .end local v0    # "_id":I
    .end local v2    # "selectionArgsUpdate":[Ljava/lang/String;
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "selectUpdate":Ljava/lang/String;
    .end local v20    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v21    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .end local v22    # "bufferid":J
    .end local v30    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :goto_1
    move-wide/from16 v13, v18

    goto :goto_2

    .line 271
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "rowId":J
    .restart local v9    # "line":Ljava/lang/String;
    .local v13, "rowId":J
    :cond_4
    move-wide/from16 v18, v13

    move-object v14, v9

    .line 312
    .end local v9    # "line":Ljava/lang/String;
    .end local v13    # "rowId":J
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v18    # "rowId":J
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string v1, "handleObjectVvmMessageCloudSearch: vvm not found: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v1, 0x11

    invoke-virtual {v0, v11, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 315
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v0, v11, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmMessageUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-wide v13, v0

    .line 317
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "rowId":J
    .restart local v13    # "rowId":J
    :goto_2
    if-eqz v15, :cond_5

    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    .end local v15    # "cs":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_6

    .line 319
    :cond_5
    :goto_3
    goto :goto_7

    .line 268
    .end local v13    # "rowId":J
    .restart local v15    # "cs":Landroid/database/Cursor;
    .restart local v18    # "rowId":J
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .end local v18    # "rowId":J
    .restart local v13    # "rowId":J
    :catchall_2
    move-exception v0

    move-wide/from16 v18, v13

    move-object v1, v0

    .end local v13    # "rowId":J
    .restart local v18    # "rowId":J
    :goto_4
    if-eqz v15, :cond_6

    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v18    # "rowId":J
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
    .end local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .end local p2    # "mIsGoforwardSync":Z
    :cond_6
    :goto_5
    throw v1
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1

    .line 317
    .end local v15    # "cs":Landroid/database/Cursor;
    .restart local v18    # "rowId":J
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .restart local p2    # "mIsGoforwardSync":Z
    :catch_1
    move-exception v0

    move-wide/from16 v13, v18

    goto :goto_6

    .end local v18    # "rowId":J
    .restart local v13    # "rowId":J
    :catch_2
    move-exception v0

    move-wide/from16 v18, v13

    .line 318
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_6
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_7
    return-wide v13
.end method

.method public handleUpdateVVMResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 3
    .param p1, "paramOMAObj"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "isSuccess"    # Z

    .line 224
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateVVMResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz p2, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    packed-switch v0, :pswitch_data_0

    .line 237
    goto :goto_0

    .line 234
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmProfileUpdateSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 235
    goto :goto_0

    .line 231
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmPINUpdateSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 232
    goto :goto_0

    .line 228
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmGreetingUpdateSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 229
    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 248
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmProfileUpdateFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 249
    goto :goto_0

    .line 245
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmPINUpdateFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 246
    goto :goto_0

    .line 242
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmGreetingUpdateFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 243
    nop

    .line 254
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public handleVvmProfileDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 9
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 106
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getVvmServiceProfile()Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getVvmServiceProfile()Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->parseDownloadedVvmAttributes(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;

    move-result-object v0

    .line 110
    .local v0, "attributes":Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;
    if-nez v0, :cond_1

    .line 111
    return-void

    .line 113
    :cond_1
    const-string v1, "_bufferdbid=?"

    .line 114
    .local v1, "select":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 115
    .local v3, "selectionArgs":[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v4, "cv":Landroid/content/ContentValues;
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->VVMOn:Ljava/lang/String;

    const-string/jumbo v7, "vvmon"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->IsBlocked:Ljava/lang/String;

    const-string v7, "isblocked"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->COSName:Ljava/lang/String;

    const-string v7, "cos"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->Language:Ljava/lang/String;

    const-string v7, "language"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->NUT:Ljava/lang/String;

    const-string v7, "nut"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v7, "email_addr1"

    if-ne v6, v2, :cond_2

    .line 122
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 124
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "email_addr2"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_3
    :goto_0
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v5, "syncaction"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v5, "syncdirection"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v5, 0x14

    invoke-virtual {v2, v5, v4, v1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 134
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v5

    iget-wide v5, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 131
    const-string v7, "VVMDATA"

    const-string v8, "PROFILE"

    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 136
    return-void

    .line 107
    .end local v0    # "attributes":Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;
    .end local v1    # "select":Ljava/lang/String;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v4    # "cv":Landroid/content/ContentValues;
    :cond_4
    :goto_1
    return-void
.end method

.method public notifyMsgAppDeleteFail(IJLjava/lang/String;)V
    .locals 5
    .param p1, "dbIndex"    # I
    .param p2, "bufferDbId"    # J
    .param p4, "line"    # Ljava/lang/String;

    .line 1033
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

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

    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 1035
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1036
    .local v0, "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1037
    .local v1, "jsobjct":Lcom/google/gson/JsonObject;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 1039
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 1041
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    const-string v4, "VVMDATA"

    invoke-interface {v2, v4, v4, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    .end local v0    # "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    .end local v1    # "jsobjct":Lcom/google/gson/JsonObject;
    :cond_0
    return-void
.end method

.method public onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 773
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onDownloadRequestFromApp(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)V

    .line 789
    goto :goto_0

    .line 785
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handledeleteVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 786
    goto :goto_0

    .line 782
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleUnReadVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 783
    goto :goto_0

    .line 779
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleReadVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 780
    goto :goto_0

    .line 776
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleUploadVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)V

    .line 777
    nop

    .line 793
    :goto_0
    return-void
.end method

.method public onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 1
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "mIsGoforwardSync"    # Z

    .line 1051
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 1052
    return-void
.end method

.method public onGreetingAllPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 20
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "mIsGoforwardSync"    # Z

    .line 717
    move-object/from16 v10, p0

    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_5

    .line 720
    :cond_0
    :try_start_0
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 721
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v3

    iget-wide v3, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 720
    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    .line 722
    .local v11, "greetigcs":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v0

    .line 723
    .local v12, "inputStream":Ljava/io/InputStream;
    if-eqz v11, :cond_6

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 724
    const-string v0, "_bufferdbid"

    .line 725
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 724
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 726
    .local v0, "id":I
    const-string v3, "linenum"

    .line 727
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 726
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 728
    .local v8, "line":Ljava/lang/String;
    const-string v3, "_bufferdbid= ?"

    move-object v13, v3

    .line 729
    .local v13, "selection":Ljava/lang/String;
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    move-object v14, v1

    .line 730
    .local v14, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-virtual {v1}, Ljavax/mail/BodyPart;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "filename":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 732
    nop

    .line 733
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-virtual {v3}, Ljavax/mail/BodyPart;->getDisposition()Ljava/lang/String;

    move-result-object v3

    .line 732
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getFileNamefromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    move-object v15, v1

    goto :goto_0

    .line 731
    :cond_1
    move-object v15, v1

    .line 735
    .end local v1    # "filename":Ljava/lang/String;
    .local v15, "filename":Ljava/lang/String;
    :goto_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 736
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string v2, "onGreetingPayloadDownloaded: no file name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 759
    if-eqz v12, :cond_2

    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    if-eqz v11, :cond_3

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 737
    :cond_3
    return-void

    .line 739
    :cond_4
    const/4 v1, 0x0

    .line 740
    .local v1, "filepath":Ljava/lang/String;
    :try_start_5
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mContext:Landroid/content/Context;

    invoke-static {v3, v15, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 741
    .end local v1    # "filepath":Ljava/lang/String;
    .local v9, "filepath":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generated file path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v1

    invoke-static {v1, v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFiletoPath([BLjava/lang/String;)V

    .line 743
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v7, v1

    .line 745
    .local v7, "cv":Landroid/content/ContentValues;
    invoke-static {v12, v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveInputStreamtoPath(Ljava/io/InputStream;Ljava/lang/String;)J

    .line 746
    const-string v1, "mimeType"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/BodyPart;

    invoke-virtual {v2}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v1, "fileName"

    invoke-virtual {v7, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v1, "filepath"

    invoke-virtual {v7, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    move-object v6, v1

    .line 751
    .local v6, "param":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    const-string/jumbo v1, "syncdirection"

    iget-object v2, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    const-string/jumbo v1, "syncaction"

    iget-object v2, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 753
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v7, v13, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 755
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/16 v5, 0x12

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v18, v6

    .end local v6    # "param":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v18, "param":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    move/from16 v6, v16

    move-object/from16 v16, v7

    .end local v7    # "cv":Landroid/content/ContentValues;
    .local v16, "cv":Landroid/content/ContentValues;
    move/from16 v7, p2

    move-object/from16 v19, v9

    .end local v9    # "filepath":Ljava/lang/String;
    .local v19, "filepath":Ljava/lang/String;
    move-object/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 720
    .end local v0    # "id":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v13    # "selection":Ljava/lang/String;
    .end local v14    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v16    # "cv":Landroid/content/ContentValues;
    .end local v18    # "param":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v19    # "filepath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_5

    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v11    # "greetigcs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
    .end local p1    # "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .end local p2    # "mIsGoforwardSync":Z
    :cond_5
    :goto_1
    throw v1

    .line 759
    .restart local v11    # "greetigcs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
    .restart local p1    # "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .restart local p2    # "mIsGoforwardSync":Z
    :cond_6
    :goto_2
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v12    # "inputStream":Ljava/io/InputStream;
    :cond_7
    if-eqz v11, :cond_8

    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0

    .line 761
    .end local v11    # "greetigcs":Landroid/database/Cursor;
    :cond_8
    goto :goto_4

    .line 720
    .restart local v11    # "greetigcs":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_9

    :try_start_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
    .end local p1    # "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .end local p2    # "mIsGoforwardSync":Z
    :cond_9
    :goto_3
    throw v1
    :try_end_a
    .catch Ljavax/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0

    .line 759
    .end local v11    # "greetigcs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
    .restart local p1    # "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .restart local p2    # "mIsGoforwardSync":Z
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 762
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 718
    :cond_a
    :goto_5
    return-void
.end method

.method public onNotificationReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V
    .locals 6
    .param p1, "notification"    # Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;

    .line 69
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 71
    .local v0, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    if-eqz v1, :cond_4

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 73
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v2, v2, v1

    .line 74
    .local v2, "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    if-eqz v3, :cond_1

    .line 75
    iget v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataContractType:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_0

    .line 77
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleCloudNotifyChangedObjVVM(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 78
    :cond_0
    iget v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataContractType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    .line 80
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleCloudNotifyChangedObjGreeting(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 83
    :cond_1
    :goto_1
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-eqz v3, :cond_2

    .line 84
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataContractType:I

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)V

    .line 86
    :cond_2
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->notifyObject:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;

    if-eqz v3, :cond_3

    .line 87
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->notifyObject:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataContractType:I

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mLine:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleCloudNotifyObject(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;ILjava/lang/String;)V

    .line 72
    .end local v2    # "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_4
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 93
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 95
    :cond_5
    return-void
.end method

.method public onNotifyObjectReceived(Ljava/lang/String;)V
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertDefaultGreetingValues(Ljava/lang/String;)J

    move-result-wide v0

    .line 99
    .local v0, "bufferID":J
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const-string v3, "VVMDATA"

    const-string v4, "GREETING"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 103
    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V
    .locals 1
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;
    .param p2, "mIsGoforwardSync"    # Z

    .line 620
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 621
    return-void
.end method

.method public onVvmAllPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 17
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "mIsGoforwardSync"    # Z

    .line 624
    move-object/from16 v10, p0

    const-string/jumbo v0, "text"

    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_e

    .line 627
    :cond_0
    const/4 v1, 0x0

    .line 628
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 629
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v5

    iget-wide v5, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 628
    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v11, v3

    .line 630
    .local v11, "csvvm":Landroid/database/Cursor;
    if-eqz v11, :cond_9

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 631
    const-string v3, "_bufferdbid"

    .line 632
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 631
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v12, v3

    .line 633
    .local v12, "id":I
    const-string v3, "linenum"

    .line 634
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 633
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 635
    .local v8, "line":Ljava/lang/String;
    const-string v3, "_bufferdbid= ?"

    move-object v13, v3

    .line 636
    .local v13, "selection":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    move-object v14, v2

    .line 637
    .local v14, "selectionArgs":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v15, v2

    .line 639
    .local v15, "cv":Landroid/content/ContentValues;
    const/4 v2, 0x0

    move-object/from16 v16, v1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v2, "i":I
    .local v16, "inputStream":Ljava/io/InputStream;
    :goto_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-virtual {v1}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, "contentType":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContentType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 644
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-virtual {v3}, Ljavax/mail/BodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 645
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_3
    invoke-direct {v10, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->getTextDatafromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v16, v3

    goto/16 :goto_4

    .line 628
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v12    # "id":I
    .end local v13    # "selection":Ljava/lang/String;
    .end local v14    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    goto/16 :goto_5

    .line 646
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "contentType":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v12    # "id":I
    .restart local v13    # "selection":Ljava/lang/String;
    .restart local v14    # "selectionArgs":[Ljava/lang/String;
    .restart local v15    # "cv":Landroid/content/ContentValues;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_4
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-virtual {v3}, Ljavax/mail/BodyPart;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 648
    .local v3, "filename":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 649
    nop

    .line 650
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/BodyPart;

    invoke-virtual {v5}, Ljavax/mail/BodyPart;->getDisposition()Ljava/lang/String;

    move-result-object v5

    .line 649
    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getFileNamefromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 652
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 653
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onVvmPayloadDownloaded: no file name"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 675
    if-eqz v11, :cond_3

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 678
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "filename":Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v11    # "csvvm":Landroid/database/Cursor;
    .end local v12    # "id":I
    .end local v13    # "selection":Ljava/lang/String;
    .end local v14    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "cv":Landroid/content/ContentValues;
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v16

    goto/16 :goto_b

    .line 675
    :catch_0
    move-exception v0

    move-object/from16 v1, v16

    goto/16 :goto_9

    .line 679
    .restart local v1    # "contentType":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v11    # "csvvm":Landroid/database/Cursor;
    .restart local v12    # "id":I
    .restart local v13    # "selection":Ljava/lang/String;
    .restart local v14    # "selectionArgs":[Ljava/lang/String;
    .restart local v15    # "cv":Landroid/content/ContentValues;
    :cond_3
    :goto_1
    if-eqz v16, :cond_4

    .line 680
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 682
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 683
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 684
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    nop

    .line 654
    :goto_3
    return-void

    .line 656
    :cond_5
    const/4 v5, 0x0

    .line 657
    .local v5, "filepath":Ljava/lang/String;
    :try_start_7
    iget-object v6, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 658
    sget-object v6, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generated file path: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/mail/BodyPart;

    invoke-virtual {v6}, Ljavax/mail/BodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 660
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .local v6, "inputStream":Ljava/io/InputStream;
    :try_start_8
    invoke-static {v6, v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveInputStreamtoPath(Ljava/io/InputStream;Ljava/lang/String;)J

    .line 661
    const-string v7, "fileName"

    invoke-virtual {v15, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v7, "filepath"

    invoke-virtual {v15, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v16, v6

    goto :goto_4

    .line 628
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "filename":Ljava/lang/String;
    .end local v5    # "filepath":Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v12    # "id":I
    .end local v13    # "selection":Ljava/lang/String;
    .end local v14    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "cv":Landroid/content/ContentValues;
    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v1, v6

    goto :goto_5

    .line 639
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "contentType":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v12    # "id":I
    .restart local v13    # "selection":Ljava/lang/String;
    .restart local v14    # "selectionArgs":[Ljava/lang/String;
    .restart local v15    # "cv":Landroid/content/ContentValues;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 665
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_7
    :try_start_9
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 667
    .local v0, "param":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    const-string/jumbo v1, "syncdirection"

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 668
    const-string/jumbo v1, "syncaction"

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v15, v13, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 671
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v7, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v1, v16

    goto :goto_7

    .line 628
    .end local v0    # "param":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v8    # "line":Ljava/lang/String;
    .end local v12    # "id":I
    .end local v13    # "selection":Ljava/lang/String;
    .end local v14    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "cv":Landroid/content/ContentValues;
    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v16

    goto :goto_5

    .end local v16    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    :catchall_4
    move-exception v0

    move-object v2, v0

    :goto_5
    if-eqz v11, :cond_8

    :try_start_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
    .end local p1    # "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .end local p2    # "mIsGoforwardSync":Z
    :cond_8
    :goto_6
    throw v2

    .line 675
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
    .restart local p1    # "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .restart local p2    # "mIsGoforwardSync":Z
    :cond_9
    :goto_7
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljavax/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 679
    .end local v11    # "csvvm":Landroid/database/Cursor;
    :cond_a
    if-eqz v1, :cond_b

    .line 680
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_8

    .line 682
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 683
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 684
    :cond_b
    :goto_8
    goto :goto_a

    .line 678
    :catchall_6
    move-exception v0

    move-object v2, v0

    goto :goto_b

    .line 675
    :catch_3
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 679
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_b

    .line 680
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_8

    .line 686
    :goto_a
    return-void

    .line 679
    :goto_b
    if-eqz v1, :cond_c

    .line 680
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_c

    .line 682
    :catch_4
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 683
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 684
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c
    :goto_c
    nop

    .line 685
    :goto_d
    throw v2

    .line 625
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_d
    :goto_e
    return-void
.end method

.method public queryToDeviceUnDownloadedGreeting(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "linenum"    # Ljava/lang/String;

    .line 1029
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryToDeviceUnDownloadedGreeting(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryToDeviceUnDownloadedVvm(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "linenum"    # Ljava/lang/String;

    .line 1025
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryToDeviceUnDownloadedVvm(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryVVMwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public wipeOutData(ILjava/lang/String;)V
    .locals 1
    .param p1, "tableindex"    # I
    .param p2, "line"    # Ljava/lang/String;

    .line 1047
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 1048
    return-void
.end method
