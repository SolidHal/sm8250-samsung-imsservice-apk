.class public Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "CallLogScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->TAG:Ljava/lang/String;

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

    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 46
    new-instance v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    invoke-direct {v0, p1, p5}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    .line 47
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mDbTableContractIndex:I

    .line 48
    return-void
.end method

.method private deleteCallLog(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 21
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 84
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string/jumbo v0, "syncdirection"

    const-string/jumbo v1, "syncaction"

    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    iget v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->queryCallLogBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v12

    .line 85
    .local v12, "cs":Landroid/database/Cursor;
    if-eqz v12, :cond_1

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object v13, v2

    .line 87
    .local v13, "cv":Landroid/content/ContentValues;
    nop

    .line 88
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 87
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v19

    .line 89
    .local v19, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 90
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 89
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v18

    .line 91
    .local v18, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v2, "_bufferdbid"

    .line 92
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 91
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 93
    .local v16, "bufferDbId":J
    iget-object v14, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v15, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mDbTableContractIndex:I

    sget-object v20, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual/range {v14 .. v20}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    move-object v14, v2

    .line 96
    .local v14, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-object v2, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    iget-object v0, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v0, "_bufferdbid=?"

    .line 99
    .local v0, "select":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v15, v2

    .line 100
    .local v15, "selectionArgs":[Ljava/lang/String;
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    iget v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    invoke-virtual {v2, v3, v13, v0, v15}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    const-string v2, "linenum"

    .line 103
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 102
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "line":Ljava/lang/String;
    iget-boolean v2, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-ne v2, v1, :cond_1

    .line 105
    iget v5, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, v16

    move-object/from16 v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 84
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

    move-object v1, v0

    if-eqz v12, :cond_0

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 109
    :cond_1
    :goto_1
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 110
    .end local v12    # "cs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V
    .locals 3
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .local v0, "summaryCs":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    const-string/jumbo v1, "syncaction"

    .line 241
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 240
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 242
    .local v1, "status":I
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_1

    .line 249
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 243
    :cond_0
    return-void

    .line 245
    :cond_1
    :try_start_3
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V

    .line 246
    .end local v1    # "status":I
    goto :goto_0

    .line 247
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->onNmsEventChangedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :goto_0
    if-eqz v0, :cond_3

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 251
    .end local v0    # "summaryCs":Landroid/database/Cursor;
    :cond_3
    goto :goto_2

    .line 238
    .restart local v0    # "summaryCs":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    :cond_4
    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    .line 249
    .end local v0    # "summaryCs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_2
    return-void
.end method

.method private handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 3
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 282
    .local v0, "summaryCs":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    const-string/jumbo v1, "syncaction"

    .line 284
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 283
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 285
    .local v1, "status":I
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 286
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .end local v1    # "status":I
    goto :goto_1

    .line 293
    .restart local v1    # "status":I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_2
    return-void

    .line 291
    .end local v1    # "status":I
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->onNmsEventDeletedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 294
    .end local v0    # "summaryCs":Landroid/database/Cursor;
    :cond_4
    return-void

    .line 281
    .restart local v0    # "summaryCs":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v1
.end method

.method private onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V
    .locals 11
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    .line 297
    const-string v0, "CALLLOGDATA"

    const-string/jumbo v1, "seen"

    .line 298
    const-string v2, "messagetype"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 297
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 299
    .local v2, "type":I
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNmsEventChangedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    iget-object v4, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 301
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->queryCallLogMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 302
    .local v3, "clgCs":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 303
    const-string v4, "_bufferdbid"

    .line 304
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 303
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 305
    .local v4, "rowid":I
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 306
    .local v5, "seen":I
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    iget-object v7, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v6

    .line 307
    .local v6, "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    const/4 v7, 0x1

    if-eq v5, v7, :cond_1

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v8, v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 309
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 310
    .local v8, "cv":Landroid/content/ContentValues;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string/jumbo v1, "syncaction"

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string/jumbo v1, "syncdirection"

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 313
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 312
    invoke-virtual {v8, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    int-to-long v9, v4

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    invoke-virtual {p0, v8, v9, v10, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 315
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    int-to-long v9, v4

    invoke-virtual {v1, v0, v0, v9, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 300
    .end local v4    # "rowid":I
    .end local v5    # "seen":I
    .end local v6    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .end local v8    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0

    .line 320
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 321
    .end local v3    # "clgCs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private onNmsEventChangedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V
    .locals 5
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    .line 351
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "line":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->insertNewCallLogUsingChangedObject(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Ljava/lang/String;)J

    move-result-wide v1

    .line 355
    .local v1, "rowId":J
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    const-string v4, "CALLLOGDATA"

    invoke-virtual {v3, v4, v4, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    .line 357
    return-void
.end method

.method private onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 9
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    .line 324
    const-string v0, "CALLLOGDATA"

    const-string/jumbo v1, "syncaction"

    .line 325
    const-string v2, "messagetype"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 324
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 326
    .local v2, "type":I
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNmsEventDeletedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    iget-object v4, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 328
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 327
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->queryCallLogMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 329
    .local v3, "clgCs":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    const-string v4, "_bufferdbid"

    .line 331
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 330
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 332
    .local v4, "rowid":I
    nop

    .line 333
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 332
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 334
    .local v5, "action":I
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    if-eq v6, v5, :cond_1

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 335
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    if-eq v6, v5, :cond_1

    .line 336
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 337
    .local v6, "cv":Landroid/content/ContentValues;
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string/jumbo v1, "syncdirection"

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 339
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 338
    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    int-to-long v7, v4

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    invoke-virtual {p0, v6, v7, v8, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 341
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    int-to-long v7, v4

    invoke-virtual {v1, v0, v0, v7, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 327
    .end local v4    # "rowid":I
    .end local v5    # "action":I
    .end local v6    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0

    .line 346
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 347
    .end local v3    # "clgCs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private onNmsEventDeletedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 2
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventDeletedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)J

    .line 361
    return-void
.end method

.method private readCallLog(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 21
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 113
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string/jumbo v0, "syncdirection"

    const-string/jumbo v1, "syncaction"

    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    iget v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->queryCallLogBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v12

    .line 114
    .local v12, "cs":Landroid/database/Cursor;
    if-eqz v12, :cond_1

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object v13, v2

    .line 116
    .local v13, "cv":Landroid/content/ContentValues;
    const-string v2, "_bufferdbid"

    .line 117
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 116
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 118
    .local v16, "bufferDbId":J
    nop

    .line 119
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 118
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v19

    .line 120
    .local v19, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 121
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 120
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v18

    .line 122
    .local v18, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v2, "linenum"

    .line 123
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 122
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "line":Ljava/lang/String;
    iget-object v14, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v15, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mDbTableContractIndex:I

    sget-object v20, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Read:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual/range {v14 .. v20}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    move-object v14, v2

    .line 127
    .local v14, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-object v2, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    iget-object v0, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v0, "_bufferdbid=?"

    .line 130
    .local v0, "select":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v15, v2

    .line 131
    .local v15, "selectionArgs":[Ljava/lang/String;
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    iget v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    invoke-virtual {v2, v3, v13, v0, v15}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    iget-boolean v2, v14, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-ne v2, v1, :cond_0

    .line 134
    iget v5, v11, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, v16

    move-object/from16 v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 137
    .end local v0    # "select":Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v14    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v15    # "selectionArgs":[Ljava/lang/String;
    .end local v16    # "bufferDbId":J
    .end local v18    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v19    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readcalllog found no record"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :goto_0
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 141
    .end local v12    # "cs":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 113
    .restart local v12    # "cs":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_3

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method


# virtual methods
.method public handleNormalSyncDownloadedCallLog(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    .line 368
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNormalSyncDownloadedCallLog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method public handleObjectCallLogMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 26
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    .line 144
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string/jumbo v0, "syncdirection"

    const-string/jumbo v1, "syncaction"

    const-string v2, "CALLLOGDATA"

    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleObjectCallLogMessageCloudSearch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-wide/16 v12, -0x1

    .line 155
    .local v12, "rowId":J
    :try_start_0
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    iget-object v4, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->queryCallLogMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v14, v3

    .line 156
    .local v14, "cs":Landroid/database/Cursor;
    :try_start_1
    iget-object v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    .line 157
    .local v15, "line":Ljava/lang/String;
    if-eqz v14, :cond_4

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 158
    const-string v2, "_bufferdbid"

    .line 159
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 158
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 160
    .local v8, "bufferid":J
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 161
    .local v2, "_id":I
    nop

    .line 162
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 161
    invoke-static {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v21

    .line 163
    .local v21, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 164
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 163
    invoke-static {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v20

    .line 165
    .local v20, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object v7, v3

    .line 166
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "seen"

    iget-object v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    iget-object v5, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->getIfSeenValueUsingFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v3, "answeredby"

    iget-object v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    iget-object v5, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 168
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->getIfAnsweredValueUsingFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 167
    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    move-object v5, v3

    .line 171
    .local v5, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    const/4 v3, 0x0

    iput-boolean v3, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    .line 172
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v4, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v3, :cond_0

    .line 173
    :try_start_2
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mDbTableContractIndex:I

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

    .line 155
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

    goto/16 :goto_3

    .line 175
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

    .line 176
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mDbTableContractIndex:I

    sget-object v16, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

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

    .line 178
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

    .line 179
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mDbTableContractIndex:I

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

    .line 178
    .end local v5    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v17    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :cond_2
    move-object/from16 v13, v17

    .line 183
    .end local v17    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v13, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleObjectCallLogMessageCloudSearch: callog found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v22

    .end local v22    # "bufferid":J
    .restart local v8    # "bufferid":J
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "mIsChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-boolean v3, v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v3, :cond_3

    .line 186
    iget-object v3, v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    iget-object v1, v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    invoke-virtual {v10, v12, v8, v9, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 189
    iget v5, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mDbTableContractIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move/from16 v16, v2

    .end local v2    # "_id":I
    .local v16, "_id":I
    move-object v2, v13

    move-wide v3, v8

    move-wide/from16 v24, v8

    .end local v8    # "bufferid":J
    .local v24, "bufferid":J
    move-object v8, v15

    move-object v9, v0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 192
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
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    move-wide/from16 v1, v24

    .end local v24    # "bufferid":J
    .local v1, "bufferid":J
    invoke-virtual {v10, v12, v1, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 194
    .end local v1    # "bufferid":J
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v16    # "_id":I
    .end local v20    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v21    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :goto_1
    move-wide/from16 v12, v18

    goto :goto_2

    .line 157
    .end local v18    # "rowId":J
    .local v12, "rowId":J
    :cond_4
    move-wide/from16 v18, v12

    .line 195
    .end local v12    # "rowId":J
    .restart local v18    # "rowId":J
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v1, 0x10

    invoke-virtual {v0, v11, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 197
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    invoke-virtual {v0, v11, v15}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->insertCallLogMessageUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide v3, v0

    .line 198
    .end local v18    # "rowId":J
    .local v3, "rowId":J
    :try_start_5
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    invoke-virtual {v0, v2, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide v12, v3

    .line 203
    .end local v3    # "rowId":J
    .end local v15    # "line":Ljava/lang/String;
    .restart local v12    # "rowId":J
    :goto_2
    if-eqz v14, :cond_5

    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    .line 205
    .end local v14    # "cs":Landroid/database/Cursor;
    :cond_5
    goto :goto_6

    .line 155
    .end local v12    # "rowId":J
    .restart local v3    # "rowId":J
    .restart local v14    # "cs":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-wide v12, v3

    goto :goto_3

    .end local v3    # "rowId":J
    .restart local v18    # "rowId":J
    :catchall_2
    move-exception v0

    move-object v1, v0

    move-wide/from16 v12, v18

    goto :goto_3

    .end local v18    # "rowId":J
    .restart local v12    # "rowId":J
    :catchall_3
    move-exception v0

    move-wide/from16 v18, v12

    move-object v1, v0

    :goto_3
    if-eqz v14, :cond_6

    :try_start_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v12    # "rowId":J
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;
    .end local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    :cond_6
    :goto_4
    throw v1
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0

    .line 203
    .end local v14    # "cs":Landroid/database/Cursor;
    .restart local v12    # "rowId":J
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-wide/from16 v18, v12

    .line 204
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_5
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_6
    return-wide v12
.end method

.method public notifyMsgAppDeleteFail(IJLjava/lang/String;)V
    .locals 5
    .param p1, "dbIndex"    # I
    .param p2, "bufferDbId"    # J
    .param p4, "line"    # Ljava/lang/String;

    .line 376
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->TAG:Ljava/lang/String;

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

    .line 377
    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 379
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 380
    .local v0, "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 381
    .local v1, "jsobjct":Lcom/google/gson/JsonObject;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 383
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 385
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 383
    const-string v4, "CALLLOGDATA"

    invoke-interface {v2, v4, v4, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .end local v0    # "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    .end local v1    # "jsobjct":Lcom/google/gson/JsonObject;
    :cond_0
    return-void
.end method

.method public onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 70
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->deleteCallLog(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 77
    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->readCallLog(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 74
    nop

    .line 81
    :goto_0
    return-void
.end method

.method public onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 1
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "mIsGoforwardSync"    # Z

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 396
    return-void
.end method

.method public onNotificationReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V
    .locals 4
    .param p1, "notification"    # Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;

    .line 51
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 53
    .local v0, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    if-eqz v1, :cond_2

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 55
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v2, v2, v1

    .line 56
    .local v2, "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    if-eqz v3, :cond_0

    .line 57
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V

    .line 59
    :cond_0
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    .line 54
    .end local v2    # "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "i":I
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 67
    :cond_3
    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V
    .locals 1
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;
    .param p2, "mIsGoforwardSync"    # Z

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 365
    return-void
.end method

.method public queryCallLogMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;->queryCallLogMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public wipeOutData(ILjava/lang/String;)V
    .locals 1
    .param p1, "tableindex"    # I
    .param p2, "line"    # Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->wipeOutData(ILjava/lang/String;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 392
    return-void
.end method
