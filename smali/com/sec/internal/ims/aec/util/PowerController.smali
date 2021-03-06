.class public Lcom/sec/internal/ims/aec/util/PowerController;
.super Ljava/lang/Object;
.source "PowerController.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mPhoneId:I

.field private final mTag:Ljava/lang/String;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-class v0, Lcom/sec/internal/ims/aec/util/PowerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PowerController;->LOG_TAG:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mPhoneId:I

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/PowerController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mTag:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 22
    .local v0, "pm":Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mTag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 23
    return-void
.end method


# virtual methods
.method public lock(J)V
    .locals 3
    .param p1, "timeout"    # J

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PowerController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 28
    return-void
.end method

.method public release()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PowerController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 35
    :cond_0
    return-void
.end method

.method public sleep(J)V
    .locals 3
    .param p1, "millis"    # J

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PowerController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sleep: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/PowerController;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 44
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method
