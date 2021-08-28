.class Lcom/sec/internal/log/EncryptedLogger$1;
.super Ljava/lang/Thread;
.source "EncryptedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/log/EncryptedLogger;->startSilentLogWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/log/EncryptedLogger;


# direct methods
.method constructor <init>(Lcom/sec/internal/log/EncryptedLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/log/EncryptedLogger;

    .line 238
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$1;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 241
    const/16 v0, 0xa

    .line 242
    .local v0, "countDown":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "countDown":I
    .local v1, "countDown":I
    if-lez v0, :cond_1

    .line 243
    :try_start_0
    const-string v0, "/sdcard"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$1;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    new-instance v2, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iget-object v3, p0, Lcom/sec/internal/log/EncryptedLogger$1;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    invoke-direct {v2, v3}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;-><init>(Lcom/sec/internal/log/EncryptedLogger;)V

    invoke-static {v0, v2}, Lcom/sec/internal/log/EncryptedLogger;->access$002(Lcom/sec/internal/log/EncryptedLogger;Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    .line 245
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$1;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    invoke-static {v0}, Lcom/sec/internal/log/EncryptedLogger;->access$000(Lcom/sec/internal/log/EncryptedLogger;)Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->startWatch()V

    .line 246
    const/4 v0, 0x0

    .end local v1    # "countDown":I
    .restart local v0    # "countDown":I
    goto :goto_0

    .line 248
    .end local v0    # "countDown":I
    .restart local v1    # "countDown":I
    :cond_0
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/sdcard is not mounted yet"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 255
    .end local v1    # "countDown":I
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    nop

    .line 258
    :goto_1
    return-void
.end method
