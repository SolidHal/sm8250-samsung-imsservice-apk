.class public final Lcom/squareup/okhttp/internal/framed/FramedStream;
.super Ljava/lang/Object;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;,
        Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;,
        Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field private final connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field private errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

.field private final id:I

.field private final readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field final sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

.field private final source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

.field unacknowledgedBytesRead:J

.field private final writeTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 35
    return-void
.end method

.method constructor <init>(ILcom/squareup/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "connection"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/okhttp/internal/framed/FramedConnection;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 66
    new-instance v0, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;-><init>(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    .line 67
    new-instance v0, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;-><init>(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 78
    if-eqz p2, :cond_1

    .line 79
    if-eqz p5, :cond_0

    .line 80
    iput p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    .line 81
    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 82
    iget-object v1, p2, Lcom/squareup/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    .line 83
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 84
    new-instance v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    iget-object v3, p2, Lcom/squareup/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    .line 85
    invoke-virtual {v3, v2}, Lcom/squareup/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;-><init>(Lcom/squareup/okhttp/internal/framed/FramedStream;JLcom/squareup/okhttp/internal/framed/FramedStream$1;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    .line 86
    new-instance v0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;-><init>(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 87
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0, p4}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$102(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$202(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 89
    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    .line 90
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->cancelStreamIfNecessary()V

    return-void
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 35
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->checkOutNotClosed()V

    return-void
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 35
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/framed/FramedStream;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 35
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    return v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 35
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 35
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    return-object v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->waitForIo()V

    return-void
.end method

.method private cancelStreamIfNecessary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    nop

    .line 451
    monitor-enter p0

    .line 452
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$100(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$300(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$400(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    move v2, v1

    .line 453
    .local v2, "cancel":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    .local v0, "open":Z
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 455
    if-eqz v2, :cond_2

    .line 460
    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_1

    .line 461
    :cond_2
    if-nez v0, :cond_3

    .line 462
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 464
    :cond_3
    :goto_1
    return-void

    .line 454
    .end local v0    # "open":Z
    :catchall_0
    move-exception v1

    goto :goto_2

    .end local v2    # "cancel":Z
    :catchall_1
    move-exception v1

    move v2, v0

    .restart local v0    # "open":Z
    .restart local v2    # "cancel":Z
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    goto :goto_2
.end method

.method private checkOutNotClosed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$400(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    .line 580
    return-void

    .line 578
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeInternal(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z
    .locals 2
    .param p1, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 238
    nop

    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 241
    monitor-exit p0

    return v1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$100(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    monitor-exit p0

    return v1

    .line 246
    :cond_1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 248
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 250
    const/4 v0, 0x1

    return v0

    .line 248
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private waitForIo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 588
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    nop

    .line 592
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 2
    .param p1, "delta"    # J

    .line 568
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 569
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 570
    :cond_0
    return-void
.end method

.method public close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 2
    .param p1, "rstStatusCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->closeInternal(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeSynReset(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 223
    return-void
.end method

.method public closeLater(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 230
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->closeInternal(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 234
    return-void
.end method

.method public getConnection()Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 154
    .end local p0    # "this":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    return v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 139
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->waitForIo()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 144
    nop

    .line 145
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    .line 146
    .end local p0    # "this":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :catchall_1
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 136
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSink()Lokio/Sink;
    .locals 2

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/squareup/okhttp/internal/framed/FramedStream;
    throw v0

    .line 210
    .restart local p0    # "this":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    return-object v0

    .line 210
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSource()Lokio/Source;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .locals 4

    .line 120
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 121
    .local v0, "streamIsClient":Z
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-boolean v3, v3, Lcom/squareup/okhttp/internal/framed/FramedConnection;->client:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    monitor-exit p0

    return v1

    .line 110
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$100(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$300(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_3

    .end local p0    # "this":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 111
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$400(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 113
    monitor-exit p0

    return v1

    .line 115
    .restart local p0    # "this":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :cond_3
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 106
    .end local p0    # "this":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lokio/Timeout;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Lokio/BufferedSource;I)V
    .locals 3
    .param p1, "in"    # Lokio/BufferedSource;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    nop

    .line 286
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->receive(Lokio/BufferedSource;J)V

    .line 287
    return-void
.end method

.method receiveFin()V
    .locals 3

    .line 290
    nop

    .line 292
    monitor-enter p0

    .line 293
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$102(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 294
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .local v0, "open":Z
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 296
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    if-nez v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 300
    :cond_0
    return-void

    .line 296
    .end local v0    # "open":Z
    :catchall_0
    move-exception v1

    .restart local v0    # "open":Z
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_0
.end method

.method receiveHeaders(Ljava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
    .locals 4
    .param p2, "headersMode"    # Lcom/squareup/okhttp/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/squareup/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 254
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    nop

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    const/4 v1, 0x1

    .line 257
    .local v1, "open":Z
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v2, :cond_1

    .line 259
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-object v0, v2

    goto :goto_0

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 263
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    move v1, v2

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->STREAM_IN_USE:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-object v0, v2

    goto :goto_0

    .line 270
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v2, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iput-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 276
    .end local v2    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->closeLater(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_1

    .line 279
    :cond_3
    if-nez v1, :cond_4

    .line 280
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 282
    :cond_4
    :goto_1
    return-void

    .line 276
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method declared-synchronized receiveRstStream(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    .line 304
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .end local p0    # "this":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :cond_0
    monitor-exit p0

    return-void

    .line 302
    .end local p1    # "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reply(Ljava/util/List;Z)V
    .locals 3
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    nop

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "outFinished":Z
    monitor-enter p0

    .line 167
    if-eqz p1, :cond_3

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v1, :cond_2

    .line 173
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 174
    if-nez p2, :cond_0

    .line 175
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$202(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 176
    const/4 v0, 0x1

    .line 178
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v2, v0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeSynReply(IZLjava/util/List;)V

    .line 181
    if-eqz v0, :cond_1

    .line 182
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->flush()V

    .line 184
    :cond_1
    return-void

    .line 171
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "reply already sent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outFinished":Z
    .end local p0    # "this":Lcom/squareup/okhttp/internal/framed/FramedStream;
    .end local p1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    .end local p2    # "out":Z
    throw v1

    .line 178
    .restart local v0    # "outFinished":Z
    .restart local p0    # "this":Lcom/squareup/okhttp/internal/framed/FramedStream;
    .restart local p1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    .restart local p2    # "out":Z
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 168
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "responseHeaders == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outFinished":Z
    .end local p0    # "this":Lcom/squareup/okhttp/internal/framed/FramedStream;
    .end local p1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    .end local p2    # "out":Z
    throw v1

    .line 178
    .restart local v0    # "outFinished":Z
    .restart local p0    # "this":Lcom/squareup/okhttp/internal/framed/FramedStream;
    .restart local p1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    .restart local p2    # "out":Z
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public writeTimeout()Lokio/Timeout;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method
