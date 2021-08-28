.class Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;
.super Ljava/util/TimerTask;
.source "EncryptedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyTimerTask"
.end annotation


# instance fields
.field private mPath:Ljava/nio/file/Path;

.field final synthetic this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;


# direct methods
.method public constructor <init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;Ljava/nio/file/Path;)V
    .locals 0
    .param p2, "path"    # Ljava/nio/file/Path;

    .line 412
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 413
    iput-object p2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->mPath:Ljava/nio/file/Path;

    .line 414
    return-void
.end method

.method static synthetic lambda$run$0(Ljava/nio/file/Path;)Z
    .locals 2
    .param p0, "p"    # Ljava/nio/file/Path;

    .line 419
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->mPath:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask$gaQJIM5t1NJpsOLIWU7wD9LSf1I;->INSTANCE:Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask$gaQJIM5t1NJpsOLIWU7wD9LSf1I;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 420
    .local v0, "hasMainLog":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-static {v1}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->access$500(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->access$502(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;J)J

    .line 422
    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    iget-object v1, v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iget-object v1, v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    invoke-static {v1}, Lcom/sec/internal/log/EncryptedLogger;->access$600(Lcom/sec/internal/log/EncryptedLogger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v0    # "hasMainLog":Z
    :cond_0
    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
