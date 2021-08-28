.class Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;
.super Ljava/lang/Object;
.source "ImsLoggerPlus.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 37
    invoke-static {}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->access$102(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->access$202(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->access$302(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Z)Z

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    invoke-static {v0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->access$400(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)V

    .line 43
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 47
    invoke-static {}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->access$202(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->access$102(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->access$302(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Z)Z

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    invoke-static {v0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->access$500(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 52
    return-void
.end method
