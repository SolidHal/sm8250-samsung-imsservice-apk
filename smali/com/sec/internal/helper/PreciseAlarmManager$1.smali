.class Lcom/sec/internal/helper/PreciseAlarmManager$1;
.super Ljava/lang/Object;
.source "PreciseAlarmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/helper/PreciseAlarmManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/PreciseAlarmManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 136
    iput-object p1, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v0, v0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    .line 143
    .local v0, "remaining":I
    if-lez v0, :cond_3

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 145
    .local v1, "current":J
    const/4 v3, 0x0

    .line 146
    .local v3, "remainingAfterRun":I
    iget-object v4, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v4, v4, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 147
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;

    .line 150
    .local v5, "msg":Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;
    const-string v6, "PreciseAlarmManager"

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v5}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    invoke-static {v5}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$100(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_2

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expiring message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v8

    iget v8, v8, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {v5}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {v5}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$100(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v7, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v7, Lcom/sec/internal/helper/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 161
    invoke-static {v5}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 162
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remaining timers "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v8, v8, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 151
    :cond_1
    :goto_2
    const-string v7, "message is wrong do not handle"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 153
    goto/16 :goto_1

    .line 168
    .end local v5    # "msg":Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v5, v5, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v3

    .line 170
    if-eq v3, v0, :cond_3

    .line 171
    iget-object v5, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-static {v5}, Lcom/sec/internal/helper/PreciseAlarmManager;->access$200(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    .line 178
    .end local v1    # "current":J
    .end local v3    # "remainingAfterRun":I
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;>;"
    :cond_3
    const-wide/16 v1, 0xfa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_3

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 182
    .end local v0    # "remaining":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_3
    goto/16 :goto_0
.end method
