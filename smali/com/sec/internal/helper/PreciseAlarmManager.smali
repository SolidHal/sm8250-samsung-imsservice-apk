.class public Lcom/sec/internal/helper/PreciseAlarmManager;
.super Ljava/lang/Object;
.source "PreciseAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;
    }
.end annotation


# static fields
.field protected static final INTENT_ALARM_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.imsservice.alarmmanager"

.field private static final LOG_TAG:Ljava/lang/String; = "PreciseAlarmManager"

.field private static final PRECISION:I = 0xfa

.field private static final WAKE_LOCK_TIMEOUT:I = 0x2710

.field private static volatile sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mThread:Ljava/lang/Thread;

.field mTimers:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mThread:Ljava/lang/Thread;

    .line 41
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 237
    new-instance v0, Lcom/sec/internal/helper/PreciseAlarmManager$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/PreciseAlarmManager$2;-><init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.internal.ims.imsservice.alarmmanager"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->createWakelock()V

    .line 76
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "PreciseAlarmManager"

    const/16 v3, 0x1f4

    invoke-direct {v1, p1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 77
    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/helper/PreciseAlarmManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 30
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->registerAlarmManager()V

    return-void
.end method

.method private createWakelock()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 234
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "ImsService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 235
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/internal/helper/PreciseAlarmManager;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    if-nez v1, :cond_1

    .line 52
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    sget-object v1, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-direct {v1, p0}, Lcom/sec/internal/helper/PreciseAlarmManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 55
    invoke-static {}, Lcom/sec/internal/helper/PreciseAlarmManager;->isRoboUnitTest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    sget-object v1, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-direct {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->start()V

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    .line 50
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isRoboUnitTest()Z
    .locals 2

    .line 66
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v1, "robolectric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private registerAlarmManager()V
    .locals 11

    .line 81
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-lez v1, :cond_4

    .line 83
    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;

    .line 88
    .local v4, "msg":Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    const-string v5, "PreciseAlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "next the soonest timer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v7

    iget v7, v7, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {v4}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " timeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {v4}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$100(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " after msec="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {v4}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$100(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.internal.ims.imsservice.alarmmanager"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 101
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$100(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 102
    .local v6, "msec":J
    iget-object v3, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    move-wide v8, v6

    :cond_1
    invoke-static {v3, v2, v8, v9}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 103
    goto :goto_2

    .line 89
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "msec":J
    :cond_2
    :goto_1
    const-string v5, "PreciseAlarmManager"

    const-string v6, "message is wrong do not handle"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto/16 :goto_0

    .line 105
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;>;"
    .end local v4    # "msg":Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;
    :cond_3
    :goto_2
    goto :goto_3

    .line 107
    :cond_4
    const-string v1, "PreciseAlarmManager"

    const-string v4, "No pended alarm Timer. remove the registered timer from alarmManager."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.internal.ims.imsservice.alarmmanager"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 112
    .restart local v2    # "pi":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 114
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :goto_3
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private start()V
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/helper/PreciseAlarmManager$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/helper/PreciseAlarmManager$1;-><init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mThread:Ljava/lang/Thread;

    .line 186
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 187
    return-void
.end method

.method private wakeLockInfo(Ljava/lang/String;Landroid/os/Message;J)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "after"    # J

    .line 246
    if-eqz p2, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 251
    :goto_0
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreciseAlarmManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 256
    return-void
.end method

.method public declared-synchronized removeMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    monitor-enter p0

    .line 129
    :try_start_0
    const-string v0, "PreciseAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;-><init>(Landroid/os/Message;J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 132
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->registerAlarmManager()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 128
    .end local p0    # "this":Lcom/sec/internal/helper/PreciseAlarmManager;
    .end local p1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "millis"    # J

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v2, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p3

    invoke-direct {v2, p2, v3, v4}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;-><init>(Landroid/os/Message;J)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    .line 120
    const-string v1, "PreciseAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessageDelayed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", remaining timers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 121
    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :try_start_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/helper/PreciseAlarmManager;->wakeLockInfo(Ljava/lang/String;Landroid/os/Message;J)V

    .line 125
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->registerAlarmManager()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    monitor-exit p0

    return-void

    .line 122
    .end local p0    # "this":Lcom/sec/internal/helper/PreciseAlarmManager;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "msg":Landroid/os/Message;
    .end local p3    # "millis":J
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
