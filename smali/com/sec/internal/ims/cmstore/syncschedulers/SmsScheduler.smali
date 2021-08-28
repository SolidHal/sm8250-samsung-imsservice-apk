.class public Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "SmsScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

.field private final mMultiLineScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rule"    # Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;
    .param p3, "builder"    # Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;
    .param p4, "lineStatus"    # Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;
    .param p5, "deviceDataListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;
    .param p6, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;
    .param p7, "looper"    # Landroid/os/Looper;

    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 55
    new-instance v0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-direct {v0, p1, p6}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    .line 56
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mMultiLineScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    .line 58
    return-void
.end method

.method private handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 13
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "downloadlist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 564
    const/4 v6, 0x0

    .line 565
    .local v6, "mIsGoforwardSync":Z
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 566
    .local v7, "summaryCs":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 567
    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    const-string/jumbo v0, "syncaction"

    .line 569
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 568
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 570
    .local v0, "status":I
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v0, v1, :cond_1

    .line 596
    if-eqz v7, :cond_0

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 571
    :cond_0
    return-void

    .line 573
    :cond_1
    :try_start_3
    invoke-direct {p0, v7, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V

    .line 574
    .end local v0    # "status":I
    goto/16 :goto_2

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    move-result-wide v2

    .line 577
    .local v2, "rowId":J
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mMultiLineScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v8, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v0

    move v9, v0

    .line 579
    .local v9, "initSynStatuc":I
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check initial sync status ::"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", correlationTag: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    if-ne v9, v0, :cond_5

    .line 581
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 582
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v10, v0

    .line 584
    .local v10, "cs":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    invoke-virtual {p0, v10, p1, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    goto :goto_0

    .line 588
    :cond_3
    iget-object v11, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v12, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v1, 0x7

    move-object v0, v12

    move v4, v6

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 592
    :goto_0
    if-eqz v10, :cond_5

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 582
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_4

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "mIsGoforwardSync":Z
    .end local v7    # "summaryCs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .end local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :cond_4
    :goto_1
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 596
    .end local v2    # "rowId":J
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "initSynStatuc":I
    .end local v10    # "cs":Landroid/database/Cursor;
    .restart local v6    # "mIsGoforwardSync":Z
    .restart local v7    # "summaryCs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .restart local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0

    .line 598
    .end local v7    # "summaryCs":Landroid/database/Cursor;
    :cond_6
    goto :goto_4

    .line 565
    .restart local v7    # "summaryCs":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    if-eqz v7, :cond_7

    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "mIsGoforwardSync":Z
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .end local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :cond_7
    :goto_3
    throw v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0

    .line 596
    .end local v7    # "summaryCs":Landroid/database/Cursor;
    .restart local v6    # "mIsGoforwardSync":Z
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .restart local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_4
    return-void
.end method

.method private handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 6
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "mIsGoforwardSync":Z
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 722
    .local v1, "summaryCs":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 723
    const-string/jumbo v2, "syncaction"

    .line 724
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 723
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 725
    .local v2, "status":I
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v2, v3, :cond_1

    .line 750
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 726
    :cond_0
    return-void

    .line 728
    :cond_1
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    .line 729
    .end local v2    # "status":I
    goto :goto_2

    .line 730
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventDeletedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)J

    .line 732
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 733
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    .line 735
    .local v2, "initSynStatuc":I
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check initial sync status ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", correlationTag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 737
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 738
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 740
    .local v3, "cs":Landroid/database/Cursor;
    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 741
    invoke-virtual {p0, v3, p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto :goto_0

    .line 744
    :cond_3
    sget-object v4, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    const-string v5, "did not find buffer item to delete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 746
    :goto_0
    if-eqz v3, :cond_5

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 738
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "mIsGoforwardSync":Z
    .end local v1    # "summaryCs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    :cond_4
    :goto_1
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 750
    .end local v2    # "initSynStatuc":I
    .end local v3    # "cs":Landroid/database/Cursor;
    .restart local v0    # "mIsGoforwardSync":Z
    .restart local v1    # "summaryCs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 751
    .end local v1    # "summaryCs":Landroid/database/Cursor;
    :cond_6
    return-void

    .line 721
    .restart local v1    # "summaryCs":Landroid/database/Cursor;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_7

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v2
.end method

.method private handleDeviceLegacyUpdateParam(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 4
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;
    .param p2, "isGoForwardSync"    # Z
    .param p3, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 456
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeviceLegacyUpdateParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "cs":Landroid/database/Cursor;
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 459
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mCorrelationTag:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 460
    return-void

    .line 463
    :cond_0
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 484
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchSMSBufferUsingRowId(J)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 485
    goto :goto_0

    .line 481
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchSMSBufferUsingRowId(J)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 482
    goto :goto_0

    .line 478
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchSMSBufferUsingRowId(J)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 479
    goto :goto_0

    .line 496
    :pswitch_3
    if-eqz v0, :cond_1

    .line 497
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 476
    :cond_1
    return-void

    .line 472
    :pswitch_4
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mCorrelationTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchSMSBufferUsingCorrelationTagForEarlierNmsEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 474
    goto :goto_0

    .line 469
    :pswitch_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchSMSBufferUsingRowId(J)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 470
    goto :goto_0

    .line 465
    :pswitch_6
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mCorrelationTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchSMSBufferUsingCorrelationTagForEarlierNmsEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 467
    nop

    .line 489
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleExistingBufferForDeviceLegacyUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 493
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleNonExistingBufferForDeviceLegacyUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    :goto_1
    if-eqz v0, :cond_4

    .line 497
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 496
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 497
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_3
    throw v1

    .line 501
    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleObjectSMSCloudSearchFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;J)V
    .locals 25
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p3, "rowId"    # J

    .line 79
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz v10, :cond_4

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 80
    const-string v2, "_bufferdbid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v7, v2

    .line 81
    .local v7, "id":J
    const-string v2, "date"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 82
    .local v5, "time":J
    nop

    .line 83
    const-string/jumbo v2, "syncaction"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 82
    invoke-static {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v19

    .line 84
    .local v19, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 85
    const-string/jumbo v3, "syncdirection"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 84
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v20

    .line 86
    .local v20, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v4, "body"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "body":Ljava/lang/String;
    sget-object v12, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleObjectSMSCloudSearch find bufferDB: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " body:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    move-object v14, v12

    .line 91
    .local v14, "cv":Landroid/content/ContentValues;
    iget-object v12, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    const-string v13, "lastmodseq"

    invoke-virtual {v14, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    iget-object v12, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 93
    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 92
    const-string/jumbo v13, "res_url"

    invoke-virtual {v14, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v12, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 95
    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 94
    const-string/jumbo v13, "parentfolder"

    invoke-virtual {v14, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v12, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "path"

    invoke-virtual {v14, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v12, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v15, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v12, v13, v15}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    move-object v15, v12

    .line 99
    .local v15, "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iput-boolean v1, v15, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    .line 100
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1, v12}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v15, v12, v1, v13}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->setIsChangedActionAndDirection(ZLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;)V

    move-object v1, v14

    goto :goto_0

    .line 103
    :cond_0
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1, v13}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    const-string/jumbo v1, "read"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-nez v13, :cond_1

    .line 106
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    :cond_1
    iget-object v12, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v13, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    sget-object v18, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object v1, v14

    move-object/from16 v21, v15

    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v15    # "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v1, "cv":Landroid/content/ContentValues;
    .local v21, "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    move-wide v14, v7

    move-object/from16 v16, v20

    move-object/from16 v17, v19

    invoke-virtual/range {v12 .. v18}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v15

    .end local v21    # "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v15    # "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    goto :goto_0

    .line 111
    .end local v1    # "cv":Landroid/content/ContentValues;
    .restart local v14    # "cv":Landroid/content/ContentValues;
    :cond_2
    move-object v1, v14

    move-object/from16 v21, v15

    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v15    # "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v21    # "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-object v12, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v13, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    sget-object v18, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide v14, v7

    move-object/from16 v16, v20

    move-object/from16 v17, v19

    invoke-virtual/range {v12 .. v18}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v15

    .line 114
    .end local v21    # "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v15    # "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :goto_0
    iget-object v12, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v12, v11, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 116
    iget-boolean v0, v15, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, v15, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    iget-object v0, v15, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v9, v1, v7, v8, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 120
    const/4 v12, 0x3

    const/4 v13, 0x0

    iget-boolean v14, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v3, v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    .local v3, "cv":Landroid/content/ContentValues;
    move-object v1, v15

    move-object/from16 v17, v2

    move-object/from16 v22, v3

    .end local v3    # "cv":Landroid/content/ContentValues;
    .local v22, "cv":Landroid/content/ContentValues;
    move-wide v2, v7

    move-object/from16 v18, v4

    .end local v4    # "body":Ljava/lang/String;
    .local v18, "body":Ljava/lang/String;
    move v4, v12

    move-wide/from16 v23, v5

    .end local v5    # "time":J
    .local v23, "time":J
    move v5, v13

    move v6, v14

    move-wide v12, v7

    .end local v7    # "id":J
    .local v12, "id":J
    move-object/from16 v7, v17

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 124
    .end local v12    # "id":J
    .end local v18    # "body":Ljava/lang/String;
    .end local v22    # "cv":Landroid/content/ContentValues;
    .end local v23    # "time":J
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "body":Ljava/lang/String;
    .restart local v5    # "time":J
    .restart local v7    # "id":J
    :cond_3
    move-object/from16 v22, v1

    move-object/from16 v18, v4

    move-wide/from16 v23, v5

    move-wide v12, v7

    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "body":Ljava/lang/String;
    .end local v5    # "time":J
    .end local v7    # "id":J
    .restart local v12    # "id":J
    .restart local v18    # "body":Ljava/lang/String;
    .restart local v22    # "cv":Landroid/content/ContentValues;
    .restart local v23    # "time":J
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    .end local v22    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    invoke-virtual {v9, v1, v12, v13, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 126
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v12    # "id":J
    .end local v15    # "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v18    # "body":Ljava/lang/String;
    .end local v19    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .end local v20    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v23    # "time":J
    :goto_1
    move-wide/from16 v12, p3

    goto :goto_2

    .line 127
    :cond_4
    iget-object v2, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v11, v1, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->insertSMSUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;ZJ)J

    move-result-wide v12

    .line 128
    .end local p3    # "rowId":J
    .local v12, "rowId":J
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v1, v11, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 130
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldSkipMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    const/4 v1, 0x3

    iget-object v4, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    iget-object v5, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    move-object/from16 v0, p0

    move-wide v2, v12

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->deleteMessageFromCloud(IJLjava/lang/String;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    goto :goto_2

    .line 134
    :cond_5
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 135
    .local v14, "line":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-boolean v6, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide v2, v12

    move-object v7, v14

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 141
    .end local v14    # "line":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method private onCrossObjectSearchSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;ZZ)V
    .locals 23
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p3, "line"    # Ljava/lang/String;
    .param p4, "mIsGoforwardSync"    # Z
    .param p5, "isCorrTag"    # Z

    .line 645
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const-string v0, "_bufferdbid"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v12, v0

    .line 646
    .local v12, "bufferDbid":J
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v14, v0

    .line 647
    .local v14, "_id":J
    nop

    .line 648
    const-string/jumbo v0, "syncaction"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 647
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v1

    .line 649
    .local v1, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 650
    const-string/jumbo v8, "syncdirection"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 649
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v2

    .line 651
    .local v2, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v3, "date"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 652
    .local v6, "time":J
    const-string v3, "body"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 653
    .local v5, "body":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .local v16, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    const-string v1, "handleCrossSearchObj find bufferDB: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " time: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " body:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v3, v1

    .line 657
    .local v3, "cv":Landroid/content/ContentValues;
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    const-string v4, "lastmodseq"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 659
    const-string/jumbo v4, "read"

    if-eqz p5, :cond_2

    .line 660
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 661
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 660
    move-object/from16 v18, v2

    .end local v2    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .local v18, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string/jumbo v2, "res_url"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 664
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 663
    const-string/jumbo v2, "parentfolder"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_0
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 667
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "path"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_1
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 671
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 672
    .end local v16    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .restart local v1    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    .end local v18    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .restart local v2    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    goto :goto_0

    .line 659
    .end local v1    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .restart local v16    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :cond_2
    move-object/from16 v18, v2

    .line 676
    .end local v2    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .restart local v18    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    :cond_3
    :goto_0
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v2

    .line 677
    .local v2, "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 678
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 680
    :cond_4
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v4, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    move-object/from16 v17, v2

    .end local v2    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .local v17, "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    move v2, v4

    move-object v10, v3

    .end local v3    # "cv":Landroid/content/ContentValues;
    .local v10, "cv":Landroid/content/ContentValues;
    move-wide v3, v12

    move-object/from16 v19, v5

    .end local v5    # "body":Ljava/lang/String;
    .local v19, "body":Ljava/lang/String;
    move-object/from16 v5, v18

    move-wide/from16 v20, v6

    .end local v6    # "time":J
    .local v20, "time":J
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v7

    .line 682
    .local v7, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-boolean v1, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_5

    .line 683
    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 686
    :cond_5
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v9, v10, v12, v13, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 687
    const-wide/16 v0, 0x0

    cmp-long v0, v14, v0

    if-lez v0, :cond_6

    .line 688
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v12

    move/from16 v6, p4

    move-object/from16 v22, v7

    .end local v7    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v22, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 687
    .end local v22    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v7    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :cond_6
    move-object/from16 v22, v7

    .line 691
    .end local v7    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v22    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :goto_1
    return-void
.end method

.method private onCrossObjectSearchSmsAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p3, "line"    # Ljava/lang/String;
    .param p4, "mIsGoforwardSync"    # Z

    .line 641
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCrossObjectSearchSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;ZZ)V

    .line 642
    return-void
.end method

.method private onCrossObjectSearchSmsAvailableUsingResUrl(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "smsCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p3, "line"    # Ljava/lang/String;
    .param p4, "mIsGoforwardSync"    # Z

    .line 637
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCrossObjectSearchSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;ZZ)V

    .line 638
    return-void
.end method

.method private onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V
    .locals 4
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    .line 767
    nop

    .line 768
    const-string v0, "messagetype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 767
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 769
    .local v0, "type":I
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNmsEventChangedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v1, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 771
    .local v1, "smsCs":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 772
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 770
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

    .line 774
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 775
    .end local v1    # "smsCs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 4
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    .line 755
    nop

    .line 756
    const-string v0, "messagetype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 755
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 757
    .local v0, "type":I
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNmsEventDeletedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v1, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 759
    .local v1, "smsCs":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 760
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 758
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

    .line 762
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 763
    .end local v1    # "smsCs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private updateCorrelationTagExtendedChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V
    .locals 5
    .param p1, "objtChange"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    .line 779
    :try_start_0
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->content:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;->content:Ljava/lang/String;

    .line 781
    .local v0, "body":Ljava/lang/String;
    const/4 v2, 0x0

    .line 782
    .local v2, "address":Ljava/lang/String;
    const-string v3, "IN"

    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->direction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 783
    const/4 v1, 0x1

    .line 784
    .local v1, "type":I
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->sender:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 786
    .end local v1    # "type":I
    :cond_0
    const/4 v3, 0x2

    .line 787
    .local v3, "type":I
    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->recipients:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;

    aget-object v1, v4, v1

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;->uri:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v3

    .line 789
    .end local v3    # "type":I
    .restart local v1    # "type":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    .line 790
    invoke-interface {v3, v2, v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getSmsHashTagOrCorrelationTag(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 791
    .local v3, "hash":Ljava/lang/String;
    iput-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "type":I
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "hash":Ljava/lang/String;
    goto :goto_1

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCorrelationTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public cleanAllBufferDB()V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->cleanAllBufferDB()V

    .line 524
    return-void
.end method

.method public deleteSMSBufferDBwithResUrl(Ljava/lang/String;)I
    .locals 1
    .param p1, "resurl"    # Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->deleteSMSBufferDBwithResUrl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleCrossSearchChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)Z
    .locals 3
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "mIsGoforwardSync"    # Z

    .line 603
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->updateCorrelationTagExtendedChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V

    .line 604
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 605
    .local v0, "cs":Landroid/database/Cursor;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 606
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    nop

    .line 609
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_0
    return v1

    .line 604
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

    .line 609
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 610
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_3
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 611
    .restart local v0    # "cs":Landroid/database/Cursor;
    if-eqz v0, :cond_6

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 612
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 613
    nop

    .line 615
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 613
    :cond_4
    return v1

    .line 610
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v1

    .line 615
    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 616
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public handleCrossSearchObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "mIsGoforwardSync"    # Z

    .line 620
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCrossSearchObj():  line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " objt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 622
    .local v0, "cs":Landroid/database/Cursor;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 623
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCrossObjectSearchSmsAvailableUsingResUrl(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    nop

    .line 626
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 624
    :cond_0
    return v1

    .line 621
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

    .line 626
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 627
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_3
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 628
    .restart local v0    # "cs":Landroid/database/Cursor;
    if-eqz v0, :cond_6

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 629
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCrossObjectSearchSmsAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 630
    nop

    .line 632
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 630
    :cond_4
    return v1

    .line 627
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v1

    .line 632
    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 633
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public handleExistingBufferForDeviceLegacyUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 21
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;
    .param p3, "mIsGoforwardSync"    # Z
    .param p4, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 316
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExistingBufferForDeviceLegacyUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsGoforwardSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p3

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", changelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p4

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v14, v0

    .line 319
    .local v14, "cv":Landroid/content/ContentValues;
    nop

    .line 320
    const-string/jumbo v0, "syncaction"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 319
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v15

    .line 321
    .local v15, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 322
    const-string/jumbo v1, "syncdirection"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 321
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v16

    .line 323
    .local v16, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v2, "_bufferdbid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 324
    .local v17, "bufferDbId":J
    const-string v2, "linenum"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 325
    .local v19, "line":Ljava/lang/String;
    iget-object v2, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v3, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    iget-object v8, v11, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    move-wide/from16 v4, v17

    move-object/from16 v6, v16

    move-object v7, v15

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v8

    .line 327
    .local v8, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-boolean v2, v8, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, v8, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Read:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "read"

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    :cond_1
    iget v0, v11, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 335
    const-string v0, "_bufferdbid=?"

    .line 336
    .local v0, "select":Ljava/lang/String;
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 337
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 338
    .local v3, "_id":I
    iget-wide v4, v11, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 339
    iget-wide v4, v11, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 341
    :cond_2
    iget-object v2, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget v4, v11, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    invoke-virtual {v2, v4, v14, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 343
    .end local v0    # "select":Ljava/lang/String;
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "_id":I
    :cond_3
    iget-boolean v0, v8, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v0, :cond_4

    .line 344
    iget v4, v11, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-wide/from16 v2, v17

    move/from16 v6, p3

    move-object/from16 v7, v19

    move-object/from16 v20, v8

    .end local v8    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v20, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 343
    .end local v20    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v8    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :cond_4
    move-object/from16 v20, v8

    .line 347
    .end local v8    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v20    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :goto_0
    return-void
.end method

.method public handleNonExistingBufferForDeviceLegacyUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;)V
    .locals 4
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;

    .line 350
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v0, "cv":Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mLine:Ljava/lang/String;

    const-string v2, "linenum"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 355
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->querySMSUseRowId(J)Landroid/database/Cursor;

    move-result-object v1

    .line 356
    .local v1, "smsCs":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 355
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

    .line 359
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 361
    .end local v1    # "smsCs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method public handleNormalSyncObjectSmsDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 28
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    .line 144
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string/jumbo v0, "read"

    const-string/jumbo v1, "syncdirection"

    const-string/jumbo v2, "syncaction"

    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNormalSyncObjectSmsDownload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-wide/16 v12, -0x1

    .line 146
    .local v12, "rowId":J
    :try_start_0
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-object v4, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v14, v3

    .line 148
    .local v14, "cs":Landroid/database/Cursor;
    if-eqz v14, :cond_4

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 149
    const-string v5, "_bufferdbid"

    .line 150
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 149
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    .line 151
    .local v6, "bufferDbid":J
    const-string v5, "date"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 152
    .local v8, "time":J
    const-string v5, "_id"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v3, v5

    .line 153
    .local v3, "_id":J
    const-string v5, "linenum"

    .line 154
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 153
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide v9, v8

    .end local v8    # "time":J
    .local v9, "time":J
    move-object v8, v5

    .line 155
    .local v8, "line":Ljava/lang/String;
    nop

    .line 156
    :try_start_2
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 155
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v5

    .line 157
    .local v5, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 158
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 157
    invoke-static {v15}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v15

    .line 159
    .local v15, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    move-object/from16 v16, v5

    .end local v5    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .local v16, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    const-string v5, "body"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    .local v5, "body":Ljava/lang/String;
    move-wide/from16 v22, v12

    .end local v12    # "rowId":J
    .local v22, "rowId":J
    :try_start_3
    sget-object v12, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v15

    .end local v15    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .local v17, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v15, "handleObjectSMSCloudSearch find bufferDB: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " id: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " time: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " body:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .local v12, "cv":Landroid/content/ContentValues;
    const-string v13, "lastmodseq"

    iget-object v15, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string/jumbo v13, "res_url"

    iget-object v15, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 166
    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 165
    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v13, "parentfolder"

    iget-object v15, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 168
    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 167
    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v13, "path"

    iget-object v15, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v14, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_0

    .line 172
    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 173
    .end local v16    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .local v13, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    sget-object v16, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-object/from16 v24, v16

    .end local v17    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .local v16, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    goto :goto_0

    .line 170
    .end local v13    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .local v16, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .restart local v17    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    :cond_0
    move-object/from16 v13, v16

    move-object/from16 v24, v17

    .line 175
    .end local v16    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .end local v17    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .restart local v13    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .local v24, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    :goto_0
    sget-object v15, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v25, v5

    .end local v5    # "body":Ljava/lang/String;
    .local v25, "body":Ljava/lang/String;
    iget-object v5, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v15, v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :cond_1
    move-wide/from16 v26, v9

    move-object/from16 v10, p0

    .end local v9    # "time":J
    .local v26, "time":J
    :try_start_4
    iget-object v15, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    iget-object v5, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move/from16 v16, v0

    move-wide/from16 v17, v6

    move-object/from16 v19, v24

    move-object/from16 v20, v13

    move-object/from16 v21, v5

    invoke-virtual/range {v15 .. v21}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v0

    .line 180
    .local v0, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-boolean v5, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v5, :cond_2

    .line 181
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    :cond_2
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v10, v12, v6, v7, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 185
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-lez v1, :cond_3

    .line 186
    const/4 v5, 0x3

    const/4 v9, 0x0

    iget-boolean v15, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-wide/from16 v17, v3

    .end local v3    # "_id":J
    .local v17, "_id":J
    move-wide v3, v6

    move-object/from16 v19, v25

    .end local v25    # "body":Ljava/lang/String;
    .local v19, "body":Ljava/lang/String;
    move-wide/from16 v20, v6

    .end local v6    # "bufferDbid":J
    .local v20, "bufferDbid":J
    move v6, v9

    move v7, v15

    move-object/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 185
    .end local v17    # "_id":J
    .end local v19    # "body":Ljava/lang/String;
    .end local v20    # "bufferDbid":J
    .restart local v3    # "_id":J
    .restart local v6    # "bufferDbid":J
    .restart local v25    # "body":Ljava/lang/String;
    :cond_3
    move-wide/from16 v17, v3

    move-wide/from16 v20, v6

    move-object/from16 v19, v25

    .line 190
    .end local v0    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v3    # "_id":J
    .end local v6    # "bufferDbid":J
    .end local v8    # "line":Ljava/lang/String;
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .end local v24    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v25    # "body":Ljava/lang/String;
    .end local v26    # "time":J
    :goto_1
    move-wide/from16 v12, v22

    goto :goto_3

    .line 146
    :catchall_0
    move-exception v0

    move-object/from16 v10, p0

    goto/16 :goto_4

    .end local v22    # "rowId":J
    .local v12, "rowId":J
    :catchall_1
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    :goto_2
    move-wide/from16 v22, v12

    move-object v1, v0

    .end local v12    # "rowId":J
    .restart local v22    # "rowId":J
    goto :goto_5

    .line 148
    .end local v22    # "rowId":J
    .restart local v12    # "rowId":J
    :cond_4
    move-wide/from16 v22, v12

    .line 191
    .end local v12    # "rowId":J
    .restart local v22    # "rowId":J
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->insertSMSUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;ZJ)J

    move-result-wide v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 192
    .end local v22    # "rowId":J
    .local v3, "rowId":J
    :try_start_5
    const-string v0, "OUT"

    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "IN"

    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    .line 195
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->isOver72Hours(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    if-nez v0, :cond_6

    .line 197
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 198
    .restart local v8    # "line":Ljava/lang/String;
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-boolean v7, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 204
    .end local v8    # "line":Ljava/lang/String;
    :cond_6
    move-wide v12, v3

    .end local v3    # "rowId":J
    .restart local v12    # "rowId":J
    :goto_3
    if-eqz v14, :cond_7

    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    .line 206
    .end local v14    # "cs":Landroid/database/Cursor;
    :cond_7
    goto :goto_8

    .line 146
    .end local v12    # "rowId":J
    .restart local v3    # "rowId":J
    .restart local v14    # "cs":Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-wide v12, v3

    goto :goto_5

    .end local v3    # "rowId":J
    .restart local v22    # "rowId":J
    :catchall_4
    move-exception v0

    :goto_4
    move-object v1, v0

    move-wide/from16 v12, v22

    .end local v22    # "rowId":J
    .restart local v12    # "rowId":J
    :goto_5
    if-eqz v14, :cond_8

    :try_start_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v12    # "rowId":J
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    :cond_8
    :goto_6
    throw v1
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0

    .line 204
    .end local v14    # "cs":Landroid/database/Cursor;
    .restart local v12    # "rowId":J
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-wide/from16 v22, v12

    .line 205
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 207
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_8
    return-wide v12
.end method

.method public handleObjectSMSCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 5
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    .line 61
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleObjectSMSCloudSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-wide/16 v0, -0x1

    .line 65
    .local v0, "rowId":J
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSmsInitialSearchUsingResUrl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 67
    .local v2, "cs":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleObjectSMSCloudSearchFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 66
    .end local v2    # "cs":Landroid/database/Cursor;
    :cond_0
    goto :goto_1

    .restart local v2    # "cs":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3

    .line 70
    .end local v2    # "cs":Landroid/database/Cursor;
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 71
    .restart local v2    # "cs":Landroid/database/Cursor;
    :try_start_2
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleObjectSMSCloudSearchFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 72
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 75
    .end local v2    # "cs":Landroid/database/Cursor;
    :cond_3
    :goto_1
    return-wide v0

    .line 70
    .restart local v2    # "cs":Landroid/database/Cursor;
    :catchall_2
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v3
.end method

.method public insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cvFlags"    # Landroid/content/ContentValues;
    .param p3, "isGoForwardSync"    # Z

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)J

    .line 452
    return-void
.end method

.method public notifyMsgAppDeleteFail(IJLjava/lang/String;)V
    .locals 6
    .param p1, "dbIndex"    # I
    .param p2, "bufferDbId"    # J
    .param p4, "line"    # Ljava/lang/String;

    .line 839
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

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

    .line 840
    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 839
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 842
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 843
    .local v0, "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 844
    .local v1, "jsobjct":Lcom/google/gson/JsonObject;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 846
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 848
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 846
    const-string v4, "MessageApp"

    const-string v5, "SMS"

    invoke-interface {v2, v4, v5, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .end local v0    # "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    .end local v1    # "jsobjct":Lcom/google/gson/JsonObject;
    :cond_0
    return-void
.end method

.method public notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    .locals 7
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "type"    # I

    .line 364
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 365
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 367
    .local v0, "jsonArrayRowIdsSMS":Lcom/google/gson/JsonArray;
    :cond_0
    nop

    .line 368
    const-string v1, "_bufferdbid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 367
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 369
    .local v1, "bufferDBid":I
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 370
    .local v2, "jsobjct":Lcom/google/gson/JsonObject;
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 372
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonArrayRowIdsSMS.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    iget v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mMaxNumMsgsNotifyAppInIntent:I

    const-string v5, "SMS"

    const-string v6, "MessageApp"

    if-ne v3, v4, :cond_1

    .line 374
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 377
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-interface {v3, v6, v5, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    move-object v0, v3

    .line 380
    .end local v1    # "bufferDBid":I
    .end local v2    # "jsobjct":Lcom/google/gson/JsonObject;
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 384
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-interface {v1, v6, v5, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .end local v0    # "jsonArrayRowIdsSMS":Lcom/google/gson/JsonArray;
    :cond_2
    return-void
.end method

.method public onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 10
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 527
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;

    iget v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationTag:Ljava/lang/String;

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationId:Ljava/lang/String;

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationId:Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v0, "devicelegacy":Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleDeviceLegacyUpdateParam(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 533
    return-void
.end method

.method public onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 1
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "mIsGoforwardSync"    # Z

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 513
    return-void
.end method

.method public onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 2
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "mIsGoforwardSync"    # Z

    .line 516
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 517
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;I)V

    .line 520
    return-void
.end method

.method public onNmsEventChangedObjBufferDbSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZZ)V
    .locals 27
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p3, "mIsGoforwardSync"    # Z
    .param p4, "isCorrTag"    # Z

    .line 232
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const-string v0, "_bufferdbid"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v12, v0

    .line 233
    .local v12, "bufferDbid":J
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v14, v0

    .line 234
    .local v14, "_id":J
    nop

    .line 235
    const-string/jumbo v0, "syncaction"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 234
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v16

    .line 236
    .local v16, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 237
    const-string/jumbo v8, "syncdirection"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 236
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v17

    .line 238
    .local v17, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v1, "linenum"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 239
    .local v18, "line":Ljava/lang/String;
    const-string v1, "date"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 240
    .local v6, "time":J
    const-string v1, "body"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "body":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloudNotifyChangedObj find bufferDB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " body:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v3, "_bufferdbid=?"

    .line 245
    .local v3, "selectUpdate":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/16 v19, 0x0

    aput-object v4, v2, v19

    move-object v4, v2

    .line 246
    .local v4, "selectionArgsUpdate":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 247
    .local v2, "cv":Landroid/content/ContentValues;
    iget-object v1, v11, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->lastModSeq:Ljava/lang/Long;

    move-object/from16 v20, v3

    .end local v3    # "selectUpdate":Ljava/lang/String;
    .local v20, "selectUpdate":Ljava/lang/String;
    const-string v3, "lastmodseq"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    if-eqz p4, :cond_0

    .line 250
    iget-object v1, v11, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 251
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string/jumbo v3, "res_url"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, v11, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->parentFolder:Ljava/net/URL;

    .line 253
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    const-string/jumbo v3, "parentfolder"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-object v3, v11, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v3

    .line 257
    .local v3, "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v19, v3

    .end local v3    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .local v19, "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    const-string/jumbo v3, "read"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 257
    .end local v19    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .restart local v3    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :cond_1
    move-object/from16 v19, v3

    .line 261
    .end local v3    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .restart local v19    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :goto_0
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v3, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    move-object v10, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .local v10, "cv":Landroid/content/ContentValues;
    move v2, v3

    move-object/from16 v11, v20

    move-wide/from16 v25, v14

    move-object v14, v4

    move-object/from16 v15, v19

    move-wide/from16 v19, v25

    .end local v4    # "selectionArgsUpdate":[Ljava/lang/String;
    .end local v20    # "selectUpdate":Ljava/lang/String;
    .local v11, "selectUpdate":Ljava/lang/String;
    .local v14, "selectionArgsUpdate":[Ljava/lang/String;
    .local v15, "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .local v19, "_id":J
    move-wide v3, v12

    move-object/from16 v21, v5

    .end local v5    # "body":Ljava/lang/String;
    .local v21, "body":Ljava/lang/String;
    move-object/from16 v5, v17

    move-wide/from16 v22, v6

    .end local v6    # "time":J
    .local v22, "time":J
    move-object/from16 v6, v16

    move-object v7, v15

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v7

    .line 263
    .local v7, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-boolean v1, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    :cond_2
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget v1, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    invoke-virtual {v0, v1, v10, v11, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    const-wide/16 v0, 0x0

    cmp-long v0, v19, v0

    if-lez v0, :cond_3

    .line 271
    iget v4, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v12

    move/from16 v6, p3

    move-object/from16 v24, v7

    .end local v7    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v24, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 270
    .end local v24    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v7    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :cond_3
    move-object/from16 v24, v7

    .line 274
    .end local v7    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v24    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :goto_1
    return-void
.end method

.method public onNmsEventChangedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 1
    .param p1, "smsCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p3, "mIsGoforwardSync"    # Z

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjBufferDbSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZZ)V

    .line 223
    return-void
.end method

.method public onNmsEventChangedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 1
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p3, "mIsGoforwardSync"    # Z

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjBufferDbSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZZ)V

    .line 213
    return-void
.end method

.method public onNmsEventDeletedObjBufferDbSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;ZZ)V
    .locals 24
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .param p3, "mIsGoforwardSync"    # Z
    .param p4, "isCorrTag"    # Z

    .line 277
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const-string v0, "_bufferdbid"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v12, v0

    .line 278
    .local v12, "bufferDbid":J
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v14, v0

    .line 279
    .local v14, "_id":J
    nop

    .line 280
    const-string/jumbo v0, "syncaction"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 279
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v16

    .line 281
    .local v16, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 282
    const-string/jumbo v8, "syncdirection"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 281
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v17

    .line 283
    .local v17, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v1, "linenum"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 284
    .local v18, "line":Ljava/lang/String;
    const-string v1, "date"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 285
    .local v6, "time":J
    const-string v1, "body"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "body":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloudNotifyChangedObj find bufferDB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " body:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v3, "_bufferdbid=?"

    .line 290
    .local v3, "selectUpdate":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    move-object v4, v1

    .line 291
    .local v4, "selectionArgsUpdate":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v2, v1

    .line 292
    .local v2, "cv":Landroid/content/ContentValues;
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .end local v3    # "selectUpdate":Ljava/lang/String;
    .end local v4    # "selectionArgsUpdate":[Ljava/lang/String;
    .local v19, "selectUpdate":Ljava/lang/String;
    .local v20, "selectionArgsUpdate":[Ljava/lang/String;
    iget-wide v3, v11, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->lastModSeq:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "lastmodseq"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 294
    if-eqz p4, :cond_0

    .line 295
    iget-object v1, v11, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 296
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    const-string/jumbo v3, "res_url"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v3, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    sget-object v21, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object v4, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .local v4, "cv":Landroid/content/ContentValues;
    move v2, v3

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-wide/from16 v19, v14

    move-object v14, v4

    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v20    # "selectionArgsUpdate":[Ljava/lang/String;
    .local v10, "selectUpdate":Ljava/lang/String;
    .local v11, "selectionArgsUpdate":[Ljava/lang/String;
    .local v14, "cv":Landroid/content/ContentValues;
    .local v19, "_id":J
    move-wide v3, v12

    move-object v15, v5

    .end local v5    # "body":Ljava/lang/String;
    .local v15, "body":Ljava/lang/String;
    move-object/from16 v5, v17

    move-wide/from16 v22, v6

    .end local v6    # "time":J
    .local v22, "time":J
    move-object/from16 v6, v16

    move-object/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v7

    .line 301
    .local v7, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-boolean v1, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    :cond_1
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget v1, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    invoke-virtual {v0, v1, v14, v10, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 308
    const-wide/16 v0, 0x0

    cmp-long v0, v19, v0

    if-lez v0, :cond_2

    .line 309
    iget v4, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v12

    move/from16 v6, p3

    move-object/from16 v21, v7

    .end local v7    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v21, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 308
    .end local v21    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v7    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :cond_2
    move-object/from16 v21, v7

    .line 312
    .end local v7    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v21    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :goto_0
    return-void
.end method

.method public onNmsEventDeletedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 1
    .param p1, "smsCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .param p3, "mIsGoforwardSync"    # Z

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjBufferDbSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;ZZ)V

    .line 228
    return-void
.end method

.method public onNmsEventDeletedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 1
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .param p3, "mIsGoforwardSync"    # Z

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjBufferDbSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;ZZ)V

    .line 218
    return-void
.end method

.method public onNotificationReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V
    .locals 4
    .param p1, "notification"    # Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;

    .line 819
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 821
    .local v0, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    if-eqz v1, :cond_2

    .line 822
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 823
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v2, v2, v1

    .line 824
    .local v2, "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    if-eqz v3, :cond_0

    .line 825
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->updateCorrelationTagExtendedChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V

    .line 826
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 828
    :cond_0
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-eqz v3, :cond_1

    .line 829
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    .line 822
    .end local v2    # "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    .end local v1    # "i":I
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 834
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 836
    :cond_3
    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V
    .locals 1
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;
    .param p2, "mIsGoforwardSync"    # Z

    .line 504
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 505
    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V
    .locals 4
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 508
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mBufferRowId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->updateAppFetchingFailed(IJ)V

    .line 509
    return-void
.end method

.method public queryAllSMSfromTelephony()Landroid/database/Cursor;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->queryAllSMSfromTelephony()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryDeltaSMSfromTelephony()Landroid/database/Cursor;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->queryDeltaSMSfromTelephony()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "resurl"    # Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public querySMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "tableIndex"    # I
    .param p2, "syncDirection"    # Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->queryMessageBySyncDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public querySMSMessagesToUpload()Landroid/database/Cursor;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->querySMSMessagesToUpload()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryToCloudUnsyncedSms()Landroid/database/Cursor;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->queryToCloudUnsyncedSms()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryToDeviceUnsyncedSms()Landroid/database/Cursor;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->queryToDeviceUnsyncedSms()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "correlationTag"    # Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public syncReadSmsFromTelephony()V
    .locals 8

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v0, "updatelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->queryReadSMSfromTelephony()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .local v1, "cssms":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 427
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "updatelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
    :cond_0
    :goto_0
    throw v2

    .line 431
    .restart local v0    # "updatelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 433
    .end local v1    # "cssms":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 435
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 436
    .local v2, "cv":Landroid/content/ContentValues;
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncdirection"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "syncaction"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "read"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    const-string v4, "_id=? AND read=? AND syncaction<>? AND syncaction<>?"

    .line 442
    .local v4, "select":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 443
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 444
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x3

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 445
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    move-object v3, v5

    .line 446
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mDbTableContractIndex:I

    invoke-virtual {v5, v6, v2, v4, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 434
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v4    # "select":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 448
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public updateCorrelationTagObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V
    .locals 6
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    .line 798
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCorrelationTagObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :try_start_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 802
    .local v0, "body":Ljava/lang/String;
    const/4 v1, 0x0

    .line 803
    .local v1, "address":Ljava/lang/String;
    const-string v3, "IN"

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    const/4 v3, 0x1

    .line 805
    .local v3, "type":I
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 807
    .end local v3    # "type":I
    :cond_0
    const/4 v3, 0x2

    .line 808
    .restart local v3    # "type":I
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 810
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v4

    .line 811
    invoke-interface {v4, v1, v3, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getSmsHashTagOrCorrelationTag(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 812
    .local v4, "hash":Ljava/lang/String;
    iput-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "address":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v4    # "hash":Ljava/lang/String;
    goto :goto_1

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
