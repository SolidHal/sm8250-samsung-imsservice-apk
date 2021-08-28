.class Lcom/sec/internal/ims/config/PowerController$LockState;
.super Ljava/lang/Object;
.source "PowerController.java"

# interfaces
.implements Lcom/sec/internal/ims/config/PowerController$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/PowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/PowerController;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/PowerController;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/PowerController;

    .line 108
    iput-object p1, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->access$000(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->access$100(Lcom/sec/internal/ims/config/PowerController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->access$200(Lcom/sec/internal/ims/config/PowerController;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 111
    return-void
.end method


# virtual methods
.method public declared-synchronized lock()V
    .locals 2

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {v0}, Lcom/sec/internal/ims/config/PowerController;->access$000(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "already locked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 114
    .end local p0    # "this":Lcom/sec/internal/ims/config/PowerController$LockState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    new-instance v1, Lcom/sec/internal/ims/config/PowerController$ReleaseState;

    iget-object v2, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/PowerController$ReleaseState;-><init>(Lcom/sec/internal/ims/config/PowerController;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 119
    .end local p0    # "this":Lcom/sec/internal/ims/config/PowerController$LockState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sleep(J)V
    .locals 7
    .param p1, "time"    # J

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {v0}, Lcom/sec/internal/ims/config/PowerController;->access$000(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ sleep start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x64

    :goto_0
    sub-long v0, p1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0xa

    div-long v0, p1, v0

    goto :goto_0

    .line 127
    .local v0, "waketime":J
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    iget-object v2, v2, Lcom/sec/internal/ims/config/PowerController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    iget-object v6, v6, Lcom/sec/internal/ims/config/PowerController;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 128
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController$LockState;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    goto :goto_2

    .line 131
    .end local p0    # "this":Lcom/sec/internal/ims/config/PowerController$LockState;
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 134
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    iget-object v2, v2, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    invoke-interface {v2}, Lcom/sec/internal/ims/config/PowerController$State;->lock()V

    .line 135
    iget-object v2, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    iget-object v2, v2, Lcom/sec/internal/ims/config/PowerController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    iget-object v3, v3, Lcom/sec/internal/ims/config/PowerController;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 136
    iget-object v2, p0, Lcom/sec/internal/ims/config/PowerController$LockState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {v2}, Lcom/sec/internal/ims/config/PowerController;->access$000(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "--- sleep end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 124
    .end local v0    # "waketime":J
    .end local p1    # "time":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
