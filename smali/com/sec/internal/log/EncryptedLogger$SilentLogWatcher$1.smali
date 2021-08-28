.class Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;
.super Landroid/os/FileObserver;
.source "EncryptedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;-><init>(Lcom/sec/internal/log/EncryptedLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

.field final synthetic val$index:I

.field final synthetic val$this$0:Lcom/sec/internal/log/EncryptedLogger;


# direct methods
.method constructor <init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;Ljava/io/File;Lcom/sec/internal/log/EncryptedLogger;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;
    .param p2, "arg0"    # Ljava/io/File;

    .line 272
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iput-object p3, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$this$0:Lcom/sec/internal/log/EncryptedLogger;

    iput p4, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "eventPath"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->access$200(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "child":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    and-int/lit16 v1, p1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    .line 278
    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iget-object v1, v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    iget v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0

    .line 279
    :cond_0
    and-int/lit16 v1, p1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_1

    .line 280
    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iget-object v1, v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    iget v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 283
    :cond_1
    :goto_0
    return-void
.end method

.method public startWatching()V
    .locals 4

    .line 287
    invoke-super {p0}, Landroid/os/FileObserver;->startWatching()V

    .line 289
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->access$200(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getRoot()Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v1}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->access$200(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 291
    .local v0, "childPath":Ljava/nio/file/Path;
    new-array v1, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iget-object v1, v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    iget v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 294
    :cond_0
    return-void
.end method

.method public stopWatching()V
    .locals 2

    .line 298
    invoke-super {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 300
    iget v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    add-int/lit8 v0, v0, 0x1

    .local v0, "x":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iget-object v1, v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iget-object v1, v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    .end local v0    # "x":I
    :cond_0
    return-void
.end method
