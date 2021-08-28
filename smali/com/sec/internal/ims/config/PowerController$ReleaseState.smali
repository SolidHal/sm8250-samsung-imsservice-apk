.class Lcom/sec/internal/ims/config/PowerController$ReleaseState;
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
    name = "ReleaseState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/PowerController;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/PowerController;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/PowerController;

    .line 77
    iput-object p1, p0, Lcom/sec/internal/ims/config/PowerController$ReleaseState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->access$000(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReleaseState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->access$100(Lcom/sec/internal/ims/config/PowerController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->access$100(Lcom/sec/internal/ims/config/PowerController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized lock()V
    .locals 3

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$ReleaseState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    new-instance v1, Lcom/sec/internal/ims/config/PowerController$LockState;

    iget-object v2, p0, Lcom/sec/internal/ims/config/PowerController$ReleaseState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/PowerController$LockState;-><init>(Lcom/sec/internal/ims/config/PowerController;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 85
    .end local p0    # "this":Lcom/sec/internal/ims/config/PowerController$ReleaseState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$ReleaseState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {v0}, Lcom/sec/internal/ims/config/PowerController;->access$000(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "already released"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 90
    .end local p0    # "this":Lcom/sec/internal/ims/config/PowerController$ReleaseState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sleep(J)V
    .locals 3
    .param p1, "time"    # J

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$ReleaseState;->this$0:Lcom/sec/internal/ims/config/PowerController;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    goto :goto_0

    .line 99
    .end local p0    # "this":Lcom/sec/internal/ims/config/PowerController$ReleaseState;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 102
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$ReleaseState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {v0}, Lcom/sec/internal/ims/config/PowerController;->access$000(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "--- sleep end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 95
    .end local p1    # "time":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
