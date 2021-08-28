.class public Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;
.super Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;
.source "VolatileEucWorkflow.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;


# static fields
.field private static final INTENT_EUCR_VOLATILE_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.euc.workflow.action.VOLATILE_TIMEOUT"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAlarm:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/app/PendingIntent;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation
.end field

.field private final mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "eucrPersistence"    # Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;
    .param p4, "displayManager"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;
    .param p5, "storeAndForward"    # Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;
    .param p6, "factory"    # Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    .line 87
    invoke-direct {p0, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCurrentAlarm:Landroid/util/Pair;

    .line 64
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mHandler:Landroid/os/Handler;

    .line 90
    invoke-static {p6}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    .line 91
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCurrentAlarm:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;
    .param p1, "x1"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->timeoutMessage(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    .line 48
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->unscheduleCurrentAlarmTimerIntent()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;
    .param p1, "x1"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->scheduleNextAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    return-void
.end method

.method private getRemainingTimeout(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)J
    .locals 4
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 300
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getTimeOut()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private isMessageTimedOut(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 291
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->getRemainingTimeout(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private scheduleNextAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 6
    .param p1, "eucr"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 310
    move-object v0, p1

    .line 311
    .local v0, "eucrForAlarm":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    if-nez v0, :cond_0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mOwnIdentities:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getVolatileEucByMostRecentTimeout(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 316
    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain EUCs from persistence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v1    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 319
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCurrentAlarm:Landroid/util/Pair;

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->getRemainingTimeout(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)J

    move-result-wide v1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->getRemainingTimeout(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->unscheduleCurrentAlarmTimerIntent()V

    goto :goto_1

    .line 324
    :cond_1
    return-void

    .line 327
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.internal.ims.servicemodules.euc.workflow.action.VOLATILE_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCurrentAlarm:Landroid/util/Pair;

    .line 330
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mContext:Landroid/content/Context;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/PendingIntent;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->getRemainingTimeout(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)J

    move-result-wide v4

    invoke-static {v3, v2, v4, v5}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 332
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method private timeoutMessage(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 6
    .param p1, "eucMessage"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 264
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v0

    .line 265
    .local v0, "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "eucId":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout message with id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout message with key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mHandleMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->hide(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mHandleMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;->invalidate()V

    .line 275
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->TIMED_OUT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v2, v0}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->remove(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 282
    goto :goto_2

    .line 281
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to change EUCs state in persistence for EUCR with id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to change EUCs state in persistence for EUCR with key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    goto :goto_1

    .line 283
    :goto_2
    return-void

    .line 281
    :goto_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v3, v0}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->remove(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 282
    throw v2
.end method

.method private unscheduleCurrentAlarmTimerIntent()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCurrentAlarm:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCurrentAlarm:Landroid/util/Pair;

    .line 340
    return-void
.end method


# virtual methods
.method public changeLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mLanguageCode:Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->changeLanguage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)V

    .line 182
    return-void
.end method

.method public createSendResponseCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
    .locals 1

    .line 186
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;-><init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V

    return-object v0
.end method

.method public bridge synthetic discard(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->discard(Ljava/lang/String;)V

    return-void
.end method

.method public handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    .locals 5
    .param p1, "eucQuery"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 159
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    .line 160
    .local v0, "eucData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIncomingEuc with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 163
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertDialogs(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to store EUC with key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in persistence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v1    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_0
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getTimeOut()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->put(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->scheduleNextAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 173
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mLanguageCode:Ljava/lang/String;

    .line 174
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->createDisplayManagerRequestCallback(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;

    move-result-object v3

    .line 173
    invoke-interface {v1, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->display(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;)V

    .line 176
    :cond_0
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 9
    .param p1, "ownIdentity"    # Ljava/lang/String;

    .line 109
    const-string v0, "Unable to obtain EUCs from persistence: "

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mOwnIdentities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 116
    .local v2, "states":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucState;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-interface {v3, v2, v4, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 119
    .local v3, "eucToSend":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 120
    .local v5, "message":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->isMessageTimedOut(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->timeoutMessage(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    goto :goto_1

    .line 122
    :cond_0
    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getState()Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    if-ne v6, v7, :cond_1

    .line 123
    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    .line 124
    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getUserPin()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_1
    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getState()Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    if-ne v6, v7, :cond_2

    .line 126
    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->DECLINE:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    .line 127
    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getUserPin()Ljava/lang/String;

    move-result-object v7

    .line 126
    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v5    # "message":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    :cond_2
    :goto_1
    goto :goto_0

    .line 132
    .end local v2    # "states":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucState;>;"
    .end local v3    # "eucToSend":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    :cond_3
    goto :goto_2

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v2    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-interface {v2, v3, v4, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, "eucList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mLanguageCode:Ljava/lang/String;

    invoke-interface {v3, v4, v1, v5, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getDialogsByTypes(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 140
    .local v3, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v4, v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->combine(Ljava/util/List;Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v4

    .line 142
    .local v4, "queries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 143
    .local v6, "message":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v7

    .line 144
    .local v7, "messageData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    invoke-direct {p0, v7}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->isMessageTimedOut(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 145
    invoke-direct {p0, v7}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->timeoutMessage(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 147
    .end local v6    # "message":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    .end local v7    # "messageData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    :cond_4
    goto :goto_3

    .line 148
    :cond_5
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->scheduleNextAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 150
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->loadToCache(Ljava/lang/Iterable;)V

    .line 151
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->displayQueries(Ljava/lang/Iterable;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    .end local v2    # "eucList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    .end local v3    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    .end local v4    # "queries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    goto :goto_4

    .line 152
    :catch_1
    move-exception v2

    .line 153
    .local v2, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v2    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_4
    return-void
.end method

.method public start()V
    .locals 5

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.internal.ims.servicemodules.euc.workflow.action.VOLATILE_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 98
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Receiver registered."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public stop()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Receiver unregistered."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method
