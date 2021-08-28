.class public abstract Lcom/sec/internal/helper/HttpRequest$CloseOperation;
.super Lcom/sec/internal/helper/HttpRequest$Operation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "CloseOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sec/internal/helper/HttpRequest$Operation<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final closeable:Ljava/io/Closeable;

.field fileOutputStream:Ljava/io/FileOutputStream;

.field private final ignoreCloseExceptions:Z


# direct methods
.method protected constructor <init>(Ljava/io/Closeable;ZLjava/io/FileOutputStream;)V
    .locals 0
    .param p1, "closeable"    # Ljava/io/Closeable;
    .param p2, "ignoreCloseExceptions"    # Z
    .param p3, "fileOutputStream"    # Ljava/io/FileOutputStream;

    .line 486
    .local p0, "this":Lcom/sec/internal/helper/HttpRequest$CloseOperation;, "Lcom/sec/internal/helper/HttpRequest$CloseOperation<TV;>;"
    invoke-direct {p0}, Lcom/sec/internal/helper/HttpRequest$Operation;-><init>()V

    .line 487
    iput-object p1, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    .line 488
    iput-boolean p2, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->ignoreCloseExceptions:Z

    .line 489
    iput-object p3, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 490
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    .local p0, "this":Lcom/sec/internal/helper/HttpRequest$CloseOperation;, "Lcom/sec/internal/helper/HttpRequest$CloseOperation<TV;>;"
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    instance-of v1, v0, Ljava/io/Flushable;

    if-eqz v1, :cond_0

    .line 495
    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 497
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_2

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 500
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 505
    :cond_1
    :goto_0
    goto :goto_1

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 508
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_3

    .line 509
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 512
    :cond_3
    :goto_1
    return-void
.end method
