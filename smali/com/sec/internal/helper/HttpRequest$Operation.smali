.class public abstract Lcom/sec/internal/helper/HttpRequest$Operation;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 435
    .local p0, "this":Lcom/sec/internal/helper/HttpRequest$Operation;, "Lcom/sec/internal/helper/HttpRequest$Operation<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 451
    .local p0, "this":Lcom/sec/internal/helper/HttpRequest$Operation;, "Lcom/sec/internal/helper/HttpRequest$Operation<TV;>;"
    const/4 v0, 0x0

    .line 453
    .local v0, "thrown":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest$Operation;->run()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest$Operation;->done()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 467
    goto :goto_0

    .line 463
    :catch_0
    move-exception v2

    .line 464
    .local v2, "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 453
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 465
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v2}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 461
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 457
    :catch_1
    move-exception v1

    .line 458
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 459
    :try_start_2
    new-instance v2, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v2, v1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    .end local v0    # "thrown":Z
    .end local p0    # "this":Lcom/sec/internal/helper/HttpRequest$Operation;, "Lcom/sec/internal/helper/HttpRequest$Operation<TV;>;"
    throw v2

    .line 454
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "thrown":Z
    .restart local p0    # "this":Lcom/sec/internal/helper/HttpRequest$Operation;, "Lcom/sec/internal/helper/HttpRequest$Operation<TV;>;"
    :catch_2
    move-exception v1

    .line 455
    .local v1, "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    const/4 v0, 0x1

    .line 456
    nop

    .end local v0    # "thrown":Z
    .end local p0    # "this":Lcom/sec/internal/helper/HttpRequest$Operation;, "Lcom/sec/internal/helper/HttpRequest$Operation<TV;>;"
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    .end local v1    # "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    .restart local v0    # "thrown":Z
    .restart local p0    # "this":Lcom/sec/internal/helper/HttpRequest$Operation;, "Lcom/sec/internal/helper/HttpRequest$Operation<TV;>;"
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest$Operation;->done()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 467
    goto :goto_2

    .line 463
    :catch_3
    move-exception v2

    .line 464
    .restart local v2    # "e":Ljava/io/IOException;
    if-nez v0, :cond_1

    .line 465
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v2}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 468
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    throw v1
.end method

.method protected abstract done()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract run()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
