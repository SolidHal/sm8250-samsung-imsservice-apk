.class public Lcom/sec/internal/helper/httpclient/GzipCompressionUtil;
.super Ljava/lang/Object;
.source "GzipCompressionUtil.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/sec/internal/helper/httpclient/GzipCompressionUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/httpclient/GzipCompressionUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/httpclient/GzipCompressionUtil;->compress([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static compress([B)[B
    .locals 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 21
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 22
    .local v1, "gos":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 23
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 25
    .local v2, "compressed":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 26
    return-object v2
.end method

.method public static decompress([B)Ljava/lang/String;
    .locals 7
    .param p0, "compressed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 31
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    const/16 v2, 0x20

    invoke-direct {v1, v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 32
    .local v1, "gis":Ljava/util/zip/GZIPInputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v3, "string":Ljava/lang/StringBuilder;
    new-array v2, v2, [B

    .line 36
    .local v2, "data":[B
    :goto_0
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "bytesRead":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 37
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 40
    :cond_0
    nop

    .line 41
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 40
    .end local v5    # "bytesRead":I
    :catchall_0
    move-exception v4

    .line 41
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 43
    throw v4
.end method
