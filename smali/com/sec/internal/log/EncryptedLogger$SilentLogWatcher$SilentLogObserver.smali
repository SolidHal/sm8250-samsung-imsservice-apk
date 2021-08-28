.class Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;
.super Landroid/os/FileObserver;
.source "EncryptedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentLogObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;
    }
.end annotation


# static fields
.field public static final CHILD_PATH_REGEX:Ljava/lang/String; = "20\\d{6}_\\d{6}"


# instance fields
.field private lastWriteTime:J

.field private mPath:Ljava/nio/file/Path;

.field final synthetic this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;Ljava/nio/file/Path;)V
    .locals 0
    .param p2, "path"    # Ljava/nio/file/Path;

    .line 345
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    .line 346
    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/io/File;)V

    .line 341
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->timer:Ljava/util/Timer;

    .line 348
    iput-object p2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->mPath:Ljava/nio/file/Path;

    .line 349
    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    .line 338
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->mPath:Ljava/nio/file/Path;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    .line 338
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    .line 338
    iget-wide v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->lastWriteTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;
    .param p1, "x1"    # J

    .line 338
    iput-wide p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->lastWriteTime:J

    return-wide p1
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "eventPath"    # Ljava/lang/String;

    .line 398
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 399
    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "20\\d{6}_\\d{6}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->mPath:Ljava/nio/file/Path;

    invoke-interface {v0, p2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 401
    .local v0, "logPath":Ljava/nio/file/Path;
    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;-><init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;Ljava/nio/file/Path;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    .end local v0    # "logPath":Ljava/nio/file/Path;
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 407
    :goto_1
    return-void
.end method

.method public startWatching()V
    .locals 5

    .line 353
    invoke-super {p0}, Landroid/os/FileObserver;->startWatching()V

    .line 355
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWatching : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v2}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->access$200(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->getRoot()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v2}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->access$200(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v3}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->access$200(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->getNameCount()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;-><init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopWatching()V
    .locals 5

    .line 390
    invoke-super {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 392
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopWatching : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v2}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->access$200(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->getRoot()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v2}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->access$200(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v3}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->access$200(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->getNameCount()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method
