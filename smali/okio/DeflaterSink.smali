.class public final Lokio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lokio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V
    .locals 2
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-eqz p1, :cond_1

    .line 54
    if-eqz p2, :cond_0

    .line 55
    iput-object p1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    .line 56
    iput-object p2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    .line 57
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lokio/Sink;Ljava/util/zip/Deflater;)V
    .locals 1
    .param p1, "sink"    # Lokio/Sink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .line 44
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    .line 45
    return-void
.end method

.method private deflate(Z)V
    .locals 7
    .param p1, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v0

    .line 87
    .local v0, "buffer":Lokio/Buffer;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 93
    .local v1, "s":Lokio/Segment;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->limit:I

    rsub-int v5, v5, 0x800

    const/4 v6, 0x2

    .line 94
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->limit:I

    rsub-int v5, v5, 0x800

    .line 95
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_1
    nop

    .line 97
    .local v2, "deflated":I
    if-lez v2, :cond_1

    .line 98
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lokio/Segment;->limit:I

    .line 99
    iget-wide v3, v0, Lokio/Buffer;->size:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, v0, Lokio/Buffer;->size:J

    .line 100
    iget-object v3, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    goto :goto_2

    .line 101
    :cond_1
    iget-object v3, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_2

    .line 104
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 105
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 107
    :cond_2
    return-void

    .line 109
    .end local v1    # "s":Lokio/Segment;
    .end local v2    # "deflated":I
    :cond_3
    :goto_2
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-boolean v0, p0, Lokio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 129
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lokio/DeflaterSink;->finishDeflate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    goto :goto_0

    .line 130
    :catchall_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 135
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    goto :goto_1

    .line 136
    :catchall_1
    move-exception v1

    .line 137
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 141
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 144
    goto :goto_2

    .line 142
    :catchall_2
    move-exception v1

    .line 143
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 145
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/DeflaterSink;->closed:Z

    .line 147
    if-eqz v0, :cond_3

    invoke-static {v0}, Lokio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 148
    :cond_3
    return-void
.end method

.method finishDeflate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokio/DeflaterSink;->deflate(Z)V

    .line 120
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lokio/DeflaterSink;->deflate(Z)V

    .line 114
    iget-object v0, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 115
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 151
    iget-object v0, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 6
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-wide v0, p1, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 62
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 64
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 65
    .local v0, "head":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 66
    .local v1, "toDeflate":I
    iget-object v2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lokio/Segment;->data:[B

    iget v4, v0, Lokio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 69
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lokio/DeflaterSink;->deflate(Z)V

    .line 72
    iget-wide v2, p1, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lokio/Buffer;->size:J

    .line 73
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 74
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    .line 75
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 76
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 79
    :cond_0
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 80
    .end local v0    # "head":Lokio/Segment;
    .end local v1    # "toDeflate":I
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method
