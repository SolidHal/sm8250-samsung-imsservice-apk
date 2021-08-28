.class public Lcom/sec/internal/ims/util/ThumbnailTool;
.super Landroid/os/Handler;
.source "ThumbnailTool.java"

# interfaces
.implements Lcom/sec/internal/ims/util/IThumbnailTool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    }
.end annotation


# static fields
.field private static final EVT_THUMBNAIL_CREATE:I = 0x3e8

.field private static final EVT_THUMBNAIL_CREATE_FROM_IMAGE:I = 0x3e9

.field private static final EVT_THUMBNAIL_CREATE_FROM_IMAGE_AS_SIZE:I = 0x3ea

.field private static final EVT_THUMBNAIL_CREATE_FROM_VIDEO:I = 0x3eb

.field private static final EVT_THUMBNAIL_CREATE_FROM_VIDEO_AS_SIZE:I = 0x3ec

.field private static final EXT_PNG:Ljava/lang/String; = "image/png"

.field private static final IMAGE_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ThumbnailTool"

.field private static final SUBDIR_NAME:Ljava/lang/String; = ".rcs_thumbnail"

.field private static final VIDEO_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

.field private mComplexImageExtractor:Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

.field private mContentTypeContextCreator:Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;

.field private mContext:Landroid/content/Context;

.field private mImageDimensionsExtractor:Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;

.field private mPanicDescriptor:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private mSavedDir:Ljava/lang/String;

.field private mVideoPreviewExtractor:Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 62
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "JPG"

    const-string v2, "JPEG"

    const-string v3, "BMP"

    const-string v4, "PNG"

    const-string v5, "GIF"

    const-string v6, "WBMP"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/internal/ims/util/ThumbnailTool;->IMAGE_EXTENSIONS:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "3GP"

    const-string v2, "MP4"

    const-string v3, "AVI"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/internal/ims/util/ThumbnailTool;->VIDEO_EXTENSIONS:Ljava/util/Set;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    invoke-direct {v0}, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mComplexImageExtractor:Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    .line 90
    new-instance v0, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;

    invoke-direct {v0}, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mImageDimensionsExtractor:Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;

    .line 91
    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Lcom/sec/internal/helper/picturetool/PanicCompressionDescriptor;

    invoke-direct {v0}, Lcom/sec/internal/helper/picturetool/PanicCompressionDescriptor;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mPanicDescriptor:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 93
    new-instance v0, Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    invoke-direct {v0}, Lcom/sec/internal/helper/picturetool/BitmapExtractor;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    .line 94
    new-instance v0, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;

    invoke-direct {v0}, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mContentTypeContextCreator:Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;

    .line 95
    new-instance v0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    iget-object v1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;-><init>(Lcom/sec/internal/helper/picturetool/BitmapExtractor;)V

    iput-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mVideoPreviewExtractor:Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    .line 96
    return-void
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 4
    .param p1, "cloaseable"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    if-eqz p1, :cond_0

    .line 505
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t close stream: e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private createThumbFromImage(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;
    .locals 27
    .param p1, "originalFile"    # Ljava/io/File;
    .param p2, "destinationDirectory"    # Ljava/io/File;
    .param p3, "maxSize"    # J
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I

    .line 257
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v14, p3

    move/from16 v9, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createThumbFromImage: [originalFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", destinationDirectory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "ThumbnailTool"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v1, 0x0

    .line 267
    .local v1, "complexImage":Ljava/io/File;
    :try_start_0
    iget-object v0, v10, Lcom/sec/internal/ims/util/ThumbnailTool;->mComplexImageExtractor:Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    invoke-virtual {v0, v11}, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->extractFrom(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    .line 268
    iget-object v0, v10, Lcom/sec/internal/ims/util/ThumbnailTool;->mComplexImageExtractor:Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    invoke-virtual {v0}, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    move-object v0, v1

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "could not extract complex image"

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 273
    .end local v1    # "complexImage":Ljava/io/File;
    .local v0, "complexImage":Ljava/io/File;
    :goto_0
    const/16 v16, 0x0

    if-nez v0, :cond_0

    .line 274
    const-string v1, "complexImage == null"

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-object v16

    .line 277
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 278
    .local v7, "imageSize":J
    invoke-direct {v10, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->getImageDimensions(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v5

    .line 279
    .local v5, "imageDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v5, :cond_1

    .line 280
    const-string v1, "imageDimensions == null"

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v16

    .line 284
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbFromImage: imageSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dimension="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", maxWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    cmp-long v1, v7, v14

    if-gtz v1, :cond_2

    iget-object v1, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v9, :cond_2

    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 288
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v6, p6

    if-gt v1, v6, :cond_3

    .line 289
    invoke-virtual {v10, v0, v12}, Lcom/sec/internal/ims/util/ThumbnailTool;->createCopyPaste(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 287
    :cond_2
    move/from16 v6, p6

    .line 292
    :cond_3
    iget-object v1, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 293
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 292
    move-wide v1, v7

    move-object v11, v5

    .end local v5    # "imageDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v11, "imageDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-wide/from16 v5, p3

    move-wide/from16 v23, v7

    .end local v7    # "imageSize":J
    .local v23, "imageSize":J
    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v1 .. v8}, Lcom/sec/internal/helper/picturetool/ReadScaleCalculator;->calculate(JIIJII)I

    move-result v25

    .line 295
    .local v25, "readScale":I
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 296
    .local v26, "ext":Ljava/lang/String;
    if-nez v26, :cond_4

    .line 297
    const-string v1, "ext == null"

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-object v16

    .line 300
    :cond_4
    invoke-static/range {v26 .. v26}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, "contentType":Ljava/lang/String;
    const-string v1, "image/png"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    cmp-long v1, v23, v14

    if-gtz v1, :cond_5

    .line 304
    new-instance v8, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;

    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 305
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, v10, Lcom/sec/internal/ims/util/ThumbnailTool;->mPanicDescriptor:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-object v1, v8

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;-><init>(IIIILcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V

    move-object v13, v1

    .local v1, "descriptor":Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    goto :goto_1

    .line 308
    .end local v1    # "descriptor":Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    :cond_5
    new-instance v1, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    iget-object v2, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 309
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v2, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v2, v10, Lcom/sec/internal/ims/util/ThumbnailTool;->mPanicDescriptor:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-object v13, v1

    move-wide/from16 v14, v23

    move-wide/from16 v18, p3

    move/from16 v20, p5

    move/from16 v21, p6

    move-object/from16 v22, v2

    invoke-direct/range {v13 .. v22}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;-><init>(JIIJIILcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V

    .line 312
    .local v13, "descriptor":Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    :goto_1
    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, p2

    move/from16 v4, v25

    move-wide/from16 v5, v23

    move-object v14, v7

    .end local v7    # "contentType":Ljava/lang/String;
    .local v14, "contentType":Ljava/lang/String;
    move-wide/from16 v7, p3

    move-object v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromStillPicture(Ljava/io/File;Ljava/io/File;IJJLcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createThumbFromMotionPicture(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;
    .locals 29
    .param p1, "originalFile"    # Ljava/io/File;
    .param p2, "destinationDirectory"    # Ljava/io/File;
    .param p3, "maxSize"    # J
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    .line 529
    move-object/from16 v10, p0

    const-string/jumbo v11, "tmpFile.delete() error"

    const/4 v0, 0x0

    .line 530
    .local v0, "file":Ljava/io/File;
    iget-object v1, v10, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 530
    :cond_0
    move-object v12, v0

    .line 533
    .end local v0    # "file":Ljava/io/File;
    .local v12, "file":Ljava/io/File;
    :goto_0
    const-string v13, "ThumbnailTool"

    if-nez v12, :cond_1

    .line 534
    const-string v0, "file == null"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x0

    return-object v0

    .line 537
    :cond_1
    iget-object v0, v10, Lcom/sec/internal/ims/util/ThumbnailTool;->mVideoPreviewExtractor:Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    move-object/from16 v14, p1

    invoke-virtual {v0, v14, v12}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->extract(Ljava/io/File;Ljava/io/File;)Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;

    move-result-object v15

    .line 539
    .local v15, "videoPreview":Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;
    invoke-interface {v15}, Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;->getFile()Ljava/io/File;

    move-result-object v8

    .line 540
    .local v8, "tmpFile":Ljava/io/File;
    iget-object v0, v10, Lcom/sec/internal/ims/util/ThumbnailTool;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    const/4 v1, 0x1

    .line 541
    invoke-virtual {v0, v8, v1}, Lcom/sec/internal/helper/picturetool/BitmapExtractor;->extractFromImage(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 542
    .local v16, "originalThumbnail":Landroid/graphics/Bitmap;
    invoke-interface {v15}, Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;->getDimensions()Landroid/util/Pair;

    move-result-object v6

    .line 544
    .local v6, "imageDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v15}, Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;->getSize()J

    move-result-wide v27

    .line 547
    .local v27, "imageSize":J
    new-instance v9, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 548
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget-object v0, v10, Lcom/sec/internal/ims/util/ThumbnailTool;->mPanicDescriptor:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-object/from16 v17, v9

    move-wide/from16 v18, v27

    move-wide/from16 v22, p3

    move/from16 v24, p5

    move/from16 v25, p6

    move-object/from16 v26, v0

    invoke-direct/range {v17 .. v26}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;-><init>(JIIJIILcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V

    .line 552
    .local v9, "descriptor":Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p2

    move-wide/from16 v4, v27

    move-object/from16 v17, v6

    .end local v6    # "imageDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v17, "imageDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-wide/from16 v6, p3

    move-object/from16 v18, v8

    .end local v8    # "tmpFile":Ljava/io/File;
    .local v18, "tmpFile":Ljava/io/File;
    move-object/from16 v8, v16

    :try_start_0
    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromMotionPicture(Ljava/io/File;Ljava/io/File;JJLandroid/graphics/Bitmap;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 556
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v1

    .line 557
    .local v1, "isDelete":Z
    if-nez v1, :cond_2

    .line 558
    invoke-static {v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v1    # "isDelete":Z
    :cond_2
    return-object v0

    .line 555
    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 556
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v0

    .line 557
    .local v0, "isDelete":Z
    if-nez v0, :cond_3

    .line 558
    invoke-static {v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .end local v0    # "isDelete":Z
    :cond_3
    throw v1
.end method

.method private createThumbFromMotionPicture(Ljava/io/File;Ljava/io/File;JJLandroid/graphics/Bitmap;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;
    .locals 16
    .param p1, "originalFile"    # Ljava/io/File;
    .param p2, "destinationDirectory"    # Ljava/io/File;
    .param p3, "imageSize"    # J
    .param p5, "maxSize"    # J
    .param p7, "originalImage"    # Landroid/graphics/Bitmap;
    .param p8, "descriptor"    # Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    .line 568
    move-object/from16 v9, p0

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sec/internal/ims/util/ThumbnailTool;->getReadScale(JJ)I

    move-result v14

    .line 570
    .local v14, "readScale":I
    nop

    .line 571
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v15, p7

    invoke-static {v15, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromPicture(Ljava/io/File;Ljava/io/File;JJLandroid/util/Pair;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createThumbFromPicture(Ljava/io/File;Ljava/io/File;JJLandroid/util/Pair;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;
    .locals 24
    .param p1, "originalFile"    # Ljava/io/File;
    .param p2, "destinationDirectory"    # Ljava/io/File;
    .param p3, "imageSize"    # J
    .param p5, "maxSize"    # J
    .param p8, "descriptor"    # Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "JJ",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    .line 369
    .local p7, "originalImage":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p7

    iget-object v0, v6, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const-string v9, "ThumbnailTool"

    if-eqz v0, :cond_b

    if-nez v7, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v12, p2

    move-object/from16 v15, p8

    goto/16 :goto_4

    .line 374
    :cond_0
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 375
    const-string/jumbo v0, "originalImage.first == null"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-object v8

    .line 379
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getContentTypeContext(Ljava/io/File;)Lcom/sec/internal/helper/picturetool/IContentTypeContext;

    move-result-object v10

    .line 381
    .local v10, "mContentTypeContext":Lcom/sec/internal/helper/picturetool/IContentTypeContext;
    if-nez v10, :cond_2

    .line 382
    const-string v0, "mContentTypeContext == null"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-object v8

    .line 385
    :cond_2
    invoke-interface {v10}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->validateExtension()V

    .line 387
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 388
    .local v11, "fileName":Ljava/lang/String;
    move-object/from16 v12, p2

    invoke-interface {v10, v12, v11}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->getFinalFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 390
    .local v13, "outputFile":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createThumbFromPicture: outputFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    move-wide/from16 v0, p3

    .line 393
    .local v0, "currentImageSize":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    move-wide v4, v0

    .line 395
    .end local v0    # "currentImageSize":J
    .local v4, "currentImageSize":J
    .local v14, "tmpFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :goto_0
    nop

    .line 396
    move-object/from16 v15, p8

    invoke-interface {v15, v4, v5}, Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;->next(J)Landroid/util/Pair;

    move-result-object v3

    .line 397
    .local v3, "compressionParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v6, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 398
    .local v2, "file":Ljava/io/File;
    if-nez v2, :cond_3

    .line 399
    const-string v0, "file == null"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v8

    .line 402
    :cond_3
    invoke-static {v11, v2}, Lcom/sec/internal/helper/picturetool/UniqueFilePathResolver;->getUniqueFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 403
    .local v1, "tmpFile":Ljava/io/File;
    const/4 v0, 0x0

    invoke-interface {v14, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 405
    const/4 v0, 0x1

    if-eqz v3, :cond_6

    .line 406
    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 407
    .local v8, "scale":I
    if-ne v8, v0, :cond_4

    .line 408
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/from16 v18, v2

    .end local v2    # "file":Ljava/io/File;
    .local v18, "file":Ljava/io/File;
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 409
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 410
    move-wide/from16 v19, v4

    .end local v4    # "currentImageSize":J
    .local v19, "currentImageSize":J
    invoke-interface {v10}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    .line 408
    invoke-direct {v6, v0, v1, v2, v4}, Lcom/sec/internal/ims/util/ThumbnailTool;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;)V

    move-object/from16 v17, v1

    move-object/from16 v22, v3

    const/4 v6, 0x1

    goto :goto_1

    .line 412
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "currentImageSize":J
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "currentImageSize":J
    :cond_4
    move-object/from16 v18, v2

    move-wide/from16 v19, v4

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "currentImageSize":J
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "currentImageSize":J
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getImageDimensions(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v5

    .line 414
    .local v5, "originalDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v5, :cond_5

    .line 415
    const-string/jumbo v0, "originalDimensions == null"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v0, 0x0

    return-object v0

    .line 418
    :cond_5
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/graphics/Bitmap;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 419
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 420
    invoke-interface {v10}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v21

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 421
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v22, v1

    .end local v1    # "tmpFile":Ljava/io/File;
    .local v22, "tmpFile":Ljava/io/File;
    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 422
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 421
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v23

    .line 418
    const/4 v1, 0x1

    move-object/from16 v0, p0

    move v6, v1

    move-object/from16 v17, v22

    .end local v22    # "tmpFile":Ljava/io/File;
    .local v17, "tmpFile":Ljava/io/File;
    move-object v1, v2

    move-object/from16 v2, v17

    move-object/from16 v22, v3

    .end local v3    # "compressionParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v22, "compressionParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move v3, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v5

    .end local v5    # "originalDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v21, "originalDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/util/ThumbnailTool;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;Landroid/util/Pair;)V

    goto :goto_1

    .line 405
    .end local v8    # "scale":I
    .end local v17    # "tmpFile":Ljava/io/File;
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "currentImageSize":J
    .end local v21    # "originalDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v22    # "compressionParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v1    # "tmpFile":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "compressionParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v4    # "currentImageSize":J
    :cond_6
    move v6, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v22, v3

    move-wide/from16 v19, v4

    .line 425
    .end local v1    # "tmpFile":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "compressionParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "currentImageSize":J
    .restart local v17    # "tmpFile":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "currentImageSize":J
    .restart local v22    # "compressionParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 427
    .end local v19    # "currentImageSize":J
    .restart local v4    # "currentImageSize":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createThumbFromPicture: tmpFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    .end local v17    # "tmpFile":Ljava/io/File;
    .restart local v1    # "tmpFile":Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    cmp-long v0, v4, p5

    if-gtz v0, :cond_a

    .line 432
    const-wide/16 v16, 0x1400

    cmp-long v0, v4, v16

    if-gtz v0, :cond_7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_7

    .line 433
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 434
    .local v0, "prevFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createThumbFromPicture: use previous tmpFile= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    move-wide/from16 v19, v4

    .end local v4    # "currentImageSize":J
    .restart local v19    # "currentImageSize":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {v0, v13}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 437
    .end local v0    # "prevFile":Ljava/io/File;
    goto :goto_2

    .line 432
    .end local v19    # "currentImageSize":J
    .restart local v4    # "currentImageSize":J
    :cond_7
    move-wide/from16 v19, v4

    .line 438
    .end local v4    # "currentImageSize":J
    .restart local v19    # "currentImageSize":J
    invoke-static {v1, v13}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 440
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 441
    .local v2, "tmpFileToDelete":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    .line 442
    .local v3, "isDelete":Z
    if-nez v3, :cond_8

    .line 443
    const-string/jumbo v4, "tmpFileToDelete.delete() error"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v2    # "tmpFileToDelete":Ljava/io/File;
    .end local v3    # "isDelete":Z
    :cond_8
    goto :goto_3

    .line 447
    :cond_9
    nop

    .line 454
    .end local v1    # "tmpFile":Ljava/io/File;
    .end local v18    # "file":Ljava/io/File;
    .end local v22    # "compressionParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 455
    move-object/from16 v0, p1

    invoke-interface {v10, v0, v13}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->processSpecificData(Ljava/io/File;Ljava/io/File;)V

    .line 457
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 430
    .end local v19    # "currentImageSize":J
    .restart local v1    # "tmpFile":Ljava/io/File;
    .restart local v4    # "currentImageSize":J
    .restart local v18    # "file":Ljava/io/File;
    .restart local v22    # "compressionParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_a
    move-object/from16 v0, p1

    move-wide/from16 v19, v4

    .line 449
    .end local v1    # "tmpFile":Ljava/io/File;
    .end local v4    # "currentImageSize":J
    .end local v18    # "file":Ljava/io/File;
    .end local v22    # "compressionParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v19    # "currentImageSize":J
    const/4 v8, 0x0

    move-object/from16 v6, p0

    goto/16 :goto_0

    .line 369
    .end local v10    # "mContentTypeContext":Lcom/sec/internal/helper/picturetool/IContentTypeContext;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v13    # "outputFile":Ljava/io/File;
    .end local v14    # "tmpFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "currentImageSize":J
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v12, p2

    move-object/from16 v15, p8

    .line 370
    :goto_4
    const-string v1, "mContext == null && originalImage == null"

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, 0x0

    return-object v1
.end method

.method private createThumbFromStillPicture(Ljava/io/File;Ljava/io/File;IJJLcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;
    .locals 15
    .param p1, "originalFile"    # Ljava/io/File;
    .param p2, "destinationDirectory"    # Ljava/io/File;
    .param p3, "readScale"    # I
    .param p4, "imageSize"    # J
    .param p6, "maxSize"    # J
    .param p8, "descriptor"    # Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 326
    const/4 v1, 0x0

    .line 328
    .local v1, "originalImage":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    move-object v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p3

    :try_start_0
    invoke-direct {p0, v13, v14}, Lcom/sec/internal/ims/util/ThumbnailTool;->extractBitmapFromImage(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v0

    .line 333
    nop

    .line 336
    nop

    .line 337
    :try_start_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 336
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromPicture(Ljava/io/File;Ljava/io/File;JJLandroid/util/Pair;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
    invoke-virtual {v0}, Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;->printStackTrace()V

    goto :goto_0

    .line 339
    .end local v0    # "e":Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
    :catch_1
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 343
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 344
    :goto_0
    return-object v2

    .line 330
    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 331
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 332
    return-object v2
.end method

.method private createThumbFromVideo(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;
    .locals 1
    .param p1, "originalFile"    # Ljava/io/File;
    .param p2, "destinationDirectory"    # Ljava/io/File;
    .param p3, "maxSize"    # J
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I

    .line 516
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromMotionPicture(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
    invoke-virtual {v0}, Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;->printStackTrace()V

    goto :goto_0

    .line 518
    .end local v0    # "e":Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
    :catch_1
    move-exception v0

    .line 519
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 522
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 523
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private extractBitmapFromImage(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "image"    # Ljava/io/File;
    .param p2, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/helper/picturetool/BitmapExtractor;->extractFromImage(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getContentTypeContext(Ljava/io/File;)Lcom/sec/internal/helper/picturetool/IContentTypeContext;
    .locals 5
    .param p1, "imageFile"    # Ljava/io/File;

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "ext":Ljava/lang/String;
    const-string v1, "ThumbnailTool"

    if-nez v0, :cond_0

    .line 355
    const-string v2, "ext == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v1, 0x0

    return-object v1

    .line 358
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "mime":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStillContentTypeContext: mime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mContentTypeContextCreator:Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->getContextByMime(Ljava/lang/String;)Lcom/sec/internal/helper/picturetool/IContentTypeContext;

    move-result-object v1

    return-object v1
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "thumbnailFile"    # Ljava/lang/String;

    .line 78
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "extOffset":I
    if-gez v0, :cond_0

    .line 81
    const/4 v1, 0x0

    return-object v1

    .line 84
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getImageDimensions(Ljava/io/File;)Landroid/util/Pair;
    .locals 1
    .param p1, "inputImage"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mImageDimensionsExtractor:Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;->extract(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getReadScale(JJ)I
    .locals 1
    .param p1, "size"    # J
    .param p3, "maxSize"    # J

    .line 577
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/helper/picturetool/ReadScaleCalculator;->calculate(JJ)I

    move-result v0

    return v0
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;)V
    .locals 2
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "destFilePath"    # Ljava/io/File;
    .param p3, "quality"    # I
    .param p4, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    .line 488
    const/4 v0, 0x0

    .line 491
    .local v0, "dataStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 493
    invoke-virtual {p1, p4, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 494
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->closeStream(Ljava/io/Closeable;)V

    .line 497
    nop

    .line 498
    return-void

    .line 496
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->closeStream(Ljava/io/Closeable;)V

    .line 497
    throw v1
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;Landroid/util/Pair;)V
    .locals 5
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "destFilePath"    # Ljava/io/File;
    .param p3, "quality"    # I
    .param p4, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/io/File;",
            "I",
            "Landroid/graphics/Bitmap$CompressFormat;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    .line 465
    .local p5, "destDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 466
    .local v0, "dataStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 469
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 471
    iget-object v2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 472
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    .line 471
    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    .line 473
    invoke-virtual {v1, p4, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 474
    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 475
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 476
    const/4 v1, 0x0

    .line 478
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->closeStream(Ljava/io/Closeable;)V

    .line 481
    nop

    .line 482
    return-void

    .line 480
    :catchall_0
    move-exception v2

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->closeStream(Ljava/io/Closeable;)V

    .line 481
    throw v2
.end method


# virtual methods
.method public createCopyPaste(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p1, "originalFile"    # Ljava/io/File;
    .param p2, "destinationDirectory"    # Ljava/io/File;

    .line 239
    const-string v0, "ThumbnailTool"

    if-nez p2, :cond_0

    .line 240
    const-string v1, "destinationDirectory == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_0
    nop

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v1, p2}, Lcom/sec/internal/helper/picturetool/UniqueFilePathResolver;->getUniqueFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 246
    .local v1, "outputFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCopyPaste:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {p1, v1}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createThumb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Message;)V
    .locals 2
    .param p1, "originalFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "maxSize"    # J
    .param p5, "msg"    # Landroid/os/Message;

    .line 177
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$1;)V

    .line 178
    .local v0, "infor":Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$002(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$102(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$202(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)J

    .line 181
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$502(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)Landroid/os/Message;

    .line 182
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool;->sendMessage(Landroid/os/Message;)Z

    .line 183
    return-void
.end method

.method public createThumbFromImage(Ljava/lang/String;Ljava/lang/String;JIILandroid/os/Message;)V
    .locals 2
    .param p1, "originalFile"    # Ljava/lang/String;
    .param p2, "destinationDirectory"    # Ljava/lang/String;
    .param p3, "maxSize"    # J
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I
    .param p7, "msg"    # Landroid/os/Message;

    .line 200
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$1;)V

    .line 201
    .local v0, "infor":Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$002(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$102(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$202(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)J

    .line 204
    invoke-static {v0, p7}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$502(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)Landroid/os/Message;

    .line 205
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$302(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)I

    .line 206
    invoke-static {v0, p6}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$402(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)I

    .line 207
    const/16 v1, 0x3ea

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool;->sendMessage(Landroid/os/Message;)Z

    .line 209
    return-void
.end method

.method public createThumbFromImage(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Message;)V
    .locals 2
    .param p1, "originalFile"    # Ljava/lang/String;
    .param p2, "destinationDirectory"    # Ljava/lang/String;
    .param p3, "maxSize"    # J
    .param p5, "msg"    # Landroid/os/Message;

    .line 188
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$1;)V

    .line 189
    .local v0, "infor":Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$002(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$102(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$202(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)J

    .line 192
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$502(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)Landroid/os/Message;

    .line 193
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool;->sendMessage(Landroid/os/Message;)Z

    .line 194
    return-void
.end method

.method public createThumbFromVideo(Ljava/lang/String;Ljava/lang/String;JIILandroid/os/Message;)V
    .locals 2
    .param p1, "originalFile"    # Ljava/lang/String;
    .param p2, "destinationDirectory"    # Ljava/lang/String;
    .param p3, "maxSize"    # J
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I
    .param p7, "msg"    # Landroid/os/Message;

    .line 226
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$1;)V

    .line 227
    .local v0, "infor":Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$002(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$102(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$202(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)J

    .line 230
    invoke-static {v0, p7}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$502(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)Landroid/os/Message;

    .line 231
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$302(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)I

    .line 232
    invoke-static {v0, p6}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$402(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)I

    .line 233
    const/16 v1, 0x3ec

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool;->sendMessage(Landroid/os/Message;)Z

    .line 235
    return-void
.end method

.method public createThumbFromVideo(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Message;)V
    .locals 2
    .param p1, "originalFile"    # Ljava/lang/String;
    .param p2, "destinationDirectory"    # Ljava/lang/String;
    .param p3, "maxSize"    # J
    .param p5, "msg"    # Landroid/os/Message;

    .line 214
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$1;)V

    .line 215
    .local v0, "infor":Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$002(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$102(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$202(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)J

    .line 218
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$502(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)Landroid/os/Message;

    .line 219
    const/16 v1, 0x3eb

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool;->sendMessage(Landroid/os/Message;)Z

    .line 220
    return-void
.end method

.method public getThumbSavedDirectory()Ljava/lang/String;
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 163
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 164
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 165
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".rcs_thumbnail"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    .line 169
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThumbSavedDirectory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThumbnailTool"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    .line 102
    .local v0, "infor":Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    const/4 v1, 0x0

    .line 104
    .local v1, "thumbnailPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ThumbnailTool"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 142
    const-string v2, "Unsupport file format!!!"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    :pswitch_0
    new-instance v5, Ljava/io/File;

    .line 138
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$000(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$100(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$200(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J

    move-result-wide v7

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$300(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)I

    move-result v9

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$400(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)I

    move-result v10

    .line 137
    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromVideo(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object v1

    .line 140
    goto/16 :goto_0

    .line 132
    :pswitch_1
    new-instance v3, Ljava/io/File;

    .line 133
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$000(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$100(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$200(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J

    move-result-wide v5

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    .line 132
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromVideo(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object v1

    .line 135
    goto/16 :goto_0

    .line 127
    :pswitch_2
    new-instance v3, Ljava/io/File;

    .line 128
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$000(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$100(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$200(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J

    move-result-wide v5

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$300(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)I

    move-result v7

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$400(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)I

    move-result v8

    .line 127
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromImage(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object v1

    .line 130
    goto/16 :goto_0

    .line 122
    :pswitch_3
    new-instance v3, Ljava/io/File;

    .line 123
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$000(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$100(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$200(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J

    move-result-wide v5

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    .line 122
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromImage(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object v1

    .line 125
    goto/16 :goto_0

    .line 107
    :pswitch_4
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$000(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/util/ThumbnailTool;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "fileExtension":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: original="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$000(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", fileExtension="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", dest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$100(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v3, Lcom/sec/internal/ims/util/ThumbnailTool;->IMAGE_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    new-instance v5, Ljava/io/File;

    .line 113
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$000(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$100(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$200(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J

    move-result-wide v7

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    .line 112
    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromImage(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/util/ThumbnailTool;->VIDEO_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    new-instance v5, Ljava/io/File;

    .line 117
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$000(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$100(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$200(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J

    move-result-wide v7

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    .line 116
    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromVideo(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object v1

    .line 144
    .end local v2    # "fileExtension":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$500(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 145
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$500(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 146
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->access$500(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 148
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The thumbnailFile type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailTool"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
