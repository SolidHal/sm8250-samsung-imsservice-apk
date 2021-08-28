.class public Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;
.super Ljava/lang/Object;
.source "VideoPreviewExtractor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor;


# static fields
.field private static final COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final EXTENSION:Ljava/lang/String; = "jpg"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MINI_DIMENSIONS:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUALITY:I = 0x4b


# instance fields
.field private mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->LOG_TAG:Ljava/lang/String;

    .line 30
    nop

    .line 31
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->MINI_DIMENSIONS:Landroid/util/Pair;

    .line 33
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/helper/picturetool/BitmapExtractor;)V
    .locals 0
    .param p1, "bitmapExtractor"    # Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    .line 41
    return-void
.end method

.method private calculatePreviewDimensions(Landroid/util/Pair;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 116
    .local p1, "videoDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->MINI_DIMENSIONS:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 118
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->MINI_DIMENSIONS:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 117
    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/helper/picturetool/VideoScaleCalculator;->calculate(IIII)Landroid/util/Pair;

    move-result-object v0

    .line 120
    .local v0, "previewDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    return-object v0
.end method

.method private static closeStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "stream"    # Ljava/io/OutputStream;

    .line 139
    if-eqz p0, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private extractDefaultBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "video"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/picturetool/BitmapExtractor;->extractFromVideo(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    .local v0, "thumb":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private extractFileNameCore(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "videoPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "lastDot":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 91
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v3, "lack of extension:%s"

    invoke-static {v3, v2}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->throwIOE(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method private extractVideoDimensions(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .param p1, "videoPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 101
    .local v0, "videoMeta":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 103
    nop

    .line 105
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    .local v1, "width":I
    nop

    .line 108
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 110
    .local v2, "height":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 5
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "destFilePath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "dataStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 193
    .local v1, "result":Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 195
    sget-object v2, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 196
    const/16 v3, 0x4b

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    move v1, v2

    .line 197
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {v0}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->closeStream(Ljava/io/OutputStream;)V

    .line 200
    nop

    .line 202
    if-nez v1, :cond_0

    .line 203
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "failure while compressing:%s,%d"

    invoke-static {v3, v2}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->throwIOE(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-void

    .line 199
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->closeStream(Ljava/io/OutputStream;)V

    .line 200
    throw v2
.end method

.method private static saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/util/Pair;)V
    .locals 8
    .param p0, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "destFilePath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/io/File;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    .local p2, "destDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 153
    .local v0, "dataStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 154
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 155
    .local v2, "result":Z
    const/4 v3, 0x0

    .local v3, "width":I
    const/4 v4, 0x0

    .line 158
    .local v4, "height":I
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 159
    iget-object v5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 160
    iget-object v5, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    goto :goto_0

    .line 162
    :cond_0
    iget-object v5, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 163
    iget-object v5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    .line 166
    :goto_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v5

    .line 168
    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v1, v6

    .line 170
    sget-object v6, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 171
    const/16 v7, 0x4b

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    move v2, v6

    .line 172
    invoke-virtual {v1, p0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 173
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    const/4 v1, 0x0

    .line 176
    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v0}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->closeStream(Ljava/io/OutputStream;)V

    .line 179
    nop

    .line 181
    if-nez v2, :cond_2

    .line 182
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v5, "failure while compressing:%s,%d"

    invoke-static {v5, v6}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->throwIOE(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_2
    return-void

    .line 178
    :catchall_0
    move-exception v5

    invoke-static {v0}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->closeStream(Ljava/io/OutputStream;)V

    .line 179
    throw v5
.end method

.method private static varargs throwIOE(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public extract(Ljava/io/File;Ljava/io/File;)Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;
    .locals 6
    .param p1, "originalFile"    # Ljava/io/File;
    .param p2, "destinationDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "videoPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->extractFileNameCore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "destPreviewName":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extract: destPreviewName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->extractDefaultBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 53
    .local v2, "defaultBitmap":Landroid/graphics/Bitmap;
    nop

    .line 54
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->extractVideoDimensions(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 53
    invoke-direct {p0, v3}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->calculatePreviewDimensions(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v3

    .line 56
    .local v3, "previewDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v1, p2}, Lcom/sec/internal/helper/picturetool/UniqueFilePathResolver;->getUniqueFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 58
    .local v4, "file":Ljava/io/File;
    sget-object v5, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->MINI_DIMENSIONS:Landroid/util/Pair;

    invoke-virtual {v5, v3}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    invoke-direct {p0, v2, v4}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v2, v4, v3}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/util/Pair;)V

    .line 63
    :goto_0
    new-instance v5, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;

    invoke-direct {v5, p0, v4, v3}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;-><init>(Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;Ljava/io/File;Landroid/util/Pair;)V

    return-object v5
.end method
