.class Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;
.super Ljava/util/TimerTask;
.source "EncryptedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->startWatching()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;


# direct methods
.method constructor <init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)V
    .locals 0
    .param p1, "this$2"    # Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    .line 358
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 3
    .param p0, "p1"    # Ljava/nio/file/Path;
    .param p1, "p2"    # Ljava/nio/file/Path;

    .line 365
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-static {v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->access$300(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$1$vcm2YZzfx1Co4i0Ej92wiKdgjjg;->INSTANCE:Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$1$vcm2YZzfx1Co4i0Ej92wiKdgjjg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v0

    .line 371
    .local v0, "pathOption":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/nio/file/Path;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    .line 373
    .local v1, "lastModifiedPath":Ljava/nio/file/Path;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 374
    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "20\\d{6}_\\d{6}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-static {v2}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->access$400(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;

    iget-object v4, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-direct {v3, v4, v1}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;-><init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;Ljava/nio/file/Path;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v0    # "pathOption":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/nio/file/Path;>;"
    .end local v1    # "lastModifiedPath":Ljava/nio/file/Path;
    :cond_0
    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
