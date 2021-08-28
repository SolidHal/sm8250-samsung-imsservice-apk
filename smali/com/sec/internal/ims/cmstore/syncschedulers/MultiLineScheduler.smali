.class public Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "MultiLineScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

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

    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 28
    new-instance v0, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-direct {v0, p1, p5}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    .line 29
    return-void
.end method


# virtual methods
.method public deleteLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->deleteLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 48
    return-void
.end method

.method public getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 51
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 52
    .local v0, "initSyncType":Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->queryUsingLineAndSyncMsgType(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Landroid/database/Cursor;

    move-result-object v1

    .line 53
    .local v1, "cs":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    const-string v2, "initsync_status"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 55
    .local v2, "value":I
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_1

    .line 52
    .end local v2    # "value":I
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

    .line 57
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 58
    .end local v1    # "cs":Landroid/database/Cursor;
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLineInitSyncStatus(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-nez v0, :cond_3

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    :goto_2
    return v1
.end method

.method public insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->queryUsingLineAndSyncMsgType(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Landroid/database/Cursor;

    move-result-object v0

    .line 33
    .local v0, "cs":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    const-string v2, ""

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 35
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    .line 34
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)I

    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 40
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_1
    return-void

    .line 32
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

.method public updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .param p3, "cursor"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)I

    .line 44
    return-void
.end method
