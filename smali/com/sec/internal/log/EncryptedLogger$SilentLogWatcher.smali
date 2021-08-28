.class Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;
.super Ljava/lang/Object;
.source "EncryptedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/log/EncryptedLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentLogWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;
    }
.end annotation


# instance fields
.field EVENT:[I

.field NAME:[Ljava/lang/String;

.field private final SILENT_LOG_HOME:Ljava/nio/file/Path;

.field fileObservers:[Landroid/os/FileObserver;

.field final synthetic this$0:Lcom/sec/internal/log/EncryptedLogger;


# direct methods
.method public constructor <init>(Lcom/sec/internal/log/EncryptedLogger;)V
    .locals 17

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "/sdcard/log/ap_silentlog"

    invoke-static {v4, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->SILENT_LOG_HOME:Ljava/nio/file/Path;

    .line 265
    invoke-interface {v3}, Ljava/nio/file/Path;->getNameCount()I

    move-result v3

    new-array v3, v3, [Landroid/os/FileObserver;

    iput-object v3, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    .line 314
    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->EVENT:[I

    .line 320
    const-string v4, "ACCESS"

    const-string v5, "MODIFY"

    const-string v6, "ATTRIB"

    const-string v7, "CLOSE_WRITE"

    const-string v8, "CLOSE_NOWRITE"

    const-string v9, "OPEN"

    const-string v10, "MOVED_FROM"

    const-string v11, "MOVED_TO"

    const-string v12, "CREATE"

    const-string v13, "DELETE"

    const-string v14, "DELETE_SELF"

    const-string v15, "MOVE_SELF"

    const-string v16, "ALL_EVENTS"

    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->NAME:[Ljava/lang/String;

    .line 269
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->SILENT_LOG_HOME:Ljava/nio/file/Path;

    invoke-interface {v4}, Ljava/nio/file/Path;->getNameCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 270
    move v4, v3

    .line 271
    .local v4, "index":I
    iget-object v5, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->SILENT_LOG_HOME:Ljava/nio/file/Path;

    invoke-interface {v5}, Ljava/nio/file/Path;->getRoot()Ljava/nio/file/Path;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->SILENT_LOG_HOME:Ljava/nio/file/Path;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v6, v2, v7}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v5

    .line 272
    .local v5, "subPath":Ljava/nio/file/Path;
    iget-object v6, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    new-instance v7, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;

    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v0, v8, v1, v4}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;-><init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;Ljava/io/File;Lcom/sec/internal/log/EncryptedLogger;I)V

    aput-object v7, v6, v4

    .line 269
    .end local v4    # "index":I
    .end local v5    # "subPath":Ljava/nio/file/Path;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    new-instance v2, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    iget-object v4, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->SILENT_LOG_HOME:Ljava/nio/file/Path;

    invoke-direct {v2, v0, v4}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;-><init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;Ljava/nio/file/Path;)V

    aput-object v2, v1, v3

    .line 307
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0xfff
    .end array-data
.end method

.method static synthetic access$200(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    .line 262
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->SILENT_LOG_HOME:Ljava/nio/file/Path;

    return-object v0
.end method

.method private translateEvent(I)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # I

    .line 327
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->EVENT:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 330
    aget v3, v2, v1

    and-int/2addr v3, p1

    aget v2, v2, v1

    if-ne v3, v2, :cond_0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->NAME:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public startWatch()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 311
    return-void
.end method
