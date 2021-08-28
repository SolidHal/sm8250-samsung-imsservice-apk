.class public Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "RcsSchedulerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

.field protected final mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

.field protected final mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rule"    # Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;
    .param p3, "builder"    # Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;
    .param p4, "deviceDataListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;
    .param p5, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;
    .param p6, "mmsScheduler"    # Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;
    .param p7, "smsScheduler"    # Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
    .param p8, "looper"    # Landroid/os/Looper;

    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p8

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 70
    new-instance v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-direct {v0, p1, p5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mDbTableContractIndex:I

    .line 72
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    .line 73
    iput-object p7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    .line 74
    return-void
.end method

.method private getPayloadCV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/content/ContentValues;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "thumbnail"    # Ljava/lang/String;
    .param p4, "fileSize"    # J
    .param p6, "cv"    # Landroid/content/ContentValues;

    .line 266
    const-string v0, "file_name"

    invoke-virtual {p6, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "file_size"

    invoke-virtual {p6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "bytes_transf"

    invoke-virtual {p6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    const-string v0, "file_path"

    invoke-virtual {p6, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 271
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 270
    const-string/jumbo v1, "syncdirection"

    invoke-virtual {p6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "syncaction"

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 274
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 273
    invoke-virtual {p6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 276
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 277
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 276
    invoke-virtual {p6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    :goto_0
    return-void
.end method

.method private onNewPartcptsInserted(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 449
    .local v0, "cs":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToRCSParticipantsBufferDB(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 448
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

    .line 452
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 453
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private onNewSessionInserted(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    .line 470
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->querySessionUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 471
    .local v0, "cs":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertSingleSessionToRcsBuffer(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 470
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

    .line 474
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 475
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private setInlineTextCV(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "inlineText"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 255
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 256
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 255
    const-string/jumbo v1, "syncdirection"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 258
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 257
    const-string/jumbo v1, "syncaction"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_filetransfer"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v0, "content_type"

    const-string/jumbo v1, "text/plain"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "body"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method


# virtual methods
.method public cleanAllBufferDB()V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->cleanAllBufferDB()V

    .line 586
    return-void
.end method

.method public deleteRCSBufferDBwithResUrl(Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteRCSBufferDBwithResUrl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertAllSessionToRCSSessionBufferDB(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 581
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertAllToRCSSessionBufferDB(Landroid/database/Cursor;)V

    .line 582
    return-void
.end method

.method public notifyMsgAppDeleteFail(IJLjava/lang/String;)V
    .locals 6
    .param p1, "dbIndex"    # I
    .param p2, "bufferDbId"    # J
    .param p4, "line"    # Ljava/lang/String;

    .line 665
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

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

    .line 666
    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 668
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 669
    .local v0, "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 670
    .local v1, "jsobjct":Lcom/google/gson/JsonObject;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 672
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 673
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 672
    const-string v4, "MessageApp"

    const-string v5, "CHAT"

    invoke-interface {v2, v4, v5, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .end local v0    # "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    .end local v1    # "jsobjct":Lcom/google/gson/JsonObject;
    :cond_0
    return-void
.end method

.method public notifyMsgAppFetchBuffer(Landroid/content/ContentValues;I)V
    .locals 7
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "type"    # I

    .line 524
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 525
    const-string v0, "chat_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "chatId":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 527
    .local v1, "jsonArrayRowIdsSession":Lcom/google/gson/JsonArray;
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 529
    .local v2, "jsobjct":Lcom/google/gson/JsonObject;
    const-string v3, "chatId"

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 532
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMsgAppFetchBuffer, chatId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", jsonArrayRowIdsSession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 534
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 535
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 534
    const-string v5, "MessageApp"

    const-string v6, "SESSION"

    invoke-interface {v3, v5, v6, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .end local v0    # "chatId":Ljava/lang/String;
    .end local v1    # "jsonArrayRowIdsSession":Lcom/google/gson/JsonArray;
    .end local v2    # "jsobjct":Lcom/google/gson/JsonObject;
    :cond_0
    return-void
.end method

.method public notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    .locals 11
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "type"    # I

    .line 478
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 479
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 480
    .local v1, "jsonArrayRowIdsCHAT":Lcom/google/gson/JsonArray;
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 482
    .local v2, "jsonArrayRowIdsFT":Lcom/google/gson/JsonArray;
    :cond_0
    const-string v3, "_bufferdbid"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 483
    .local v3, "bufferDBid":I
    const-string v4, "file_path"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "filepath":Ljava/lang/String;
    nop

    .line 485
    const-string/jumbo v5, "thumbnail_path"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 484
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, "filepaththumbnail":Ljava/lang/String;
    const-string v6, "id"

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v0, :cond_2

    :cond_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v0, :cond_3

    .line 487
    :cond_2
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    .line 488
    .local v7, "jsobjct":Lcom/google/gson/JsonObject;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v2, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 490
    .end local v7    # "jsobjct":Lcom/google/gson/JsonObject;
    goto :goto_0

    .line 491
    :cond_3
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    .line 492
    .restart local v7    # "jsobjct":Lcom/google/gson/JsonObject;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v1, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 497
    .end local v7    # "jsobjct":Lcom/google/gson/JsonObject;
    :goto_0
    sget-object v6, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jsonArrayRowIdsCHAT.size(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",notify message app: CHAT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", jsonArrayRowIdsFT.size(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "notify message app: FT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 497
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    iget v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMaxNumMsgsNotifyAppInIntent:I

    const-string v8, "CHAT"

    const-string v9, "MessageApp"

    if-ne v6, v7, :cond_4

    .line 502
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 503
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v7

    .line 502
    invoke-interface {v6, v9, v8, v7}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v6, Lcom/google/gson/JsonArray;

    invoke-direct {v6}, Lcom/google/gson/JsonArray;-><init>()V

    move-object v1, v6

    .line 506
    :cond_4
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    iget v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMaxNumMsgsNotifyAppInIntent:I

    const-string v10, "FT"

    if-ne v6, v7, :cond_5

    .line 507
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 508
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v7

    .line 507
    invoke-interface {v6, v9, v10, v7}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    new-instance v6, Lcom/google/gson/JsonArray;

    invoke-direct {v6}, Lcom/google/gson/JsonArray;-><init>()V

    move-object v2, v6

    .line 511
    .end local v3    # "bufferDBid":I
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v5    # "filepaththumbnail":Ljava/lang/String;
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 512
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 513
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 514
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 513
    invoke-interface {v0, v9, v8, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_6
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 518
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    invoke-interface {v0, v9, v10, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .end local v1    # "jsonArrayRowIdsCHAT":Lcom/google/gson/JsonArray;
    .end local v2    # "jsonArrayRowIdsFT":Lcom/google/gson/JsonArray;
    :cond_7
    return-void
.end method

.method public onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 1
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "mIsGoforwardSync"    # Z

    .line 599
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 600
    return-void
.end method

.method public onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 2
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "mIsGoforwardSync"    # Z

    .line 603
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 604
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->handleCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;I)V

    .line 607
    return-void
.end method

.method protected onDownloadRequestFromApp(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    .locals 21
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;

    .line 386
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "syncdirection"

    const-string/jumbo v3, "syncaction"

    sget-object v4, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDownloadRequestFromApp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget v4, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 388
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v6, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    .line 389
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 388
    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingRowId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 390
    .local v4, "cs":Landroid/database/Cursor;
    if-eqz v4, :cond_8

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 391
    const-string v6, "is_filetransfer"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v7

    .line 392
    .local v6, "isFt":Z
    :goto_0
    const-string v8, "file_path"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, "filepath":Ljava/lang/String;
    const-string v9, "file_name"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 394
    .local v9, "filename":Ljava/lang/String;
    const-string v10, "_bufferdbid"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 395
    .local v10, "bufferDbId":J
    const/4 v12, 0x0

    .line 396
    .local v12, "isExist":Z
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 397
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 399
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    move v7, v5

    :cond_1
    move v12, v7

    goto :goto_1

    .line 402
    .end local v13    # "file":Ljava/io/File;
    :cond_2
    move v7, v12

    .end local v12    # "isExist":Z
    .local v7, "isExist":Z
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 403
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file already exist, notify message app directly: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget v0, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->getAppTypeString(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    .line 405
    invoke-virtual {v1, v3, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-virtual {v1, v0, v3, v10, v11}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_3
    return-void

    .line 408
    :cond_4
    nop

    .line 410
    :try_start_1
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 409
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v5

    .line 411
    .local v5, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 412
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 411
    invoke-static {v12}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v12

    move-object v14, v12

    .line 414
    .local v14, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v12, v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 415
    invoke-virtual {v12, v14}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 416
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v3, "duplicate download request!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_5
    return-void

    .line 419
    :cond_6
    :try_start_2
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    move-object v15, v12

    .line 420
    .local v15, "cv":Landroid/content/ContentValues;
    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 421
    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 420
    invoke-virtual {v15, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 423
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 422
    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v15, v10, v11, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 425
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 426
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v13, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget v12, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const/16 v16, 0x0

    move-object/from16 v18, v5

    .end local v5    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .local v18, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    move/from16 v17, v12

    move-object v12, v13

    move-object v2, v13

    move/from16 v13, v17

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    .end local v14    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v15    # "cv":Landroid/content/ContentValues;
    .local v19, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .local v20, "cv":Landroid/content/ContentValues;
    move-wide v14, v10

    move-object/from16 v17, v5

    invoke-direct/range {v12 .. v17}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 388
    .end local v0    # "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .end local v6    # "isFt":Z
    .end local v7    # "isExist":Z
    .end local v8    # "filepath":Ljava/lang/String;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "bufferDbId":J
    .end local v18    # "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .end local v19    # "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    .end local v20    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_7

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v2

    .line 429
    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 431
    .end local v4    # "cs":Landroid/database/Cursor;
    :cond_9
    return-void
.end method

.method public onNmsEventChangedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 0
    .param p1, "rcsCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p3, "mIsGoforwardSync"    # Z

    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjRCSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    .line 79
    return-void
.end method

.method public onNmsEventChangedObjRCSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 24
    .param p1, "rcsCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p3, "mIsGoforwardSync"    # Z

    .line 82
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 83
    const-string v0, "_bufferdbid"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 82
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v7, v0

    .line 84
    .local v7, "bufferDbId":J
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    .line 85
    .local v2, "_id":J
    const-string v0, "is_filetransfer"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    .line 86
    .local v5, "isFt":Z
    :goto_0
    nop

    .line 87
    const-string v0, "linenum"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 86
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 88
    .local v19, "line":Ljava/lang/String;
    nop

    .line 89
    const-string/jumbo v0, "syncaction"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 88
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v20

    .line 90
    .local v20, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 91
    const-string/jumbo v1, "syncdirection"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 90
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v21

    .line 92
    .local v21, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    move-object v6, v4

    .line 93
    .local v6, "cv":Landroid/content/ContentValues;
    iget-object v4, v11, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->lastModSeq:Ljava/lang/Long;

    const-string v12, "lastmodseq"

    invoke-virtual {v6, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    iget-object v4, v11, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, "res_url"

    invoke-virtual {v6, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v4, v11, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, "parentfolder"

    invoke-virtual {v6, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v4, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v12, v11, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v4, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v4

    .line 97
    .local v4, "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v12, v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 98
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v13, "status"

    invoke-virtual {v6, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "ft_status"

    invoke-virtual {v6, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    :cond_1
    iget-object v12, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v13, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mDbTableContractIndex:I

    move-wide v14, v7

    move-object/from16 v16, v21

    move-object/from16 v17, v20

    move-object/from16 v18, v4

    invoke-virtual/range {v12 .. v18}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v12

    .line 102
    .local v12, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-boolean v13, v12, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v13, :cond_2

    .line 103
    iget-object v13, v12, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    iget-object v1, v12, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    :cond_2
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v9, v6, v7, v8, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 107
    iget-boolean v0, v12, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    long-to-int v1, v2

    invoke-virtual {v0, v1, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    .line 110
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 111
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v15, v2

    .end local v2    # "_id":J
    .local v15, "_id":J
    move-wide v2, v7

    move-object/from16 v17, v4

    .end local v4    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .local v17, "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    move v4, v13

    move-object v13, v6

    .end local v6    # "cv":Landroid/content/ContentValues;
    .local v13, "cv":Landroid/content/ContentValues;
    move/from16 v6, p3

    move-wide/from16 v22, v7

    .end local v7    # "bufferDbId":J
    .local v22, "bufferDbId":J
    move-object/from16 v7, v19

    move-object v8, v14

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 110
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v15    # "_id":J
    .end local v17    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .end local v22    # "bufferDbId":J
    .restart local v2    # "_id":J
    .restart local v4    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v7    # "bufferDbId":J
    :cond_4
    move-wide v15, v2

    move-object/from16 v17, v4

    move-object v13, v6

    move-wide/from16 v22, v7

    .line 114
    .end local v2    # "_id":J
    .end local v4    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "bufferDbId":J
    .restart local v13    # "cv":Landroid/content/ContentValues;
    .restart local v15    # "_id":J
    .restart local v17    # "cldAction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .restart local v22    # "bufferDbId":J
    :goto_1
    return-void
.end method

.method public onNmsEventChangedObjRcsBufferDbAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 0
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p3, "mIsGoforwardSync"    # Z

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjRCSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    .line 119
    return-void
.end method

.method protected onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V
    .locals 4
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    .line 611
    const-string v0, "messagetype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 612
    .local v0, "type":I
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNmsEventChangedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 614
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v3, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 615
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 616
    .local v2, "sms":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 617
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v2, p2, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 614
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 619
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 614
    .end local v2    # "sms":Landroid/database/Cursor;
    :cond_2
    goto :goto_6

    .line 620
    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 621
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v3, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 622
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 621
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 623
    .local v2, "mmscs":Landroid/database/Cursor;
    if-eqz v2, :cond_5

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 624
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v2, p2, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 621
    :catchall_2
    move-exception v1

    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1

    .line 626
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 621
    .end local v2    # "mmscs":Landroid/database/Cursor;
    :cond_6
    goto :goto_6

    .line 628
    :cond_7
    iget-object v2, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 629
    .local v2, "rcsCs":Landroid/database/Cursor;
    if-eqz v2, :cond_9

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 630
    invoke-virtual {p0, v2, p2, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    .line 628
    :catchall_4
    move-exception v1

    if-eqz v2, :cond_8

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v1

    .line 632
    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 634
    .end local v2    # "rcsCs":Landroid/database/Cursor;
    :cond_a
    :goto_6
    return-void
.end method

.method public onNmsEventDeletedObjBufferDbRcsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 21
    .param p1, "rcsCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .param p3, "mIsGoforwardSync"    # Z

    .line 131
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 132
    const-string v0, "_bufferdbid"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 131
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v7, v0

    .line 133
    .local v7, "bufferDbId":J
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    .line 134
    .local v2, "_id":J
    const-string v0, "is_filetransfer"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    .line 135
    .local v5, "isFt":Z
    :goto_0
    const-string v0, "linenum"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 136
    .local v18, "line":Ljava/lang/String;
    nop

    .line 137
    const-string/jumbo v0, "syncaction"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 136
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v19

    .line 138
    .local v19, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    nop

    .line 139
    const-string/jumbo v1, "syncdirection"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 138
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v20

    .line 140
    .local v20, "direction":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    move-object v6, v4

    .line 141
    .local v6, "cv":Landroid/content/ContentValues;
    move-object/from16 v4, p2

    iget-wide v11, v4, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->lastModSeq:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "lastmodseq"

    invoke-virtual {v6, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    iget-object v11, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v12, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mDbTableContractIndex:I

    sget-object v17, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide v13, v7

    move-object/from16 v15, v20

    move-object/from16 v16, v19

    invoke-virtual/range {v11 .. v17}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v11

    .line 144
    .local v11, "flagSet":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    iget-boolean v12, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v12, :cond_1

    .line 145
    iget-object v12, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    :cond_1
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v9, v6, v7, v8, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 149
    iget-boolean v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteRCSMessageDb(I)I

    .line 153
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    .line 154
    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v14, v2

    .end local v2    # "_id":J
    .local v14, "_id":J
    move-wide v2, v7

    move v4, v12

    move-object v12, v6

    .end local v6    # "cv":Landroid/content/ContentValues;
    .local v12, "cv":Landroid/content/ContentValues;
    move/from16 v6, p3

    move-wide/from16 v16, v7

    .end local v7    # "bufferDbId":J
    .local v16, "bufferDbId":J
    move-object/from16 v7, v18

    move-object v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 153
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v14    # "_id":J
    .end local v16    # "bufferDbId":J
    .restart local v2    # "_id":J
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v7    # "bufferDbId":J
    :cond_3
    move-wide v14, v2

    move-object v12, v6

    move-wide/from16 v16, v7

    .line 157
    .end local v2    # "_id":J
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "bufferDbId":J
    .restart local v12    # "cv":Landroid/content/ContentValues;
    .restart local v14    # "_id":J
    .restart local v16    # "bufferDbId":J
    :goto_1
    return-void
.end method

.method public onNmsEventDeletedObjBufferDbRcsAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 0
    .param p1, "rcsCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .param p3, "mIsGoforwardSync"    # Z

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    .line 124
    return-void
.end method

.method public onNmsEventDeletedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 0
    .param p1, "rcsCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .param p3, "mIsGoforwardSync"    # Z

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    .line 128
    return-void
.end method

.method protected onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 4
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    .line 638
    const-string v0, "messagetype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 639
    .local v0, "type":I
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNmsEventDeletedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 641
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v3, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 642
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 643
    .local v2, "sms":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 644
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v2, p2, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 641
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 646
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 641
    .end local v2    # "sms":Landroid/database/Cursor;
    :cond_2
    goto :goto_6

    .line 647
    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 648
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v3, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 649
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 648
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 650
    .local v2, "mmscs":Landroid/database/Cursor;
    if-eqz v2, :cond_5

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 651
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v2, p2, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 648
    :catchall_2
    move-exception v1

    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1

    .line 653
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 648
    .end local v2    # "mmscs":Landroid/database/Cursor;
    :cond_6
    goto :goto_6

    .line 655
    :cond_7
    iget-object v2, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 656
    .local v2, "rcscs":Landroid/database/Cursor;
    if-eqz v2, :cond_9

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 657
    invoke-virtual {p0, v2, p2, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    .line 655
    :catchall_4
    move-exception v1

    if-eqz v2, :cond_8

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v1

    .line 659
    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 662
    .end local v2    # "rcscs":Landroid/database/Cursor;
    :cond_a
    :goto_6
    return-void
.end method

.method public onRcsAllPayloadsDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 24
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "mIsGoforwardSync"    # Z

    .line 282
    move-object/from16 v14, p0

    const-string v1, ""

    const-string v2, ";"

    const-string v3, "onRcsAllPayloadsDownloaded: "

    const-string v5, "content_type"

    const/4 v6, 0x0

    .line 283
    .local v6, "isInlineText":Z
    const/4 v7, 0x0

    .line 284
    .local v7, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, v14, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v8

    iget v8, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v9

    iget-wide v9, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 284
    invoke-virtual {v4, v8, v9, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move-object v13, v4

    .line 286
    .local v13, "csRcs":Landroid/database/Cursor;
    if-eqz v13, :cond_15

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 287
    const-string v4, "_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v12, v4

    .line 288
    .local v12, "_id":I
    const-string v4, "linenum"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 289
    .local v15, "line":Ljava/lang/String;
    const-string v4, "file_name"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    .line 290
    .local v8, "filename":Ljava/lang/String;
    const-string/jumbo v4, "thumbnail_path"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "thumbnail":Ljava/lang/String;
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 292
    .local v10, "contentType":Ljava/lang/String;
    const/4 v9, 0x0

    .line 293
    .local v9, "filepath":Ljava/lang/String;
    move-object v11, v1

    .line 294
    .local v11, "inlineText":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 295
    .local v16, "fileSize":J
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object/from16 v19, v18

    .line 297
    .local v19, "cv":Landroid/content/ContentValues;
    move/from16 v18, v6

    .end local v6    # "isInlineText":Z
    .local v18, "isInlineText":Z
    :try_start_2
    sget-object v6, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v20, v8

    .end local v8    # "filename":Ljava/lang/String;
    .local v20, "filename":Ljava/lang/String;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v21, v9

    .end local v9    # "filepath":Ljava/lang/String;
    .local v21, "filepath":Ljava/lang/String;
    :try_start_4
    const-string v9, "multipart payloads, size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v8, 0x1

    if-le v6, v8, :cond_1

    .line 299
    :try_start_5
    const-string v2, "multipart/related"
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v6, v19

    .end local v19    # "cv":Landroid/content/ContentValues;
    .local v6, "cv":Landroid/content/ContentValues;
    :try_start_6
    invoke-virtual {v6, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v2, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v2}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 301
    .local v2, "mimepart":Ljavax/mail/internet/MimeMultipart;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/BodyPart;

    invoke-virtual {v2, v5}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/BodyPart;

    invoke-virtual {v5}, Ljavax/mail/BodyPart;->getSize()I

    move-result v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v19, v10

    .end local v10    # "contentType":Ljava/lang/String;
    .local v19, "contentType":Ljava/lang/String;
    int-to-long v9, v5

    add-long v16, v16, v9

    .line 301
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, v19

    goto :goto_0

    .end local v19    # "contentType":Ljava/lang/String;
    .restart local v10    # "contentType":Ljava/lang/String;
    :cond_0
    move-object/from16 v19, v10

    .line 305
    .end local v3    # "i":I
    .end local v10    # "contentType":Ljava/lang/String;
    .restart local v19    # "contentType":Ljava/lang/String;
    :try_start_7
    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v8, v1

    .line 306
    .end local v20    # "filename":Ljava/lang/String;
    .restart local v8    # "filename":Ljava/lang/String;
    :try_start_8
    iget-object v1, v14, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v8, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v9, v1

    .line 307
    .end local v21    # "filepath":Ljava/lang/String;
    .restart local v9    # "filepath":Ljava/lang/String;
    :try_start_9
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generated file path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {v2, v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveMimeBodyToPath(Ljavax/mail/internet/MimeMultipart;Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 309
    move-object/from16 v10, v19

    .end local v2    # "mimepart":Ljavax/mail/internet/MimeMultipart;
    goto/16 :goto_7

    .line 350
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v19

    goto/16 :goto_8

    .end local v9    # "filepath":Ljava/lang/String;
    .restart local v21    # "filepath":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v19

    move-object/from16 v9, v21

    goto/16 :goto_8

    .end local v8    # "filename":Ljava/lang/String;
    .restart local v20    # "filename":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto/16 :goto_8

    .end local v19    # "contentType":Ljava/lang/String;
    .restart local v10    # "contentType":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    .end local v10    # "contentType":Ljava/lang/String;
    .restart local v19    # "contentType":Ljava/lang/String;
    goto/16 :goto_8

    .end local v6    # "cv":Landroid/content/ContentValues;
    .restart local v10    # "contentType":Ljava/lang/String;
    .local v19, "cv":Landroid/content/ContentValues;
    :catch_4
    move-exception v0

    move-object/from16 v6, v19

    move-object v1, v0

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    .end local v10    # "contentType":Ljava/lang/String;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .local v19, "contentType":Ljava/lang/String;
    goto/16 :goto_8

    .line 309
    .end local v6    # "cv":Landroid/content/ContentValues;
    .restart local v10    # "contentType":Ljava/lang/String;
    .local v19, "cv":Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v6, v19

    move-object/from16 v19, v10

    .end local v10    # "contentType":Ljava/lang/String;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .local v19, "contentType":Ljava/lang/String;
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v8, :cond_e

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "i":I
    sget-object v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/mail/BodyPart;

    invoke-virtual {v10}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/mail/BodyPart;

    invoke-virtual {v8}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljavax/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v8, :cond_2

    .line 315
    const/4 v2, 0x1

    .line 316
    .end local v18    # "isInlineText":Z
    .local v2, "isInlineText":Z
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-virtual {v3}, Ljavax/mail/BodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v7, v3

    .line 317
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 318
    sget-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "converted inlineTxt: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljavax/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move/from16 v18, v2

    move-object/from16 v10, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto/16 :goto_7

    .line 284
    .end local v1    # "i":I
    .end local v4    # "thumbnail":Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v11    # "inlineText":Ljava/lang/String;
    .end local v12    # "_id":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "fileSize":J
    .end local v19    # "contentType":Ljava/lang/String;
    .end local v20    # "filename":Ljava/lang/String;
    .end local v21    # "filepath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move v6, v2

    move-object v2, v13

    goto/16 :goto_e

    .line 350
    .restart local v4    # "thumbnail":Ljava/lang/String;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v11    # "inlineText":Ljava/lang/String;
    .restart local v12    # "_id":I
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v16    # "fileSize":J
    .restart local v19    # "contentType":Ljava/lang/String;
    .restart local v20    # "filename":Ljava/lang/String;
    .restart local v21    # "filepath":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object v1, v0

    move/from16 v18, v2

    move-object/from16 v10, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto/16 :goto_8

    .line 320
    .end local v2    # "isInlineText":Z
    .restart local v1    # "i":I
    .restart local v18    # "isInlineText":Z
    :cond_2
    :try_start_c
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/mail/BodyPart;

    invoke-virtual {v8}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v8
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljavax/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v10, v19

    .end local v19    # "contentType":Ljava/lang/String;
    .restart local v10    # "contentType":Ljava/lang/String;
    :try_start_d
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 321
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-virtual {v3}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 320
    .end local v10    # "contentType":Ljava/lang/String;
    .restart local v19    # "contentType":Ljava/lang/String;
    :cond_3
    move-object/from16 v10, v19

    .line 322
    .end local v19    # "contentType":Ljava/lang/String;
    .restart local v10    # "contentType":Ljava/lang/String;
    :cond_4
    iget-object v8, v14, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/mail/BodyPart;

    invoke-virtual {v9}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->isContentTypeDefined(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 323
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-virtual {v3}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/BodyPart;

    invoke-virtual {v2}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 325
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/mail/BodyPart;

    invoke-virtual {v8}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/mail/BodyPart;

    invoke-virtual {v8}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    iget-object v8, v14, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/mail/BodyPart;

    invoke-virtual {v9}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/16 v19, 0x0

    aget-object v9, v9, v19

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->isContentTypeDefined(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 328
    sget-object v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-virtual {v3}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v19, 0x0

    aget-object v3, v3, v19

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-virtual {v3}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v6, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/BodyPart;

    invoke-virtual {v2}, Ljavax/mail/BodyPart;->getFileName()Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljavax/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object v8, v2

    .line 335
    .end local v20    # "filename":Ljava/lang/String;
    .restart local v8    # "filename":Ljava/lang/String;
    :try_start_e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 336
    iget-object v2, v14, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-virtual {v3}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 338
    :cond_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 339
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/BodyPart;

    invoke-virtual {v2}, Ljavax/mail/BodyPart;->getDisposition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getFileNamefromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 341
    :cond_7
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 342
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v3, "onRcsAllPayloadsDownloaded: no file name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljavax/mail/MessagingException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 373
    if-eqz v13, :cond_8

    :try_start_f
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 376
    :cond_8
    if-eqz v7, :cond_9

    .line 377
    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_2

    .line 379
    :catch_6
    move-exception v0

    move-object v2, v0

    .line 380
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 381
    .end local v2    # "e":Ljava/io/IOException;
    :cond_9
    :goto_2
    nop

    .line 343
    :goto_3
    return-void

    .line 345
    :cond_a
    :try_start_11
    iget-object v2, v14, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v8, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljavax/mail/MessagingException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-object v9, v2

    .line 346
    .end local v21    # "filepath":Ljava/lang/String;
    .restart local v9    # "filepath":Ljava/lang/String;
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/BodyPart;

    invoke-virtual {v2}, Ljavax/mail/BodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v7, v2

    .line 347
    invoke-static {v7, v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveInputStreamtoPath(Ljava/io/InputStream;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljavax/mail/MessagingException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-wide/from16 v16, v2

    goto :goto_7

    .line 350
    .end local v1    # "i":I
    :catch_7
    move-exception v0

    move-object v1, v0

    goto/16 :goto_8

    .end local v9    # "filepath":Ljava/lang/String;
    .restart local v21    # "filepath":Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object v1, v0

    move-object/from16 v9, v21

    goto/16 :goto_8

    .line 331
    .end local v8    # "filename":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v20    # "filename":Ljava/lang/String;
    :cond_b
    :try_start_13
    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRcsAllPayloadsDownloaded invalid file type for RCS: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/BodyPart;

    invoke-virtual {v5}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljavax/mail/MessagingException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 373
    if-eqz v13, :cond_c

    :try_start_14
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_4

    .line 375
    .end local v1    # "i":I
    .end local v4    # "thumbnail":Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v11    # "inlineText":Ljava/lang/String;
    .end local v12    # "_id":I
    .end local v13    # "csRcs":Landroid/database/Cursor;
    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "fileSize":J
    .end local v20    # "filename":Ljava/lang/String;
    .end local v21    # "filepath":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v1, v0

    move/from16 v6, v18

    goto/16 :goto_14

    .line 376
    .restart local v1    # "i":I
    .restart local v4    # "thumbnail":Ljava/lang/String;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v11    # "inlineText":Ljava/lang/String;
    .restart local v12    # "_id":I
    .restart local v13    # "csRcs":Landroid/database/Cursor;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v16    # "fileSize":J
    .restart local v20    # "filename":Ljava/lang/String;
    .restart local v21    # "filepath":Ljava/lang/String;
    :cond_c
    :goto_4
    if-eqz v7, :cond_d

    .line 377
    :try_start_15
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    goto :goto_5

    .line 379
    :catch_9
    move-exception v0

    move-object v2, v0

    .line 380
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 381
    .end local v2    # "e":Ljava/io/IOException;
    :cond_d
    :goto_5
    nop

    .line 332
    :goto_6
    return-void

    .line 350
    .end local v1    # "i":I
    :catch_a
    move-exception v0

    move-object v1, v0

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto :goto_8

    .line 309
    .end local v10    # "contentType":Ljava/lang/String;
    .restart local v19    # "contentType":Ljava/lang/String;
    :cond_e
    move-object/from16 v10, v19

    .end local v19    # "contentType":Ljava/lang/String;
    .restart local v10    # "contentType":Ljava/lang/String;
    move-object/from16 v8, v20

    move-object/from16 v9, v21

    .line 353
    .end local v20    # "filename":Ljava/lang/String;
    .end local v21    # "filepath":Ljava/lang/String;
    .restart local v8    # "filename":Ljava/lang/String;
    .restart local v9    # "filepath":Ljava/lang/String;
    :goto_7
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-wide/from16 v21, v16

    move-object/from16 v17, v7

    goto :goto_9

    .line 350
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "filepath":Ljava/lang/String;
    .end local v10    # "contentType":Ljava/lang/String;
    .restart local v19    # "contentType":Ljava/lang/String;
    .restart local v20    # "filename":Ljava/lang/String;
    .restart local v21    # "filepath":Ljava/lang/String;
    :catch_b
    move-exception v0

    move-object/from16 v10, v19

    move-object v1, v0

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    .end local v19    # "contentType":Ljava/lang/String;
    .restart local v10    # "contentType":Ljava/lang/String;
    goto :goto_8

    .end local v6    # "cv":Landroid/content/ContentValues;
    .local v19, "cv":Landroid/content/ContentValues;
    :catch_c
    move-exception v0

    move-object/from16 v6, v19

    move-object v1, v0

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    .end local v19    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    goto :goto_8

    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v21    # "filepath":Ljava/lang/String;
    .restart local v9    # "filepath":Ljava/lang/String;
    .restart local v19    # "cv":Landroid/content/ContentValues;
    :catch_d
    move-exception v0

    move-object/from16 v21, v9

    move-object/from16 v6, v19

    move-object v1, v0

    move-object/from16 v8, v20

    .end local v9    # "filepath":Ljava/lang/String;
    .end local v19    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v21    # "filepath":Ljava/lang/String;
    goto :goto_8

    .line 284
    .end local v4    # "thumbnail":Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v11    # "inlineText":Ljava/lang/String;
    .end local v12    # "_id":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "fileSize":J
    .end local v20    # "filename":Ljava/lang/String;
    .end local v21    # "filepath":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v2, v13

    move/from16 v6, v18

    goto/16 :goto_e

    .line 350
    .restart local v4    # "thumbnail":Ljava/lang/String;
    .restart local v8    # "filename":Ljava/lang/String;
    .restart local v9    # "filepath":Ljava/lang/String;
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v11    # "inlineText":Ljava/lang/String;
    .restart local v12    # "_id":I
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v16    # "fileSize":J
    .restart local v19    # "cv":Landroid/content/ContentValues;
    :catch_e
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v6, v19

    move-object v1, v0

    .line 351
    .end local v19    # "cv":Landroid/content/ContentValues;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    :goto_8
    const/4 v9, 0x0

    .line 352
    :try_start_16
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-wide/from16 v21, v16

    move-object/from16 v17, v7

    .line 355
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "filepath":Ljava/lang/String;
    .end local v16    # "fileSize":J
    .local v17, "inputStream":Ljava/io/InputStream;
    .local v19, "filename":Ljava/lang/String;
    .local v20, "filepath":Ljava/lang/String;
    .local v21, "fileSize":J
    :goto_9
    if-eqz v18, :cond_f

    .line 356
    :try_start_17
    invoke-direct {v14, v11, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->setInlineTextCV(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move-object v8, v6

    goto :goto_d

    .line 284
    .end local v4    # "thumbnail":Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v11    # "inlineText":Ljava/lang/String;
    .end local v12    # "_id":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v19    # "filename":Ljava/lang/String;
    .end local v20    # "filepath":Ljava/lang/String;
    .end local v21    # "fileSize":J
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v2, v13

    move-object/from16 v7, v17

    move/from16 v6, v18

    goto/16 :goto_e

    .line 358
    .restart local v4    # "thumbnail":Ljava/lang/String;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v11    # "inlineText":Ljava/lang/String;
    .restart local v12    # "_id":I
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v19    # "filename":Ljava/lang/String;
    .restart local v20    # "filepath":Ljava/lang/String;
    .restart local v21    # "fileSize":J
    :cond_f
    :try_start_18
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    if-eqz v1, :cond_12

    .line 373
    if-eqz v13, :cond_10

    :try_start_19
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto :goto_a

    .line 375
    .end local v4    # "thumbnail":Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v11    # "inlineText":Ljava/lang/String;
    .end local v12    # "_id":I
    .end local v13    # "csRcs":Landroid/database/Cursor;
    .end local v15    # "line":Ljava/lang/String;
    .end local v19    # "filename":Ljava/lang/String;
    .end local v20    # "filepath":Ljava/lang/String;
    .end local v21    # "fileSize":J
    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v7, v17

    move/from16 v6, v18

    goto/16 :goto_14

    .line 376
    .restart local v4    # "thumbnail":Ljava/lang/String;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v11    # "inlineText":Ljava/lang/String;
    .restart local v12    # "_id":I
    .restart local v13    # "csRcs":Landroid/database/Cursor;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v19    # "filename":Ljava/lang/String;
    .restart local v20    # "filepath":Ljava/lang/String;
    .restart local v21    # "fileSize":J
    :cond_10
    :goto_a
    if-eqz v17, :cond_11

    .line 377
    :try_start_1a
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f

    goto :goto_b

    .line 379
    :catch_f
    move-exception v0

    move-object v1, v0

    .line 380
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 381
    .end local v1    # "e":Ljava/io/IOException;
    :cond_11
    :goto_b
    nop

    .line 359
    :goto_c
    return-void

    .line 361
    :cond_12
    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object v8, v6

    .end local v6    # "cv":Landroid/content/ContentValues;
    .local v8, "cv":Landroid/content/ContentValues;
    move-wide/from16 v5, v21

    move-object v7, v8

    :try_start_1b
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->getPayloadCV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/content/ContentValues;)V

    .line 364
    :goto_d
    const-wide/16 v1, 0x1

    iget-object v3, v14, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v14, v8, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 365
    if-lez v12, :cond_13

    .line 366
    :try_start_1c
    iget-object v1, v14, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v12, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 368
    :cond_13
    :try_start_1d
    new-instance v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v9, v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 370
    .local v9, "param":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v6, v8

    .end local v8    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    move-object/from16 v8, p0

    move-object v7, v10

    move-object/from16 v23, v11

    .end local v10    # "contentType":Ljava/lang/String;
    .end local v11    # "inlineText":Ljava/lang/String;
    .local v7, "contentType":Ljava/lang/String;
    .local v23, "inlineText":Ljava/lang/String;
    move-wide v10, v1

    move v1, v12

    .end local v12    # "_id":I
    .local v1, "_id":I
    move v12, v3

    move-object v2, v13

    .end local v13    # "csRcs":Landroid/database/Cursor;
    .local v2, "csRcs":Landroid/database/Cursor;
    move v13, v5

    move/from16 v14, p2

    :try_start_1e
    invoke-virtual/range {v8 .. v16}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    move-object/from16 v7, v17

    move/from16 v6, v18

    goto :goto_10

    .line 284
    .end local v1    # "_id":I
    .end local v4    # "thumbnail":Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "contentType":Ljava/lang/String;
    .end local v9    # "param":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v15    # "line":Ljava/lang/String;
    .end local v19    # "filename":Ljava/lang/String;
    .end local v20    # "filepath":Ljava/lang/String;
    .end local v21    # "fileSize":J
    .end local v23    # "inlineText":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object/from16 v7, v17

    move/from16 v6, v18

    goto :goto_e

    .end local v2    # "csRcs":Landroid/database/Cursor;
    .restart local v13    # "csRcs":Landroid/database/Cursor;
    :catchall_6
    move-exception v0

    move-object v2, v13

    move-object v1, v0

    move-object/from16 v7, v17

    move/from16 v6, v18

    .end local v13    # "csRcs":Landroid/database/Cursor;
    .restart local v2    # "csRcs":Landroid/database/Cursor;
    goto :goto_e

    .end local v2    # "csRcs":Landroid/database/Cursor;
    .end local v17    # "inputStream":Ljava/io/InputStream;
    .local v7, "inputStream":Ljava/io/InputStream;
    .restart local v13    # "csRcs":Landroid/database/Cursor;
    :catchall_7
    move-exception v0

    move-object v2, v13

    move-object v1, v0

    move/from16 v6, v18

    .end local v13    # "csRcs":Landroid/database/Cursor;
    .restart local v2    # "csRcs":Landroid/database/Cursor;
    goto :goto_e

    .end local v2    # "csRcs":Landroid/database/Cursor;
    .end local v18    # "isInlineText":Z
    .local v6, "isInlineText":Z
    .restart local v13    # "csRcs":Landroid/database/Cursor;
    :catchall_8
    move-exception v0

    move/from16 v18, v6

    move-object v2, v13

    move-object v1, v0

    .end local v13    # "csRcs":Landroid/database/Cursor;
    .restart local v2    # "csRcs":Landroid/database/Cursor;
    :goto_e
    if-eqz v2, :cond_14

    :try_start_1f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    goto :goto_f

    :catchall_9
    move-exception v0

    move-object v3, v0

    :try_start_20
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "isInlineText":Z
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;
    .end local p1    # "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .end local p2    # "mIsGoforwardSync":Z
    :cond_14
    :goto_f
    throw v1

    .line 286
    .end local v2    # "csRcs":Landroid/database/Cursor;
    .restart local v6    # "isInlineText":Z
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v13    # "csRcs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;
    .restart local p1    # "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .restart local p2    # "mIsGoforwardSync":Z
    :cond_15
    move/from16 v18, v6

    move-object v2, v13

    .line 373
    .end local v6    # "isInlineText":Z
    .end local v13    # "csRcs":Landroid/database/Cursor;
    .restart local v2    # "csRcs":Landroid/database/Cursor;
    .restart local v18    # "isInlineText":Z
    move/from16 v6, v18

    .end local v18    # "isInlineText":Z
    .restart local v6    # "isInlineText":Z
    :goto_10
    if-eqz v2, :cond_16

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    goto :goto_11

    .line 375
    .end local v2    # "csRcs":Landroid/database/Cursor;
    :catchall_a
    move-exception v0

    move-object v1, v0

    goto :goto_14

    .line 376
    :cond_16
    :goto_11
    if-eqz v7, :cond_17

    .line 377
    :try_start_21
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_10

    goto :goto_12

    .line 379
    :catch_10
    move-exception v0

    move-object v1, v0

    .line 380
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 382
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_13

    .line 381
    :cond_17
    :goto_12
    nop

    .line 383
    :goto_13
    return-void

    .line 375
    :catchall_b
    move-exception v0

    move/from16 v18, v6

    move-object v1, v0

    .line 376
    :goto_14
    if-eqz v7, :cond_18

    .line 377
    :try_start_22
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_11

    goto :goto_15

    .line 379
    :catch_11
    move-exception v0

    move-object v2, v0

    .line 380
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 381
    .end local v2    # "e":Ljava/io/IOException;
    :cond_18
    :goto_15
    nop

    .line 382
    :goto_16
    throw v1
.end method

.method public onRcsPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 21
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "mIsGoforwardSync"    # Z

    .line 160
    move-object/from16 v10, p0

    const-string/jumbo v1, "thumbnail_path"

    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v3

    iget-wide v3, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 160
    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v11

    .line 162
    .local v11, "csRcs":Landroid/database/Cursor;
    if-eqz v11, :cond_d

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    const-string v0, "_bufferdbid"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v12, v0

    .line 164
    .local v12, "bufferDbid":I
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v13, v0

    .line 165
    .local v13, "_id":I
    const-string v0, "linenum"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "line":Ljava/lang/String;
    const-string/jumbo v0, "payloadencoding"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v14, v0

    .line 167
    .local v14, "encodingMethod":I
    const-string v0, "file_name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 168
    .local v15, "filename":Ljava/lang/String;
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 169
    .local v16, "thumbnail":Ljava/lang/String;
    const-string v0, "is_filetransfer"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v9, v2

    .line 171
    .local v9, "isFileTransfer":Z
    const-string v0, "content_type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 172
    .local v7, "contentType":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileTransfer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", contentType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, "fileContent":[B
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v6, v0

    .line 179
    .local v6, "cv":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsFTThumbnail:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, " encoding method: "

    if-eqz v0, :cond_4

    :try_start_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 180
    const/4 v5, 0x0

    .line 182
    .local v5, "thumbnail_path":Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mFTThumbnailFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mFTThumbnailFileName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "fileContent":[B
    .local v18, "fileContent":[B
    :try_start_3
    invoke-static {v0, v3, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .end local v5    # "thumbnail_path":Ljava/lang/String;
    .local v0, "thumbnail_path":Ljava/lang/String;
    goto :goto_1

    .line 185
    .end local v0    # "thumbnail_path":Ljava/lang/String;
    .end local v18    # "fileContent":[B
    .restart local v2    # "fileContent":[B
    .restart local v5    # "thumbnail_path":Ljava/lang/String;
    :cond_1
    move-object/from16 v18, v2

    .end local v2    # "fileContent":[B
    .restart local v18    # "fileContent":[B
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "thumbnailFileName":Ljava/lang/String;
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 188
    .end local v0    # "thumbnailFileName":Ljava/lang/String;
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generated thumbnail file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result v0

    if-ne v0, v14, :cond_2

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v0

    .line 191
    .end local v18    # "fileContent":[B
    .restart local v2    # "fileContent":[B
    :try_start_4
    invoke-static {v2, v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFiletoPath([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 198
    :catch_0
    move-exception v0

    goto :goto_3

    .line 192
    .end local v2    # "fileContent":[B
    .restart local v18    # "fileContent":[B
    :cond_2
    :try_start_5
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result v0

    if-ne v0, v14, :cond_3

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v0

    .line 194
    .end local v18    # "fileContent":[B
    .restart local v2    # "fileContent":[B
    :try_start_6
    invoke-static {v2, v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFiletoPath([BLjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 196
    .end local v2    # "fileContent":[B
    .restart local v18    # "fileContent":[B
    :cond_3
    :try_start_7
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v2, "no decoding defined: "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v2, v18

    .line 200
    .end local v18    # "fileContent":[B
    .restart local v2    # "fileContent":[B
    :goto_2
    goto :goto_4

    .line 198
    .end local v2    # "fileContent":[B
    .restart local v18    # "fileContent":[B
    :catch_1
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_3

    .end local v18    # "fileContent":[B
    .restart local v2    # "fileContent":[B
    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    .line 199
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 201
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v6, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsFTThumbnail:Z

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mFTThumbnailFileName:Ljava/lang/String;

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 205
    .end local v5    # "thumbnail_path":Ljava/lang/String;
    move-object v0, v2

    goto/16 :goto_a

    .line 179
    :cond_4
    move-object/from16 v18, v2

    .line 206
    .end local v2    # "fileContent":[B
    .restart local v18    # "fileContent":[B
    const/4 v1, 0x0

    .line 207
    .local v1, "filepath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 209
    .local v2, "fileSize":I
    :try_start_9
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v15, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 210
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generated file path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result v0

    if-ne v0, v14, :cond_6

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFiletoPath([BLjava/lang/String;)V

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v0

    array-length v3, v0

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    move v2, v3

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v0

    .end local v18    # "fileContent":[B
    .local v0, "fileContent":[B
    goto :goto_7

    .line 215
    .end local v0    # "fileContent":[B
    .restart local v18    # "fileContent":[B
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result v0

    if-ne v0, v14, :cond_8

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v4, v0

    .line 217
    .end local v18    # "fileContent":[B
    .local v4, "fileContent":[B
    if-eqz v4, :cond_7

    :try_start_a
    array-length v3, v4

    goto :goto_6

    .line 220
    :catch_3
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_8

    .line 217
    :cond_7
    :goto_6
    move v2, v3

    .line 218
    invoke-static {v4, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFiletoPath([BLjava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v0, v4

    goto :goto_7

    .line 215
    .end local v4    # "fileContent":[B
    .restart local v18    # "fileContent":[B
    :cond_8
    move-object/from16 v0, v18

    .line 222
    .end local v18    # "fileContent":[B
    .restart local v0    # "fileContent":[B
    :goto_7
    goto :goto_9

    .line 220
    .end local v0    # "fileContent":[B
    .restart local v18    # "fileContent":[B
    :catch_4
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    :goto_8
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v0, v18

    .line 223
    .end local v18    # "fileContent":[B
    .local v0, "fileContent":[B
    :goto_9
    const-string v3, "file_size"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string v3, "bytes_transf"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v3, "file_path"

    invoke-virtual {v6, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v1    # "filepath":Ljava/lang/String;
    .end local v2    # "fileSize":I
    :goto_a
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string/jumbo v2, "syncaction"

    const-string/jumbo v3, "syncdirection"

    if-eqz v1, :cond_9

    .line 228
    :try_start_c
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 229
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 228
    invoke-virtual {v6, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 231
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 230
    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_b

    .line 233
    :cond_9
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 234
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 233
    invoke-virtual {v6, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 236
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 235
    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    :goto_b
    if-eqz v7, :cond_a

    const-string v1, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 239
    const-string v1, "ext_info"

    new-instance v2, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_a
    int-to-long v1, v12

    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v10, v6, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 242
    if-lez v13, :cond_b

    .line 243
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v13, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    .line 245
    :cond_b
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 248
    .local v2, "param":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/4 v5, 0x1

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v18, v6

    .end local v6    # "cv":Landroid/content/ContentValues;
    .local v18, "cv":Landroid/content/ContentValues;
    move v6, v9

    move-object/from16 v19, v7

    .end local v7    # "contentType":Ljava/lang/String;
    .local v19, "contentType":Ljava/lang/String;
    move/from16 v7, p2

    move/from16 v20, v9

    .end local v9    # "isFileTransfer":Z
    .local v20, "isFileTransfer":Z
    move-object/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_d

    .line 160
    .end local v0    # "fileContent":[B
    .end local v2    # "param":Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .end local v8    # "line":Ljava/lang/String;
    .end local v12    # "bufferDbid":I
    .end local v13    # "_id":I
    .end local v14    # "encodingMethod":I
    .end local v15    # "filename":Ljava/lang/String;
    .end local v16    # "thumbnail":Ljava/lang/String;
    .end local v18    # "cv":Landroid/content/ContentValues;
    .end local v19    # "contentType":Ljava/lang/String;
    .end local v20    # "isFileTransfer":Z
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_c

    :try_start_d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_c
    throw v1

    .line 251
    :cond_d
    :goto_d
    if-eqz v11, :cond_e

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 252
    .end local v11    # "csRcs":Landroid/database/Cursor;
    :cond_e
    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V
    .locals 1
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;
    .param p2, "mIsGoforwardSync"    # Z

    .line 590
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 591
    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V
    .locals 4
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 595
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mBufferRowId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateAppFetchingFailed(IJ)V

    .line 596
    return-void
.end method

.method public onUpdateFromDeviceSession(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    .line 456
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateFromDeviceSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag:[I

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNewSessionInserted(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V

    .line 460
    nop

    .line 467
    :goto_0
    return-void
.end method

.method public onUpdateFromDeviceSessionPartcpts(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    .line 434
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateFromDeviceSessionPartcpts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag:[I

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNewPartcptsInserted(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V

    .line 438
    nop

    .line 445
    :goto_0
    return-void
.end method

.method public queryAllSession()Landroid/database/Cursor;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryAllSession()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryImdnMessagesToUpload()Landroid/database/Cursor;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryImdnMessagesToUpload()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 565
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryRCSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "tableIndex"    # I
    .param p2, "syncDirection"    # Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryMessageBySyncDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryRCSMessagesToUpload()Landroid/database/Cursor;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRCSMessagesToUpload()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryToCloudUnsyncedRcs()Landroid/database/Cursor;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryToCloudUnsyncedRcs()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryToDeviceUnDownloadedRcs(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "linenum"    # Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryToDeviceUnDownloadedRcs(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryToDeviceUnsyncedRcs()Landroid/database/Cursor;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryToDeviceUnsyncedRcs()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "line"    # Ljava/lang/String;

    .line 541
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public wipeOutData(ILjava/lang/String;)V
    .locals 1
    .param p1, "tableindex"    # I
    .param p2, "line"    # Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->wipeOutData(ILjava/lang/String;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 680
    return-void
.end method
