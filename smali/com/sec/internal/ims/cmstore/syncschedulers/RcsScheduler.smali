.class public Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;
.source "RcsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rule"    # Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;
    .param p3, "builder"    # Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;
    .param p4, "deviceDataListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;
    .param p5, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;
    .param p6, "mmsScheduler"    # Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;
    .param p7, "smsScheduler"    # Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
    .param p8, "looper"    # Landroid/os/Looper;

    .line 66
    invoke-direct/range {p0 .. p8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    .line 68
    invoke-direct {p0, p8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->registerRcsDbSessionObserver(Landroid/os/Looper;)V

    .line 69
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private crossChangedObjectSearchLegacy(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZLcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)I
    .locals 3
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "isGoforward"    # Z
    .param p3, "notification"    # Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;

    .line 956
    iget-object v0, p3, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataType:Ljava/lang/String;

    const-string v1, "CHAT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleCrossSearchChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    const/4 v0, 0x3

    return v0

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleCrossSearchChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    return v1

    .line 962
    :cond_1
    iget-object v0, p3, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataType:Ljava/lang/String;

    const-string v2, "FT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 963
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleCrossSearchChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 964
    return v1

    .line 967
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private crossObjectSearchLegacy(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "isGoforward"    # Z

    .line 971
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->updateCorrelationTagObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V

    .line 974
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleCrossSearchObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    const/4 v0, 0x3

    return v0

    .line 978
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 979
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    .line 980
    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleCrossSearchObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 981
    const/4 v0, 0x4

    return v0

    .line 984
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V
    .locals 16
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "downloadlist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .param p3, "notification"    # Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;

    .line 883
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v11, 0x0

    .line 884
    .local v11, "mIsGoforwardSync":Z
    iget-object v0, v10, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 885
    .local v12, "line":Ljava/lang/String;
    :try_start_0
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, v10, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    .line 886
    .local v13, "summaryCs":Landroid/database/Cursor;
    if-eqz v13, :cond_2

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 887
    const-string/jumbo v0, "syncaction"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 888
    .local v0, "status":I
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v0, v1, :cond_1

    .line 912
    if-eqz v13, :cond_0

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 889
    :cond_0
    return-void

    .line 891
    :cond_1
    :try_start_3
    invoke-virtual {v9, v13, v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V

    .line 892
    .end local v0    # "status":I
    goto/16 :goto_2

    .line 893
    :cond_2
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    move-result-wide v4

    .line 894
    .local v4, "rowId":J
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    move v14, v0

    .line 896
    .local v14, "initSynStatuc":I
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check initial sync status ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "correlationId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    if-ne v14, v0, :cond_5

    .line 898
    iget-object v0, v10, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 901
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v1, v10, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v15, v0

    .line 903
    .local v15, "csMms":Landroid/database/Cursor;
    if-eqz v15, :cond_3

    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 904
    invoke-virtual {v9, v15, v10, v11}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onNmsEventChangedObjRcsBufferDbAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    goto :goto_0

    .line 906
    :cond_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v6, v11

    move-object v7, v12

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleNotificationNmsEventUnavailableUsingCorrId(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 908
    :goto_0
    if-eqz v15, :cond_5

    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 901
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_4

    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v11    # "mIsGoforwardSync":Z
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "summaryCs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .end local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .end local p3    # "notification":Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;
    :cond_4
    :goto_1
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 912
    .end local v4    # "rowId":J
    .end local v14    # "initSynStatuc":I
    .end local v15    # "csMms":Landroid/database/Cursor;
    .restart local v11    # "mIsGoforwardSync":Z
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "summaryCs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .restart local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .restart local p3    # "notification":Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;
    :cond_5
    :goto_2
    if-eqz v13, :cond_6

    :try_start_8
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0

    .line 914
    .end local v13    # "summaryCs":Landroid/database/Cursor;
    :cond_6
    goto :goto_4

    .line 885
    .restart local v13    # "summaryCs":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_7

    :try_start_9
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v11    # "mIsGoforwardSync":Z
    .end local v12    # "line":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .end local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .end local p3    # "notification":Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;
    :cond_7
    :goto_3
    throw v1
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0

    .line 912
    .end local v13    # "summaryCs":Landroid/database/Cursor;
    .restart local v11    # "mIsGoforwardSync":Z
    .restart local v12    # "line":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .restart local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .restart local p3    # "notification":Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null pointer exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_4
    return-void
.end method

.method private handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 5
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    .line 1014
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "line":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1017
    .local v1, "summaryCs":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1018
    const-string/jumbo v2, "syncaction"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1019
    .local v2, "status":I
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v2, v3, :cond_1

    .line 1034
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1020
    :cond_0
    return-void

    .line 1022
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    .line 1023
    .end local v2    # "status":I
    goto :goto_2

    .line 1024
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventDeletedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)J

    .line 1025
    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1026
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloudNotifyDeletedObj MMS RCS CloudUpdate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1028
    .local v2, "csMms":Landroid/database/Cursor;
    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1029
    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onNmsEventDeletedObjBufferDbRcsAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1027
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "summaryCs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    :cond_3
    :goto_0
    throw v3

    .line 1031
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "summaryCs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1034
    .end local v2    # "csMms":Landroid/database/Cursor;
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1035
    .end local v1    # "summaryCs":Landroid/database/Cursor;
    :cond_6
    return-void

    .line 1015
    .restart local v1    # "summaryCs":Landroid/database/Cursor;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_7

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v2
.end method

.method private handleCloudNotifyGsoObject(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V
    .locals 16
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "downloadlist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .param p3, "notification"    # Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;

    .line 685
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v9, 0x0

    .line 686
    .local v9, "mIsGoforwardSync":Z
    iget-object v0, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 688
    .local v10, "line":Ljava/lang/String;
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v0

    .line 690
    .local v11, "summaryCs":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    const-string/jumbo v0, "syncaction"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 692
    .local v0, "status":I
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is found, status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v3, :cond_1

    .line 707
    if-eqz v11, :cond_0

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 694
    :cond_0
    return-void

    .line 696
    :cond_1
    :try_start_3
    const-string v3, "_bufferdbid"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    .line 697
    .local v3, "rowId":J
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is found, rowId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-wide v12, v3

    .end local v0    # "status":I
    goto :goto_0

    .line 700
    .end local v3    # "rowId":J
    :cond_2
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v3, 0x22

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    move-result-wide v3

    .line 701
    .restart local v3    # "rowId":J
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    .line 703
    .local v0, "initSynStatuc":I
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not found, insert to summary DB, rowId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", initSynStatuc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide v12, v3

    .line 705
    .end local v0    # "initSynStatuc":I
    .end local v3    # "rowId":J
    .local v12, "rowId":J
    :goto_0
    move-object/from16 v14, p2

    :try_start_4
    iget-object v0, v14, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v15, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v4, 0x7

    move-object v3, v15

    move-wide v5, v12

    move v7, v9

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 707
    if-eqz v11, :cond_3

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    .line 709
    .end local v11    # "summaryCs":Landroid/database/Cursor;
    :cond_3
    goto :goto_4

    .line 688
    .end local v12    # "rowId":J
    .restart local v11    # "summaryCs":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v14, p2

    :goto_1
    move-object v3, v0

    if-eqz v11, :cond_4

    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v9    # "mIsGoforwardSync":Z
    .end local v10    # "line":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .end local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .end local p3    # "notification":Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;
    :cond_4
    :goto_2
    throw v3
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0

    .line 707
    .end local v11    # "summaryCs":Landroid/database/Cursor;
    .restart local v9    # "mIsGoforwardSync":Z
    .restart local v10    # "line":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .restart local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .restart local p3    # "notification":Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v14, p2

    .line 708
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_3
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null pointer exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_4
    return-void
.end method

.method private handleExistingBufferForDeviceIMDNUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    .locals 0
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;

    .line 605
    return-void
.end method

.method private handleNonExistingBufferForDeviceIMDNUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    .locals 0
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;

    .line 609
    return-void
.end method

.method private handleNotificationNmsEventUnavailableUsingCorrId(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V
    .locals 16
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "downloadlist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .param p3, "summaryrowId"    # J
    .param p5, "isGoforward"    # Z
    .param p6, "line"    # Ljava/lang/String;
    .param p7, "notification"    # Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;

    .line 920
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isNmsEventHasMessageDetail()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 921
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->requiresInterworkingCrossSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 922
    invoke-direct {v0, v1, v9, v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->crossChangedObjectSearchLegacy(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZLcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)I

    move-result v11

    .line 923
    .local v11, "contractTypeFromLegacy":I
    const/4 v3, 0x1

    if-eq v11, v3, :cond_0

    .line 925
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    move-wide/from16 v12, p3

    invoke-virtual {v3, v12, v13, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    goto :goto_0

    .line 926
    :cond_0
    move-wide/from16 v12, p3

    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataType:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->isLongSmsPushNotification(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 927
    iget-object v14, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v15, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v4, 0x7

    move-object v3, v15

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 930
    :cond_1
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    iget v4, v10, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataContractType:I

    iget-object v5, v10, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataType:Ljava/lang/String;

    invoke-direct {v3, v1, v9, v4, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;-><init>(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZILjava/lang/String;)V

    .line 931
    .local v3, "omaobject":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    invoke-direct {v0, v3, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->insertRcsMessageUseNmsEventwithMessageContent(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J

    .line 933
    .end local v3    # "omaobject":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .end local v11    # "contractTypeFromLegacy":I
    :goto_0
    goto :goto_1

    .line 934
    :cond_2
    move-wide/from16 v12, p3

    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    iget v4, v10, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataContractType:I

    iget-object v5, v10, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataType:Ljava/lang/String;

    invoke-direct {v3, v1, v9, v4, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;-><init>(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZILjava/lang/String;)V

    .line 935
    .restart local v3    # "omaobject":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    invoke-direct {v0, v3, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->insertRcsMessageUseNmsEventwithMessageContent(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J

    .line 936
    .end local v3    # "omaobject":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    goto :goto_1

    .line 938
    :cond_3
    move-wide/from16 v12, p3

    iget-object v11, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v14, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v4, 0x7

    move-object v3, v14

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    :goto_1
    return-void
.end method

.method private handleObjectDownloadCrossSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I
    .locals 3
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "isGoforward"    # Z

    .line 233
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleObjectDownloadCrossSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->requiresInterworkingCrossSearch()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->crossObjectSearchLegacy(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I

    move-result v0

    .line 236
    .local v0, "contractTypeFromLegacy":I
    if-eq v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 239
    return v0

    .line 242
    .end local v0    # "contractTypeFromLegacy":I
    :cond_0
    return v1
.end method

.method private handleObjectFtDownloadWithThmbEnabled(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 21
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    .line 90
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/16 v3, -0x1

    .line 91
    .local v3, "bufferDbId":J
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 92
    .local v5, "cs":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 93
    .local v11, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string v0, "_bufferdbid"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    .line 95
    const-string v0, "_id"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 96
    .local v0, "_id":I
    sget-object v6, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleObjectFtDownloadWithThmbEnabled find bufferDB: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " bufferid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " _id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v6, "_bufferdbid=?"

    move-object v12, v6

    .line 99
    .local v12, "selectUpdate":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v13, v7

    .line 100
    .local v13, "selectionArgsUpdate":[Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    move-object v14, v7

    .line 101
    .local v14, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "payloadurl"

    iget-object v8, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v7, "content_type"

    iget-object v8, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v14, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v8, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    iget-object v9, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->handlePayloadParts([Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v7

    move-object v15, v7

    .line 104
    .local v15, "payloadcv":Landroid/content/ContentValues;
    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 105
    sget-object v7, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "payloadcv: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string/jumbo v7, "thumbnail_path"

    invoke-virtual {v15, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v8, "syncaction"

    const-string/jumbo v9, "syncdirection"

    if-eqz v7, :cond_0

    .line 107
    :try_start_2
    new-instance v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v7, v10, v6}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    move-object v6, v7

    .line 108
    .local v6, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-object v7, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    iget-object v7, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v14, v12, v13}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v7, v0, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    .line 112
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->getAppTypeString(I)Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-virtual {v1, v8, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-virtual {v1, v7, v8, v3, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    .line 114
    .end local v6    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    goto :goto_0

    .line 115
    :cond_0
    new-instance v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v6, v7, v10}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    move-object v10, v6

    .line 116
    .local v10, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-object v6, v10, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    iget-object v6, v10, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v14, v12, v13}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    new-instance v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    move-object v8, v6

    .line 120
    .local v8, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v9, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v6, v7

    move-object/from16 v18, v7

    move/from16 v7, v16

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .end local v8    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .local v19, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    move-wide v8, v3

    move-object/from16 v16, v10

    .end local v10    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v16, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    move/from16 v10, v17

    invoke-direct/range {v6 .. v11}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    move-object/from16 v7, v18

    move-object/from16 v6, v20

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    move-object/from16 v7, v19

    .end local v19    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .local v7, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    invoke-interface {v6, v7}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .end local v0    # "_id":I
    .end local v7    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "selectUpdate":Ljava/lang/String;
    .end local v13    # "selectionArgsUpdate":[Ljava/lang/String;
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v15    # "payloadcv":Landroid/content/ContentValues;
    .end local v16    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 127
    .end local v5    # "cs":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 91
    .restart local v5    # "cs":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object v6, v0

    if-eqz v5, :cond_3

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_5
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "bufferDbId":J
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    :cond_3
    :goto_1
    throw v6
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    .line 125
    .end local v5    # "cs":Landroid/database/Cursor;
    .restart local v3    # "bufferDbId":J
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_2
    return-wide v3
.end method

.method private insertRcsMessageUseNmsEventwithMessageContent(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J
    .locals 13
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p2, "mIsGoforwardSync"    # Z

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchOrCreateSession(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "chatId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 75
    const-wide/16 v1, -0x1

    return-wide v1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSMessageToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v1

    .line 78
    .local v1, "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-wide v9, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    .line 79
    .local v9, "rowId":J
    iget v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    .line 80
    iget v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->getAppTypeString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {p0, v4, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2, v9, v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 81
    :cond_1
    iget v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 82
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 83
    .local v2, "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v11, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v12, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v4, 0x1

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    move-object v3, v12

    move-wide v5, v9

    move v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 86
    .end local v2    # "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :cond_2
    :goto_0
    return-wide v9
.end method

.method private isLongSmsPushNotification(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Ljava/lang/String;)Z
    .locals 2
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "dataType"    # Ljava/lang/String;

    .line 944
    const-string v0, "CHAT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->content:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->content:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;->content:Ljava/lang/String;

    .line 948
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    const/4 v0, 0x1

    return v0

    .line 951
    :cond_0
    return v1
.end method

.method private onUpdateFromDeviceIMFT(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 5
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;
    .param p2, "mIsGoforwardSync"    # Z
    .param p3, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 545
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateFromDeviceIMFT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 548
    const/4 v0, 0x0

    .line 550
    .local v0, "cs":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 575
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingRowId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 576
    goto :goto_0

    .line 588
    :pswitch_1
    if-eqz v0, :cond_0

    .line 589
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 573
    :cond_0
    return-void

    .line 561
    :pswitch_2
    :try_start_1
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mChatId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mChatId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 563
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 566
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    .line 567
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingRowId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 569
    goto :goto_0

    .line 558
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingRowId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 559
    goto :goto_0

    .line 555
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 556
    goto :goto_0

    .line 552
    :pswitch_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 553
    nop

    .line 580
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 582
    :cond_3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleExistingBufferForDeviceRCSUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 583
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 584
    :cond_4
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 585
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleNonExistingBufferForDeviceRCSUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :cond_5
    :goto_1
    if-eqz v0, :cond_a

    .line 589
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 588
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    .line 589
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 591
    :cond_6
    throw v1

    .line 592
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_7
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    .line 593
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchBufferNotificationUsingImdn(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 594
    .restart local v0    # "cs":Landroid/database/Cursor;
    if-eqz v0, :cond_8

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 595
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleExistingBufferForDeviceIMDNUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V

    goto :goto_2

    .line 597
    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleNonExistingBufferForDeviceIMDNUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 599
    :goto_2
    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 593
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_9

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    throw v1

    .line 592
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_a
    :goto_4
    nop

    .line 601
    :cond_b
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerRcsDbSessionObserver(Landroid/os/Looper;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1063
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    if-eqz v0, :cond_0

    .line 1064
    return-void

    .line 1066
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;-><init>(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    .line 1067
    const-string v0, "content://com.samsung.rcs.cmstore/chat/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1068
    .local v0, "sessionUpdateUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1069
    return-void
.end method

.method private updateSyncDirection(Landroid/content/ContentValues;Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "flagSet"    # Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .param p3, "date"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;

    .line 148
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "syncaction"

    const-string/jumbo v2, "syncdirection"

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p3}, Lcom/sec/internal/ims/cmstore/utils/Util;->isOver72Hours(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-boolean v0, p2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    iget-object v0, p2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    :cond_1
    :goto_0
    return-void
.end method

.method private updateSyncFlag(IZLjava/lang/String;JLcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;Landroid/content/ContentValues;Z)V
    .locals 13
    .param p1, "_id"    # I
    .param p2, "mIsGoforwardSync"    # Z
    .param p3, "line"    # Ljava/lang/String;
    .param p4, "bufferDbId"    # J
    .param p6, "flagSet"    # Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .param p7, "cv"    # Landroid/content/ContentValues;
    .param p8, "payloadPart"    # Z

    .line 133
    move-object v9, p0

    move v10, p1

    move-object/from16 v11, p6

    if-lez v10, :cond_4

    .line 134
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 135
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p7

    goto :goto_1

    .line 136
    :cond_1
    :goto_0
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v0, p1, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    goto :goto_1

    .line 138
    :cond_2
    move-object/from16 v12, p7

    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteRCSMessageDb(I)I

    .line 142
    :cond_3
    :goto_1
    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    move-wide/from16 v2, p4

    move/from16 v5, p8

    move v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_2

    .line 133
    :cond_4
    move-object/from16 v12, p7

    .line 145
    :goto_2
    return-void
.end method


# virtual methods
.method public handleCloudNotifyGSOChangedObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Lcom/sec/internal/omanetapi/nms/data/Object;)V
    .locals 36
    .param p1, "pobjt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 714
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloudNotifyGSOChangedObj(), objt is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, "subject":Ljava/lang/String;
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1b

    aget-object v7, v3, v6

    .line 717
    .local v7, "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v9, v8

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_0

    aget-object v11, v8, v10

    .line 718
    .local v11, "value":Ljava/lang/String;
    sget-object v12, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attribute key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", value: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    .end local v11    # "value":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 720
    :cond_0
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string/jumbo v9, "subject"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 721
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v0, v8, v5

    move-object v8, v0

    goto :goto_2

    .line 720
    :cond_1
    move-object v8, v0

    .line 723
    .end local v0    # "subject":Ljava/lang/String;
    .local v8, "subject":Ljava/lang/String;
    :goto_2
    iget-object v0, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v10, "TextContent"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 725
    iget-object v0, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v10, v0

    move v11, v5

    :goto_3
    if-ge v11, v10, :cond_19

    aget-object v12, v0, v11

    .line 726
    .local v12, "value":Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/internal/omanetapi/nms/XmlParser;->parseGroupState(Ljava/lang/String;)Lcom/sec/internal/omanetapi/nms/data/GroupState;

    move-result-object v13

    .line 727
    .local v13, "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    sget-object v14, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GroupState after xmlParser: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/sec/internal/omanetapi/nms/data/GroupState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iput-object v8, v13, Lcom/sec/internal/omanetapi/nms/data/GroupState;->subject:Ljava/lang/String;

    .line 730
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 731
    .local v5, "cv":Landroid/content/ContentValues;
    iget-object v14, v13, Lcom/sec/internal/omanetapi/nms/data/GroupState;->group_type:Ljava/lang/String;

    const-string/jumbo v15, "open"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "chat_type"

    if-eqz v14, :cond_2

    .line 732
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v16, v0

    goto :goto_4

    .line 734
    :cond_2
    move-object/from16 v16, v0

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 736
    :goto_4
    iget-object v0, v13, Lcom/sec/internal/omanetapi/nms/data/GroupState;->subject:Ljava/lang/String;

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, v13, Lcom/sec/internal/omanetapi/nms/data/GroupState;->lastfocussessionid:Ljava/lang/String;

    const-string/jumbo v14, "session_uri"

    invoke-virtual {v5, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const/4 v15, 0x0

    .line 741
    .local v15, "chatId":Ljava/lang/String;
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryAllSession()Landroid/database/Cursor;

    move-result-object v2

    .line 742
    .local v2, "sc":Landroid/database/Cursor;
    if-nez v2, :cond_4

    .line 765
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v29, v10

    move/from16 v24, v11

    goto/16 :goto_13

    .line 745
    :cond_4
    const/4 v0, -0x1

    .line 746
    .local v0, "index":I
    move/from16 v17, v0

    .end local v0    # "index":I
    .local v17, "index":I
    :try_start_0
    iget-object v0, v13, Lcom/sec/internal/omanetapi/nms/data/GroupState;->lastfocussessionid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-eqz v0, :cond_5

    .line 747
    :try_start_1
    iget-object v0, v13, Lcom/sec/internal/omanetapi/nms/data/GroupState;->lastfocussessionid:Ljava/lang/String;

    move-object/from16 v18, v3

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v17    # "index":I
    .restart local v0    # "index":I
    goto :goto_5

    .line 741
    .end local v0    # "index":I
    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v27, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v30, v12

    move-object v4, v13

    goto/16 :goto_14

    .line 746
    .restart local v17    # "index":I
    :cond_5
    move-object/from16 v18, v3

    move/from16 v0, v17

    .line 749
    .end local v17    # "index":I
    .restart local v0    # "index":I
    :goto_5
    const/4 v3, 0x0

    .line 750
    .local v3, "subString":Ljava/lang/String;
    if-lez v0, :cond_16

    .line 751
    move-object/from16 v17, v3

    .end local v3    # "subString":Ljava/lang/String;
    .local v17, "subString":Ljava/lang/String;
    :try_start_2
    iget-object v3, v13, Lcom/sec/internal/omanetapi/nms/data/GroupState;->lastfocussessionid:Ljava/lang/String;

    move/from16 v19, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 755
    .end local v17    # "subString":Ljava/lang/String;
    .restart local v3    # "subString":Ljava/lang/String;
    const-string v4, "chat_id"

    if-eqz v2, :cond_8

    .line 756
    :goto_6
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 757
    move/from16 v20, v0

    .end local v0    # "index":I
    .local v20, "index":I
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 758
    .local v0, "suri":Ljava/lang/String;
    move-object/from16 v21, v7

    .end local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .local v21, "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    :try_start_4
    sget-object v7, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v22, v8

    .end local v8    # "subject":Ljava/lang/String;
    .local v22, "subject":Ljava/lang/String;
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v9

    const-string/jumbo v9, "session uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 760
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v15, v7

    .line 761
    goto :goto_7

    .line 763
    .end local v0    # "suri":Ljava/lang/String;
    :cond_6
    move/from16 v0, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    goto :goto_6

    .line 741
    .end local v3    # "subString":Ljava/lang/String;
    .end local v20    # "index":I
    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object/from16 v27, v5

    move-object/from16 v30, v12

    move-object v4, v13

    goto/16 :goto_14

    .end local v22    # "subject":Ljava/lang/String;
    .restart local v8    # "subject":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v22, v8

    move-object v3, v0

    move-object/from16 v27, v5

    move-object/from16 v30, v12

    move-object v4, v13

    .end local v8    # "subject":Ljava/lang/String;
    .restart local v22    # "subject":Ljava/lang/String;
    goto/16 :goto_14

    .line 756
    .end local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v22    # "subject":Ljava/lang/String;
    .local v0, "index":I
    .restart local v3    # "subString":Ljava/lang/String;
    .restart local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v8    # "subject":Ljava/lang/String;
    :cond_7
    move/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    .end local v0    # "index":I
    .end local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v8    # "subject":Ljava/lang/String;
    .restart local v20    # "index":I
    .restart local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v22    # "subject":Ljava/lang/String;
    goto :goto_7

    .line 741
    .end local v3    # "subString":Ljava/lang/String;
    .end local v20    # "index":I
    .end local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v22    # "subject":Ljava/lang/String;
    .restart local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v8    # "subject":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object v3, v0

    move-object/from16 v27, v5

    move-object/from16 v30, v12

    move-object v4, v13

    .end local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v8    # "subject":Ljava/lang/String;
    .restart local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v22    # "subject":Ljava/lang/String;
    goto/16 :goto_14

    .line 755
    .end local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v22    # "subject":Ljava/lang/String;
    .restart local v0    # "index":I
    .restart local v3    # "subString":Ljava/lang/String;
    .restart local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v8    # "subject":Ljava/lang/String;
    :cond_8
    move/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    .line 765
    .end local v0    # "index":I
    .end local v3    # "subString":Ljava/lang/String;
    .end local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v8    # "subject":Ljava/lang/String;
    .restart local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v22    # "subject":Ljava/lang/String;
    :goto_7
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 766
    .end local v2    # "sc":Landroid/database/Cursor;
    :cond_9
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chat id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    if-eqz v15, :cond_15

    .line 770
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v15, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateSessionBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 771
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v15, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSSessionDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 772
    invoke-virtual {v5, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const/16 v0, 0xa

    invoke-virtual {v1, v5, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->notifyMsgAppFetchBuffer(Landroid/content/ContentValues;I)V

    .line 778
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 779
    .local v2, "cs":Landroid/database/Cursor;
    const-string/jumbo v0, "uri"

    const-string v3, "Administrator"

    const-string v7, "alias"

    const-string/jumbo v8, "type"

    if-eqz v2, :cond_12

    .line 780
    :goto_8
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 781
    new-instance v9, Lcom/sec/internal/omanetapi/nms/data/Part;

    invoke-direct {v9}, Lcom/sec/internal/omanetapi/nms/data/Part;-><init>()V

    .line 782
    .local v9, "par":Lcom/sec/internal/omanetapi/nms/data/Part;
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/sec/internal/omanetapi/nms/data/Part;->name:Ljava/lang/String;

    .line 783
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    .line 784
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    .line 785
    iget-object v14, v9, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-static {v14}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 786
    .local v14, "telLine":Ljava/lang/String;
    invoke-static {v14}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    move-object/from16 v20, v17

    .line 787
    .local v20, "line":Ljava/lang/String;
    const/16 v17, 0x0

    .line 788
    .local v17, "isExist":Z
    const-wide/16 v24, 0x0

    .line 789
    .local v24, "_id":J
    const/16 v26, 0x0

    .line 790
    .local v26, "tempPart":Lcom/sec/internal/omanetapi/nms/data/Part;
    move-object/from16 v27, v5

    .end local v5    # "cv":Landroid/content/ContentValues;
    .local v27, "cv":Landroid/content/ContentValues;
    :try_start_7
    iget-object v5, v13, Lcom/sec/internal/omanetapi/nms/data/GroupState;->participantList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    move/from16 v29, v10

    const-string v10, "_id"

    if-eqz v28, :cond_b

    :try_start_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/sec/internal/omanetapi/nms/data/Part;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v30, v28

    .line 791
    .local v30, "participant":Lcom/sec/internal/omanetapi/nms/data/Part;
    move-object/from16 v28, v5

    move-object/from16 v5, v30

    move-object/from16 v30, v12

    .end local v12    # "value":Ljava/lang/String;
    .local v5, "participant":Lcom/sec/internal/omanetapi/nms/data/Part;
    .local v30, "value":Ljava/lang/String;
    :try_start_9
    iget-object v12, v5, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-static {v12}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 792
    .local v12, "telUri":Ljava/lang/String;
    move/from16 v31, v6

    move-object/from16 v6, v20

    .end local v20    # "line":Ljava/lang/String;
    .local v6, "line":Ljava/lang/String;
    invoke-virtual {v12, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 793
    const/16 v17, 0x1

    .line 794
    move-object/from16 v20, v12

    .end local v12    # "telUri":Ljava/lang/String;
    .local v20, "telUri":Ljava/lang/String;
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v24, v32

    .line 795
    move-object/from16 v26, v5

    .line 796
    iget-object v12, v13, Lcom/sec/internal/omanetapi/nms/data/GroupState;->participantList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 797
    move/from16 v5, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v26

    move-wide/from16 v34, v24

    move/from16 v24, v11

    move-wide/from16 v11, v34

    goto :goto_a

    .line 792
    .end local v20    # "telUri":Ljava/lang/String;
    .restart local v12    # "telUri":Ljava/lang/String;
    :cond_a
    move-object/from16 v20, v12

    .line 799
    .end local v5    # "participant":Lcom/sec/internal/omanetapi/nms/data/Part;
    .end local v12    # "telUri":Ljava/lang/String;
    move-object/from16 v20, v6

    move-object/from16 v5, v28

    move/from16 v10, v29

    move-object/from16 v12, v30

    move/from16 v6, v31

    goto :goto_9

    .line 778
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "par":Lcom/sec/internal/omanetapi/nms/data/Part;
    .end local v14    # "telLine":Ljava/lang/String;
    .end local v17    # "isExist":Z
    .end local v24    # "_id":J
    .end local v26    # "tempPart":Lcom/sec/internal/omanetapi/nms/data/Part;
    :catchall_4
    move-exception v0

    move-object v3, v0

    move-object/from16 v26, v13

    goto/16 :goto_e

    .end local v30    # "value":Ljava/lang/String;
    .local v12, "value":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v30, v12

    move-object v3, v0

    move-object/from16 v26, v13

    .end local v12    # "value":Ljava/lang/String;
    .restart local v30    # "value":Ljava/lang/String;
    goto/16 :goto_e

    .line 790
    .end local v30    # "value":Ljava/lang/String;
    .restart local v9    # "par":Lcom/sec/internal/omanetapi/nms/data/Part;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v14    # "telLine":Ljava/lang/String;
    .restart local v17    # "isExist":Z
    .local v20, "line":Ljava/lang/String;
    .restart local v24    # "_id":J
    .restart local v26    # "tempPart":Lcom/sec/internal/omanetapi/nms/data/Part;
    :cond_b
    move/from16 v31, v6

    move-object/from16 v30, v12

    move-object/from16 v6, v20

    .end local v12    # "value":Ljava/lang/String;
    .end local v20    # "line":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v30    # "value":Ljava/lang/String;
    move/from16 v5, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v26

    move-wide/from16 v34, v24

    move/from16 v24, v11

    move-wide/from16 v11, v34

    .line 801
    .end local v17    # "isExist":Z
    .end local v24    # "_id":J
    .end local v26    # "tempPart":Lcom/sec/internal/omanetapi/nms/data/Part;
    .local v0, "tempPart":Lcom/sec/internal/omanetapi/nms/data/Part;
    .local v5, "isExist":Z
    .local v11, "_id":J
    :goto_a
    move-object/from16 v25, v4

    :try_start_a
    sget-object v4, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object/from16 v26, v13

    .end local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .local v26, "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    :try_start_b
    const-string v13, "Participant: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/internal/omanetapi/nms/data/Part;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", telLine = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", line = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "isExist: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", tempPart: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_c

    .line 803
    invoke-virtual {v0}, Lcom/sec/internal/omanetapi/nms/data/Part;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    :cond_c
    const-string v13, ""

    :goto_b
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 801
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    if-nez v5, :cond_d

    .line 806
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v10, v32

    .line 807
    .end local v11    # "_id":J
    .local v10, "_id":J
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v4, v10, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteParticipantsUsingRowId(J)I

    .line 809
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v7, v9, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-virtual {v4, v7, v15}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteParticipantsFromBufferDb(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 812
    .end local v10    # "_id":J
    .restart local v11    # "_id":J
    :cond_d
    if-eqz v0, :cond_f

    .line 813
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 814
    .local v4, "updateCv":Landroid/content/ContentValues;
    iget-object v7, v0, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    if-eqz v7, :cond_e

    iget-object v7, v0, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v0, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 815
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 814
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 816
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_c

    .line 818
    :cond_e
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    :goto_c
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v7, v11, v12, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSParticipantsDb(JLandroid/content/ContentValues;)I

    .line 823
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v10, v9, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-virtual {v7, v10, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateParticipantsBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 826
    .end local v0    # "tempPart":Lcom/sec/internal/omanetapi/nms/data/Part;
    .end local v4    # "updateCv":Landroid/content/ContentValues;
    .end local v5    # "isExist":Z
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "par":Lcom/sec/internal/omanetapi/nms/data/Part;
    .end local v11    # "_id":J
    .end local v14    # "telLine":Ljava/lang/String;
    :cond_f
    :goto_d
    move-object/from16 v0, v17

    move-object/from16 v7, v20

    move/from16 v11, v24

    move-object/from16 v4, v25

    move-object/from16 v13, v26

    move-object/from16 v5, v27

    move/from16 v10, v29

    move-object/from16 v12, v30

    move/from16 v6, v31

    goto/16 :goto_8

    .line 778
    :catchall_6
    move-exception v0

    move-object v3, v0

    goto :goto_e

    .end local v26    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    :catchall_7
    move-exception v0

    move-object/from16 v26, v13

    move-object v3, v0

    .end local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v26    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    goto :goto_e

    .end local v26    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .end local v30    # "value":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    :catchall_8
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v26, v13

    move-object v3, v0

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v26    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v30    # "value":Ljava/lang/String;
    goto :goto_e

    .line 780
    .end local v26    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .end local v27    # "cv":Landroid/content/ContentValues;
    .end local v30    # "value":Ljava/lang/String;
    .local v5, "cv":Landroid/content/ContentValues;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    :cond_10
    move-object/from16 v17, v0

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    move/from16 v31, v6

    move-object/from16 v20, v7

    move/from16 v29, v10

    move/from16 v24, v11

    move-object/from16 v30, v12

    move-object/from16 v26, v13

    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v26    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v27    # "cv":Landroid/content/ContentValues;
    .restart local v30    # "value":Ljava/lang/String;
    goto :goto_10

    .line 778
    .end local v26    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .end local v27    # "cv":Landroid/content/ContentValues;
    .end local v30    # "value":Ljava/lang/String;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    :catchall_9
    move-exception v0

    move-object/from16 v27, v5

    move-object/from16 v30, v12

    move-object/from16 v26, v13

    move-object v3, v0

    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v26    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v27    # "cv":Landroid/content/ContentValues;
    .restart local v30    # "value":Ljava/lang/String;
    :goto_e
    if-eqz v2, :cond_11

    :try_start_c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_f

    :catchall_a
    move-exception v0

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_f
    throw v3

    .line 779
    .end local v26    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .end local v27    # "cv":Landroid/content/ContentValues;
    .end local v30    # "value":Ljava/lang/String;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    :cond_12
    move-object/from16 v17, v0

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    move/from16 v31, v6

    move-object/from16 v20, v7

    move/from16 v29, v10

    move/from16 v24, v11

    move-object/from16 v30, v12

    move-object/from16 v26, v13

    .line 828
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v26    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v27    # "cv":Landroid/content/ContentValues;
    .restart local v30    # "value":Ljava/lang/String;
    :goto_10
    if-eqz v2, :cond_13

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 829
    .end local v2    # "cs":Landroid/database/Cursor;
    :cond_13
    move-object/from16 v4, v26

    .end local v26    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .local v4, "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    iget-object v0, v4, Lcom/sec/internal/omanetapi/nms/data/GroupState;->participantList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/omanetapi/nms/data/Part;

    .line 831
    .local v2, "participant":Lcom/sec/internal/omanetapi/nms/data/Part;
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insert participant : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/omanetapi/nms/data/Part;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 833
    .local v5, "addCv":Landroid/content/ContentValues;
    iget-object v6, v2, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    const-string/jumbo v7, "status"

    if-eqz v6, :cond_14

    iget-object v6, v2, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 834
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 835
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_12

    .line 837
    :cond_14
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 838
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 840
    :goto_12
    iget-object v6, v2, Lcom/sec/internal/omanetapi/nms/data/Part;->name:Ljava/lang/String;

    move-object/from16 v7, v20

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    move-object/from16 v6, v25

    invoke-virtual {v5, v6, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v9, v2, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 843
    .local v9, "tline":Ljava/lang/String;
    move-object/from16 v10, v17

    invoke-virtual {v5, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v11, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSParticipantsDb(Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 846
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v12, 0x2

    invoke-virtual {v11, v12, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    .line 847
    .end local v2    # "participant":Lcom/sec/internal/omanetapi/nms/data/Part;
    .end local v5    # "addCv":Landroid/content/ContentValues;
    .end local v9    # "tline":Ljava/lang/String;
    goto/16 :goto_11

    .line 768
    .end local v4    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .end local v27    # "cv":Landroid/content/ContentValues;
    .end local v30    # "value":Ljava/lang/String;
    .local v5, "cv":Landroid/content/ContentValues;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    :cond_15
    move-object/from16 v27, v5

    move/from16 v31, v6

    move/from16 v29, v10

    move/from16 v24, v11

    move-object/from16 v30, v12

    move-object v4, v13

    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v4    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v27    # "cv":Landroid/content/ContentValues;
    .restart local v30    # "value":Ljava/lang/String;
    goto :goto_13

    .line 765
    .end local v4    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .end local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v22    # "subject":Ljava/lang/String;
    .end local v27    # "cv":Landroid/content/ContentValues;
    .end local v30    # "value":Ljava/lang/String;
    .local v0, "index":I
    .local v2, "sc":Landroid/database/Cursor;
    .restart local v3    # "subString":Ljava/lang/String;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v8    # "subject":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    :cond_16
    move/from16 v20, v0

    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object/from16 v27, v5

    move/from16 v31, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v29, v10

    move/from16 v24, v11

    move-object/from16 v30, v12

    move-object v4, v13

    .end local v0    # "index":I
    .end local v3    # "subString":Ljava/lang/String;
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v4    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .local v17, "subString":Ljava/lang/String;
    .local v20, "index":I
    .restart local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v22    # "subject":Ljava/lang/String;
    .restart local v27    # "cv":Landroid/content/ContentValues;
    .restart local v30    # "value":Ljava/lang/String;
    if-eqz v2, :cond_17

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 725
    .end local v2    # "sc":Landroid/database/Cursor;
    .end local v4    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .end local v15    # "chatId":Ljava/lang/String;
    .end local v17    # "subString":Ljava/lang/String;
    .end local v20    # "index":I
    .end local v27    # "cv":Landroid/content/ContentValues;
    .end local v30    # "value":Ljava/lang/String;
    :cond_17
    :goto_13
    add-int/lit8 v11, v24, 0x1

    move-object/from16 v2, p2

    move-object/from16 v0, v16

    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move/from16 v10, v29

    move/from16 v6, v31

    const/4 v5, 0x0

    goto/16 :goto_3

    .line 741
    .end local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v22    # "subject":Ljava/lang/String;
    .restart local v2    # "sc":Landroid/database/Cursor;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v8    # "subject":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v15    # "chatId":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object/from16 v27, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v30, v12

    move-object v4, v13

    move-object v3, v0

    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v4    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .restart local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v22    # "subject":Ljava/lang/String;
    .restart local v27    # "cv":Landroid/content/ContentValues;
    .restart local v30    # "value":Ljava/lang/String;
    :goto_14
    if-eqz v2, :cond_18

    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    goto :goto_15

    :catchall_c
    move-exception v0

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_15
    throw v3

    .line 725
    .end local v2    # "sc":Landroid/database/Cursor;
    .end local v4    # "gs":Lcom/sec/internal/omanetapi/nms/data/GroupState;
    .end local v15    # "chatId":Ljava/lang/String;
    .end local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v22    # "subject":Ljava/lang/String;
    .end local v27    # "cv":Landroid/content/ContentValues;
    .end local v30    # "value":Ljava/lang/String;
    .restart local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v8    # "subject":Ljava/lang/String;
    :cond_19
    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    .end local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v8    # "subject":Ljava/lang/String;
    .restart local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v22    # "subject":Ljava/lang/String;
    goto :goto_16

    .line 723
    .end local v21    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v22    # "subject":Ljava/lang/String;
    .restart local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .restart local v8    # "subject":Ljava/lang/String;
    :cond_1a
    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    .line 716
    .end local v7    # "att":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v8    # "subject":Ljava/lang/String;
    .restart local v22    # "subject":Ljava/lang/String;
    :goto_16
    add-int/lit8 v6, v31, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v0, v22

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 851
    .end local v22    # "subject":Ljava/lang/String;
    .local v0, "subject":Ljava/lang/String;
    :cond_1b
    return-void
.end method

.method public handleDownLoadMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 4
    .param p1, "paramOMAObj"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "isSuccess"    # Z

    .line 538
    if-nez p2, :cond_0

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->OBJECT_NOT_FOUND:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->setMsgDeleted(IJ)V

    .line 541
    :cond_0
    return-void
.end method

.method public handleExistingBufferForDeviceRCSUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 22
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;
    .param p3, "mIsGoforwardSync"    # Z
    .param p4, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 475
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExistingBufferForDeviceRCSUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v13, v0

    .line 477
    .local v13, "cv":Landroid/content/ContentValues;
    const-string/jumbo v0, "syncaction"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v14

    .line 478
    .local v14, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    const-string/jumbo v1, "syncdirection"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v15

    .line 479
    .local v15, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v2, "linenum"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 480
    .local v16, "line":Ljava/lang/String;
    const-string v2, "_bufferdbid"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 481
    .local v17, "bufferDbId":J
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mDbTableContractIndex:I

    iget-object v8, v12, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    move-wide/from16 v4, v17

    move-object v6, v15

    move-object v7, v14

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v9

    .line 482
    .local v9, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-object v2, v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 484
    iget-wide v0, v12, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 485
    const-string v0, "is_filetransfer"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v8, v0

    .line 486
    .local v8, "isFt":Z
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string/jumbo v0, "thumbnail_path"

    if-eqz v8, :cond_2

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v4, v12, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 488
    const-string v3, "file_path"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "filepath":Ljava/lang/String;
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, "thumbpath":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filepath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , thumbpath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 492
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 494
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 497
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 498
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .local v5, "thumbfile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 500
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 504
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "thumbpath":Ljava/lang/String;
    .end local v5    # "thumbfile":Ljava/io/File;
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Received:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v4, v12, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    .line 505
    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v8, :cond_5

    .line 507
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v4, v12, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryIMFTUsingRowId(J)Landroid/database/Cursor;

    move-result-object v3

    .line 508
    .local v3, "rcsCs":Landroid/database/Cursor;
    if-eqz v3, :cond_4

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 509
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 507
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
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

    .line 511
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 513
    .end local v3    # "rcsCs":Landroid/database/Cursor;
    :cond_5
    const-string v0, "_bufferdbid=?"

    .line 514
    .local v0, "select":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v7, v2

    .line 515
    .local v7, "selectionArgs":[Ljava/lang/String;
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget v2, v12, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    invoke-virtual {v1, v2, v13, v0, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 516
    iget-boolean v1, v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_6

    .line 517
    iget v5, v12, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide/from16 v3, v17

    move v6, v8

    move-object/from16 v19, v7

    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .local v19, "selectionArgs":[Ljava/lang/String;
    move/from16 v7, p3

    move/from16 v20, v8

    .end local v8    # "isFt":Z
    .local v20, "isFt":Z
    move-object/from16 v8, v16

    move-object/from16 v21, v9

    .end local v9    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v21, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    move-object/from16 v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_3

    .line 516
    .end local v19    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "isFt":Z
    .end local v21    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    .restart local v8    # "isFt":Z
    .restart local v9    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :cond_6
    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v9

    .line 519
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "isFt":Z
    .end local v9    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v19    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "isFt":Z
    .restart local v21    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :goto_3
    return-void
.end method

.method public handleNonExistingBufferForDeviceRCSUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    .locals 6
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;

    .line 522
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNonExistingBufferForDeviceRCSUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryIMFTUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 524
    .local v0, "rcsCs":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 526
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "syncdirection"

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const-string/jumbo v2, "syncaction"

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToRCSMessagesBufferDB(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 529
    .local v2, "rowId":J
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 530
    sget-object v4, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string v5, "handleNonExistingBufferForDeviceRCSUpdate: insert RCS Buffer DB error or meet blocked number!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 523
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "rowId":J
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

    .line 533
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 534
    .end local v0    # "rcsCs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method public handleNormalSyncObjectRcsImdnDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 12
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    .line 246
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNormalSyncObjectRcsImdnDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-wide/16 v0, -0x1

    .line 248
    .local v0, "rowId":J
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "sendUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchBufferNotificationUsingImdnAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 250
    .local v3, "cs":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    const-string v4, "_bufferdbid"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    .line 252
    .local v4, "bufferDbId":J
    const-string v6, "_bufferdbid=?"

    .line 253
    .local v6, "selectUpdate":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 254
    .local v7, "selectionArgsUpdate":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 255
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v9, "lastmodseq"

    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    const-string/jumbo v9, "res_url"

    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v9, "parentfolder"

    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string/jumbo v9, "path"

    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v9, "imdn_id"

    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v9, "syncaction"

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string/jumbo v9, "syncdirection"

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string/jumbo v9, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    const-string v9, "displayed"

    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v10, "status"

    if-eqz v9, :cond_0

    .line 264
    :try_start_1
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 266
    :cond_0
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    :goto_0
    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/16 v10, 0xd

    invoke-virtual {v9, v10, v8, v6, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 269
    nop

    .end local v4    # "bufferDbId":J
    .end local v6    # "selectUpdate":Ljava/lang/String;
    .end local v7    # "selectionArgsUpdate":[Ljava/lang/String;
    .end local v8    # "cv":Landroid/content/ContentValues;
    goto :goto_1

    .line 270
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSimdnToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 273
    .end local v3    # "cs":Landroid/database/Cursor;
    :cond_2
    return-wide v0

    .line 249
    .restart local v3    # "cs":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v4
.end method

.method public handleNormalSyncObjectRcsMessageDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J
    .locals 26
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p2, "mIsGoforwardSync"    # Z

    .line 161
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNormalSyncObjectRcsMessageDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isThumbNailEnabledForRcsFT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 164
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleObjectFtDownloadWithThmbEnabled(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    move-result-wide v0

    return-wide v0

    .line 166
    :cond_0
    const-wide/16 v12, -0x1

    .line 167
    .local v12, "rowId":J
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 168
    .local v14, "line":Ljava/lang/String;
    :try_start_0
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v15, v0

    .line 169
    .local v15, "cs":Landroid/database/Cursor;
    const-wide/16 v0, -0x1

    .line 170
    .local v0, "bufferDbId":J
    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz v15, :cond_4

    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    const-string v2, "_bufferdbid"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v5, v2

    .line 172
    .end local v0    # "bufferDbId":J
    .local v5, "bufferDbId":J
    const-string v0, "_id"

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 173
    .local v2, "_id":I
    const-string/jumbo v0, "syncaction"

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v0

    .line 174
    .local v0, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    const-string/jumbo v1, "syncdirection"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v1

    .line 175
    .local v1, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v3, "_bufferdbid=?"

    move-object v7, v3

    .line 176
    .local v7, "selectUpdate":Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    move-object v4, v3

    .line 177
    .local v4, "selectionArgsUpdate":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v8, "lastmodseq"

    iget-object v9, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    const-string/jumbo v8, "res_url"

    iget-object v9, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v8, "parentfolder"

    iget-object v9, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v8, "path"

    iget-object v9, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v8, "content_type"

    iget-object v9, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v8, "status"

    .line 184
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 183
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 185
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v9

    if-eq v8, v9, :cond_2

    const-string v8, "ft_status"

    .line 186
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 187
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v9

    if-ne v8, v9, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v24, v1

    goto :goto_1

    .line 188
    :cond_2
    :goto_0
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object v0, v8

    .line 189
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-object v1, v8

    move-object/from16 v24, v1

    .line 191
    .end local v1    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .local v24, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    :goto_1
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v8, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mDbTableContractIndex:I

    iget-object v9, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v16, v1

    move/from16 v17, v8

    move-wide/from16 v18, v5

    move-object/from16 v20, v24

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    invoke-virtual/range {v16 .. v22}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v1

    move-object v9, v1

    .line 193
    .local v9, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iget-object v8, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-direct {v10, v3, v9, v1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->updateSyncDirection(Landroid/content/ContentValues;Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v11, v3, v7, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageInBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    if-eqz v1, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v17, v3

    .end local v3    # "cv":Landroid/content/ContentValues;
    .local v17, "cv":Landroid/content/ContentValues;
    move/from16 v3, p2

    move-object/from16 v18, v4

    .end local v4    # "selectionArgsUpdate":[Ljava/lang/String;
    .local v18, "selectionArgsUpdate":[Ljava/lang/String;
    move-object v4, v14

    move-wide/from16 v19, v5

    .end local v5    # "bufferDbId":J
    .local v19, "bufferDbId":J
    move-object/from16 v21, v7

    .end local v7    # "selectUpdate":Ljava/lang/String;
    .local v21, "selectUpdate":Ljava/lang/String;
    move-object v7, v9

    move-object/from16 v22, v0

    const/4 v0, 0x1

    .end local v0    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .local v22, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    move-object/from16 v8, v17

    move-object/from16 v23, v9

    .end local v9    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v23, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->updateSyncFlag(IZLjava/lang/String;JLcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;Landroid/content/ContentValues;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    .end local v2    # "_id":I
    .end local v17    # "cv":Landroid/content/ContentValues;
    .end local v18    # "selectionArgsUpdate":[Ljava/lang/String;
    .end local v21    # "selectUpdate":Ljava/lang/String;
    .end local v22    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .end local v23    # "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v24    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    move/from16 v9, p2

    move-wide/from16 v0, v19

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 168
    .end local v19    # "bufferDbId":J
    :catchall_0
    move-exception v0

    move/from16 v9, p2

    goto/16 :goto_6

    .line 170
    .local v0, "bufferDbId":J
    :cond_4
    move-wide v1, v0

    move v0, v8

    .line 197
    .end local v0    # "bufferDbId":J
    .local v1, "bufferDbId":J
    move/from16 v9, p2

    :try_start_2
    invoke-direct {v10, v11, v14, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleObjectDownloadCrossSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I

    move-result v3

    .line 198
    .local v3, "contractTypeFromLegacy":I
    sget-object v4, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNormalSyncObjectRcsMessageDownload: RCS not foundcontractTypeFromLegacy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    const-wide/16 v4, -0x1

    if-eq v3, v0, :cond_6

    .line 200
    nop

    .line 225
    if-eqz v15, :cond_5

    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 200
    :cond_5
    return-wide v4

    .line 202
    :cond_6
    :try_start_4
    iget-object v6, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v6, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchOrCreateSession(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 203
    .local v6, "chatId":Ljava/lang/String;
    if-nez v6, :cond_8

    .line 204
    nop

    .line 225
    if-eqz v15, :cond_7

    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    .line 204
    :cond_7
    return-wide v4

    .line 206
    :cond_8
    :try_start_6
    iget-object v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v6, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSMessageToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v4

    .line 207
    .local v4, "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-wide v7, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    move-wide v1, v7

    .line 208
    iget-object v7, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v7, v11, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 210
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->alwaysInsertMsgWhenNonExist()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 211
    iget v7, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {v10, v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->getAppTypeString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    .line 212
    invoke-virtual {v10, v8, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v16, v1

    .end local v1    # "bufferDbId":J
    .local v16, "bufferDbId":J
    iget-wide v0, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    .line 211
    invoke-virtual {v10, v7, v8, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    .line 210
    .end local v16    # "bufferDbId":J
    .restart local v1    # "bufferDbId":J
    :cond_9
    move-wide/from16 v16, v1

    .line 215
    .end local v1    # "bufferDbId":J
    .end local v3    # "contractTypeFromLegacy":I
    .end local v4    # "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v6    # "chatId":Ljava/lang/String;
    .restart local v16    # "bufferDbId":J
    :goto_3
    move-wide/from16 v0, v16

    .end local v16    # "bufferDbId":J
    .restart local v0    # "bufferDbId":J
    :goto_4
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->isOver72Hours(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 216
    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 217
    iget v2, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {v10, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->getAppTypeString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    const/4 v3, 0x1

    invoke-virtual {v10, v3, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {v10, v2, v3, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5

    .line 220
    :cond_a
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 221
    .local v2, "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v8, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v4, 0x1

    iget-object v5, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    move-object v3, v7

    move-object/from16 v16, v5

    move-wide v5, v0

    move-object/from16 v25, v7

    move/from16 v7, p2

    move-wide/from16 v17, v0

    move-object v0, v8

    .end local v0    # "bufferDbId":J
    .local v17, "bufferDbId":J
    move-object/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 215
    .end local v2    # "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .end local v17    # "bufferDbId":J
    .restart local v0    # "bufferDbId":J
    :cond_b
    move-wide/from16 v17, v0

    .line 225
    .end local v0    # "bufferDbId":J
    :goto_5
    if-eqz v15, :cond_c

    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    .line 227
    .end local v15    # "cs":Landroid/database/Cursor;
    :cond_c
    goto :goto_9

    .line 168
    .restart local v15    # "cs":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    :goto_6
    move-object v1, v0

    if-eqz v15, :cond_d

    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v12    # "rowId":J
    .end local v14    # "line":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .end local p2    # "mIsGoforwardSync":Z
    :cond_d
    :goto_7
    throw v1
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0

    .line 225
    .end local v15    # "cs":Landroid/database/Cursor;
    .restart local v12    # "rowId":J
    .restart local v14    # "line":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .restart local p2    # "mIsGoforwardSync":Z
    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move/from16 v9, p2

    .line 226
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_8
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nullpointer or ArrayIndexOutOfBounds Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_9
    return-wide v12
.end method

.method public handleObjectRCSIMDNCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 14
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    .line 402
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleObjectRCSIMDNCloudSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-wide/16 v0, -0x1

    .line 418
    .local v0, "rowId":J
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "line":Ljava/lang/String;
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "sendUri":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchBufferNotificationUsingImdnAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 421
    .local v4, "cs":Landroid/database/Cursor;
    const/16 v5, 0xd

    if-eqz v4, :cond_4

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 422
    const-string v6, "delivered"

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string/jumbo v7, "status"

    if-eqz v6, :cond_1

    .line 423
    :try_start_1
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v8

    if-ne v6, v8, :cond_1

    .line 424
    sget-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string v6, "delivered comes after displayed, shouldn\'t update"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 425
    nop

    .line 469
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_0
    return-wide v0

    .line 427
    :cond_1
    :try_start_2
    const-string v6, "_bufferdbid"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v8, v6

    .line 428
    .local v8, "id":J
    const-string v6, "_bufferdbid=?"

    .line 429
    .local v6, "selectUpdate":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 430
    .local v10, "selectionArgsUpdate":[Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 431
    .local v11, "cv":Landroid/content/ContentValues;
    const-string v12, "lastmodseq"

    iget-object v13, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 432
    const-string/jumbo v12, "res_url"

    iget-object v13, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string/jumbo v12, "parentfolder"

    iget-object v13, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string/jumbo v12, "path"

    iget-object v13, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string/jumbo v12, "syncaction"

    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    const-string/jumbo v12, "syncdirection"

    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isStoreImdnEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 439
    const-string v12, "displayed"

    iget-object v13, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 440
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 442
    :cond_2
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    :goto_0
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v7, v5, v11, v6, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v12, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v7, v12, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSNotificationUsingImsdId(Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_1

    .line 447
    :cond_3
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v7, v5, v11, v6, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 449
    :goto_1
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v7, p1, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 450
    nop

    .end local v6    # "selectUpdate":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "selectionArgsUpdate":[Ljava/lang/String;
    .end local v11    # "cv":Landroid/content/ContentValues;
    goto :goto_2

    .line 451
    :cond_4
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSimdnToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    .line 452
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v6, p1, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 454
    :goto_2
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 455
    .local v5, "csRcsmessage":Landroid/database/Cursor;
    if-eqz v5, :cond_6

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 456
    const-string v6, "not_displayed_counter"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 457
    .local v6, "notDisplayedCnt":I
    const-string v7, "disposition_notification_status"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 458
    .local v7, "displayStatus":I
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v8, v9, v6, v7, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRcsMessageBufferDbIfNewIMDNReceived(Ljava/lang/String;IILcom/sec/internal/ims/cmstore/params/ParamOMAObject;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 454
    .end local v6    # "notDisplayedCnt":I
    .end local v7    # "displayStatus":I
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_5

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v7

    :try_start_5
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "rowId":J
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "sendUri":Ljava/lang/String;
    .end local v4    # "cs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    :cond_5
    :goto_3
    throw v6

    .line 461
    .restart local v0    # "rowId":J
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "sendUri":Ljava/lang/String;
    .restart local v4    # "cs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 462
    .end local v5    # "csRcsmessage":Landroid/database/Cursor;
    :cond_7
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isStoreImdnEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 463
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRcsDBMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 464
    .local v5, "rcsMessage":Landroid/database/Cursor;
    if-eqz v5, :cond_9

    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 465
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryBufferDbandUpdateRcsMessageDb(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    .line 463
    :catchall_2
    move-exception v6

    if-eqz v5, :cond_8

    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v7

    :try_start_8
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "rowId":J
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "sendUri":Ljava/lang/String;
    .end local v4    # "cs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    :cond_8
    :goto_5
    throw v6

    .line 467
    .restart local v0    # "rowId":J
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "sendUri":Ljava/lang/String;
    .restart local v4    # "cs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    :cond_9
    :goto_6
    if-eqz v5, :cond_a

    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 469
    .end local v5    # "rcsMessage":Landroid/database/Cursor;
    :cond_a
    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 470
    .end local v4    # "cs":Landroid/database/Cursor;
    :cond_b
    return-wide v0

    .line 420
    .restart local v4    # "cs":Landroid/database/Cursor;
    :catchall_4
    move-exception v5

    if-eqz v4, :cond_c

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    throw v5
.end method

.method public handleObjectRCSMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J
    .locals 33
    .param p1, "objt"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .param p2, "mIsGoforwardSync"    # Z

    .line 278
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string/jumbo v0, "status"

    const-string/jumbo v1, "syncdirection"

    const-string/jumbo v2, "syncaction"

    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleObjectRCSMessageCloudSearch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-wide/16 v12, -0x1

    .line 308
    .local v12, "rowId":J
    iget-object v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 309
    .local v14, "line":Ljava/lang/String;
    :try_start_0
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v4, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v3, v4, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v15, v3

    .line 310
    .local v15, "cs":Landroid/database/Cursor;
    const/4 v3, 0x1

    if-eqz v15, :cond_4

    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 311
    const-string v4, "_bufferdbid"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v8, v4

    .line 312
    .local v8, "bufferid":J
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v21

    .line 313
    .local v21, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v20

    .line 314
    .local v20, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v7, v4

    .line 315
    .local v7, "_id":I
    const-string v4, "_bufferdbid=?"

    move-object v6, v4

    .line 316
    .local v6, "selectUpdate":Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    aput-object v5, v4, v3

    move-object v5, v4

    .line 317
    .local v5, "selectionArgsUpdate":[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v4, "cv":Landroid/content/ContentValues;
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v29, v12

    .end local v12    # "rowId":J
    .local v29, "rowId":J
    :try_start_2
    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v3, v12, v13}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 319
    .local v3, "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    const/4 v12, 0x0

    iput-boolean v12, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    .line 322
    iget-object v12, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v12, v13}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 323
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    const/4 v13, 0x1

    invoke-virtual {v3, v13, v0, v12}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->setIsChangedActionAndDirection(ZLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;)V

    .line 324
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteRCSMessageDb(I)I

    move-object v0, v3

    goto :goto_0

    .line 325
    :cond_0
    iget-object v12, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v12, v13}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 326
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    sget-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v13

    if-eq v12, v13, :cond_1

    .line 328
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v0, "disposition_notification_status"

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v7, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    .line 338
    :cond_1
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v12, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mDbTableContractIndex:I

    sget-object v22, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v16, v0

    move/from16 v17, v12

    move-wide/from16 v18, v8

    invoke-virtual/range {v16 .. v22}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v12, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mDbTableContractIndex:I

    sget-object v28, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v22, v0

    move/from16 v23, v12

    move-wide/from16 v24, v8

    move-object/from16 v26, v20

    move-object/from16 v27, v21

    invoke-virtual/range {v22 .. v28}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v0

    move-object v3, v0

    .line 345
    .end local v3    # "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v0, "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    :goto_0
    const-string v3, "lastmodseq"

    iget-object v12, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v4, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    const-string/jumbo v3, "res_url"

    iget-object v12, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v3, "parentfolder"

    iget-object v12, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v3, "path"

    iget-object v12, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 351
    iget-boolean v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v3, :cond_3

    .line 352
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4, v6, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    const/4 v12, 0x1

    const/4 v13, 0x0

    iget-boolean v3, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move-object v2, v0

    move/from16 v18, v3

    move-object/from16 v31, v4

    .end local v4    # "cv":Landroid/content/ContentValues;
    .local v31, "cv":Landroid/content/ContentValues;
    move-wide v3, v8

    move-object/from16 v32, v5

    .end local v5    # "selectionArgsUpdate":[Ljava/lang/String;
    .local v32, "selectionArgsUpdate":[Ljava/lang/String;
    move v5, v12

    move-object v12, v6

    .end local v6    # "selectUpdate":Ljava/lang/String;
    .local v12, "selectUpdate":Ljava/lang/String;
    move v6, v13

    move v13, v7

    .end local v7    # "_id":I
    .local v13, "_id":I
    move/from16 v7, v18

    move-wide/from16 v18, v8

    .end local v8    # "bufferid":J
    .local v18, "bufferid":J
    move-object/from16 v8, v17

    move-object/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 358
    .end local v12    # "selectUpdate":Ljava/lang/String;
    .end local v13    # "_id":I
    .end local v18    # "bufferid":J
    .end local v31    # "cv":Landroid/content/ContentValues;
    .end local v32    # "selectionArgsUpdate":[Ljava/lang/String;
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "selectionArgsUpdate":[Ljava/lang/String;
    .restart local v6    # "selectUpdate":Ljava/lang/String;
    .restart local v7    # "_id":I
    .restart local v8    # "bufferid":J
    :cond_3
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object v12, v6

    move v13, v7

    move-wide/from16 v18, v8

    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "selectionArgsUpdate":[Ljava/lang/String;
    .end local v6    # "selectUpdate":Ljava/lang/String;
    .end local v7    # "_id":I
    .end local v8    # "bufferid":J
    .restart local v12    # "selectUpdate":Ljava/lang/String;
    .restart local v13    # "_id":I
    .restart local v18    # "bufferid":J
    .restart local v31    # "cv":Landroid/content/ContentValues;
    .restart local v32    # "selectionArgsUpdate":[Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "flagsetresult.mIsChanged: false - don\'t update sync action or direction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    move-object/from16 v3, v31

    move-object/from16 v2, v32

    const/4 v4, 0x1

    .end local v31    # "cv":Landroid/content/ContentValues;
    .end local v32    # "selectionArgsUpdate":[Ljava/lang/String;
    .local v2, "selectionArgsUpdate":[Ljava/lang/String;
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-virtual {v1, v4, v3, v12, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    .end local v0    # "flagsetresult":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v2    # "selectionArgsUpdate":[Ljava/lang/String;
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v12    # "selectUpdate":Ljava/lang/String;
    .end local v13    # "_id":I
    .end local v18    # "bufferid":J
    .end local v20    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v21    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :goto_1
    move/from16 v12, p2

    goto/16 :goto_6

    .line 309
    :catchall_0
    move-exception v0

    move/from16 v12, p2

    goto/16 :goto_7

    .end local v29    # "rowId":J
    .local v12, "rowId":J
    :catchall_1
    move-exception v0

    move-wide/from16 v29, v12

    move/from16 v12, p2

    move-object v1, v0

    .end local v12    # "rowId":J
    .restart local v29    # "rowId":J
    goto/16 :goto_8

    .line 310
    .end local v29    # "rowId":J
    .restart local v12    # "rowId":J
    :cond_4
    move-wide/from16 v29, v12

    .line 363
    .end local v12    # "rowId":J
    .restart local v29    # "rowId":J
    move/from16 v12, p2

    :try_start_3
    invoke-direct {v10, v11, v14, v12}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleObjectDownloadCrossSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I

    move-result v0

    move v13, v0

    .line 364
    .local v13, "contractTypeFromLegacy":I
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleObjectRCSCloudSearch: RCS not found: contractTypeFromLegacy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 365
    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    if-eq v13, v2, :cond_6

    .line 366
    nop

    .line 395
    if-eqz v15, :cond_5

    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 366
    :cond_5
    return-wide v0

    .line 368
    :cond_6
    :try_start_5
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchOrCreateSession(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v9, v2

    .line 369
    .local v9, "chatId":Ljava/lang/String;
    if-nez v9, :cond_8

    .line 370
    nop

    .line 395
    if-eqz v15, :cond_7

    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 370
    :cond_7
    return-wide v0

    .line 372
    :cond_8
    :try_start_7
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v9, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSMessageToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v0

    move-object v8, v0

    .line 373
    .local v8, "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-wide v0, v8, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-wide/from16 v16, v0

    .line 374
    .end local v29    # "rowId":J
    .local v16, "rowId":J
    :try_start_8
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 375
    const-wide/16 v0, 0x0

    cmp-long v0, v16, v0

    if-lez v0, :cond_c

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 376
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    goto :goto_3

    .line 377
    :cond_a
    :goto_2
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 378
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, v16

    move/from16 v7, p2

    move-object/from16 v18, v8

    .end local v8    # "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .local v18, "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    move-object v8, v14

    move-object/from16 v19, v9

    .end local v9    # "chatId":Ljava/lang/String;
    .local v19, "chatId":Ljava/lang/String;
    move-object v9, v0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_3

    .line 381
    .end local v18    # "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v19    # "chatId":Ljava/lang/String;
    .restart local v8    # "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v9    # "chatId":Ljava/lang/String;
    :cond_b
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .end local v8    # "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v9    # "chatId":Ljava/lang/String;
    .restart local v18    # "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v19    # "chatId":Ljava/lang/String;
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, v16

    move/from16 v7, p2

    move-object v8, v14

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_3

    .line 375
    .end local v18    # "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v19    # "chatId":Ljava/lang/String;
    .restart local v8    # "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v9    # "chatId":Ljava/lang/String;
    :cond_c
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .line 385
    .end local v8    # "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v9    # "chatId":Ljava/lang/String;
    .restart local v18    # "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .restart local v19    # "chatId":Ljava/lang/String;
    :goto_3
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryImdnBufferDBandUpdateRcsMessageBufferDb(Ljava/lang/String;I)I

    .line 387
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isStoreImdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 388
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRcsDBMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v1, v0

    .line 389
    .local v1, "rcsMessage":Landroid/database/Cursor;
    if-eqz v1, :cond_e

    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 390
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryBufferDbandUpdateRcsMessageDb(Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    .line 388
    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_d

    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "cs":Landroid/database/Cursor;
    .end local v16    # "rowId":J
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .end local p2    # "mIsGoforwardSync":Z
    :cond_d
    :goto_4
    throw v2

    .line 392
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "cs":Landroid/database/Cursor;
    .restart local v16    # "rowId":J
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .restart local p2    # "mIsGoforwardSync":Z
    :cond_e
    :goto_5
    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 395
    .end local v1    # "rcsMessage":Landroid/database/Cursor;
    .end local v13    # "contractTypeFromLegacy":I
    .end local v18    # "result":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v19    # "chatId":Ljava/lang/String;
    :cond_f
    move-wide/from16 v29, v16

    .end local v16    # "rowId":J
    .restart local v29    # "rowId":J
    :goto_6
    if-eqz v15, :cond_10

    :try_start_c
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_0

    .line 397
    .end local v15    # "cs":Landroid/database/Cursor;
    :cond_10
    goto :goto_b

    .line 309
    .end local v29    # "rowId":J
    .restart local v15    # "cs":Landroid/database/Cursor;
    .restart local v16    # "rowId":J
    :catchall_4
    move-exception v0

    move-object v1, v0

    move-wide/from16 v29, v16

    goto :goto_8

    .end local v16    # "rowId":J
    .restart local v29    # "rowId":J
    :catchall_5
    move-exception v0

    :goto_7
    move-object v1, v0

    :goto_8
    if-eqz v15, :cond_11

    :try_start_d
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v14    # "line":Ljava/lang/String;
    .end local v29    # "rowId":J
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .end local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .end local p2    # "mIsGoforwardSync":Z
    :cond_11
    :goto_9
    throw v1
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_0

    .line 395
    .end local v15    # "cs":Landroid/database/Cursor;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v29    # "rowId":J
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
    .restart local p1    # "objt":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    .restart local p2    # "mIsGoforwardSync":Z
    :catch_0
    move-exception v0

    goto :goto_a

    .end local v29    # "rowId":J
    .restart local v12    # "rowId":J
    :catch_1
    move-exception v0

    move-wide/from16 v29, v12

    move/from16 v12, p2

    .line 396
    .end local v12    # "rowId":J
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v29    # "rowId":J
    :goto_a
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nullpointer or ArrayIndexOutOfBoundsException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_b
    return-wide v29
.end method

.method public onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 11
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .param p2, "changelist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 613
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 615
    .local v0, "actionFlag":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 630
    goto :goto_0

    .line 626
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 627
    goto :goto_0

    .line 623
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 624
    goto :goto_0

    .line 620
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 621
    goto :goto_0

    .line 617
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 618
    nop

    .line 634
    :goto_0
    new-instance v10, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;

    iget v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v5, v1

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mChatId:Ljava/lang/String;

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationId:Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    move-object v1, v10

    move-object v3, v0

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .local v1, "imftpara":Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Download:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 639
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onDownloadRequestFromApp(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V

    goto :goto_1

    .line 641
    :cond_5
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onUpdateFromDeviceIMFT(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 643
    :goto_1
    return-void
.end method

.method public onNotificationGSOReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V
    .locals 4
    .param p1, "notification"    # Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;

    .line 665
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationGSOReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 667
    .local v0, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    if-eqz v1, :cond_1

    .line 668
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 669
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v2, v2, v1

    .line 670
    .local v2, "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    if-eqz v3, :cond_0

    .line 672
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    invoke-direct {p0, v3, v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleCloudNotifyGsoObject(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V

    .line 668
    .end local v2    # "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    .end local v1    # "i":I
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationGSOReceived: download list size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 678
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 680
    :cond_2
    return-void
.end method

.method public onNotificationReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V
    .locals 4
    .param p1, "notification"    # Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;

    .line 646
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 648
    .local v0, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    if-eqz v1, :cond_2

    .line 649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 650
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v2, v2, v1

    .line 651
    .local v2, "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    if-eqz v3, :cond_0

    .line 652
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    invoke-direct {p0, v3, v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V

    .line 654
    :cond_0
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-eqz v3, :cond_1

    .line 655
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    .line 649
    .end local v2    # "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    .end local v1    # "i":I
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 660
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 662
    :cond_3
    return-void
.end method
