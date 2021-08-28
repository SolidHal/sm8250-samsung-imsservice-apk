.class public Lcom/sec/internal/ims/util/ThumbnailUtil;
.super Ljava/lang/Object;
.source "ThumbnailUtil.java"


# static fields
.field private static final HIGH_QUALITY:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_BYTE_COUNT:I = 0x1400

.field private static final MAX_BYTE_COUNT_HIGH:I = 0xc800

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field private static final QUALITY:I = 0x5f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/ims/util/ThumbnailUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/ThumbnailUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .line 231
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 232
    .local v0, "ext_index":I
    sget-object v1, Lcom/sec/internal/ims/util/ThumbnailUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 234
    const/4 v1, 0x0

    return-object v1

    .line 236
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "extension":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/util/ThumbnailUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 239
    .local v2, "mime":Landroid/webkit/MimeTypeMap;
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "type":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 241
    invoke-static {p0}, Lcom/sec/internal/ims/util/ThumbnailUtil;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/util/ThumbnailUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-object v3
.end method

.method public static getHighResolutionVideoThumbnailByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "contentType"    # Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/sec/internal/ims/util/ThumbnailUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePath HR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "thumbBitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/util/ThumbnailUtil;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "type":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 171
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 173
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    .line 177
    nop

    .line 179
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "hasVideo":Ljava/lang/String;
    const-string/jumbo v5, "yes"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "video"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 224
    :cond_1
    sget-object v5, Lcom/sec/internal/ims/util/ThumbnailUtil;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getHighResolutionThumbnailByteArray not for Video"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 184
    :cond_2
    :goto_1
    const-wide/16 v5, -0x1

    :try_start_1
    invoke-virtual {v2, v5, v6}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    .line 189
    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    :goto_2
    goto :goto_4

    .line 190
    :catch_0
    move-exception v5

    .line 193
    goto :goto_4

    .line 188
    :catchall_0
    move-exception v3

    .line 189
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 192
    goto :goto_3

    .line 190
    :catch_1
    move-exception v5

    .line 193
    :goto_3
    throw v3

    .line 185
    :catch_2
    move-exception v5

    .line 189
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 194
    :goto_4
    const/4 v5, 0x1

    if-nez v0, :cond_3

    .line 195
    invoke-static {p0, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    :cond_3
    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    const v7, 0xc800

    if-le v6, v7, :cond_4

    .line 201
    nop

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x40e9000000000000L    # 51200.0

    div-double/2addr v6, v8

    .line 201
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 203
    .local v5, "scale":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v6, v5

    .line 204
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v7, v5

    .line 205
    .local v7, "height":I
    sget-object v8, Lcom/sec/internal/ims/util/ThumbnailUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Width: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", height: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v8, 0x0

    invoke-static {v0, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .end local v5    # "scale":I
    .end local v6    # "width":I
    .end local v7    # "height":I
    :cond_4
    if-eqz v0, :cond_5

    .line 213
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 214
    .local v3, "ostream":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 215
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 217
    .local v5, "byteArray":[B
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 220
    goto :goto_5

    .line 218
    :catch_3
    move-exception v6

    .line 219
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    .end local v6    # "e":Ljava/io/IOException;
    :goto_5
    return-object v5

    .line 174
    .end local v3    # "ostream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "hasVideo":Ljava/lang/String;
    .end local v5    # "byteArray":[B
    :catch_4
    move-exception v4

    .line 175
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/sec/internal/ims/util/ThumbnailUtil;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getHighResolutionVideoThumbnailByteArray() failure"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-object v3

    .line 227
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_5
    :goto_6
    return-object v3
.end method

.method private static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.media.MediaFile"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 251
    .local v1, "classMf":Ljava/lang/Class;
    const-string v2, "getMimeTypeForFile"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 252
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {v2, v0, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 253
    .end local v1    # "classMf":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 257
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    return-object v0
.end method

.method public static getThumbnailBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 19
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "contentType"    # Ljava/lang/String;

    .line 32
    move-object/from16 v1, p0

    sget-object v0, Lcom/sec/internal/ims/util/ThumbnailUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "thumbBitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    move-object/from16 v2, p1

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/util/ThumbnailUtil;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "type":Ljava/lang/String;
    :goto_0
    const-string v3, ", height: "

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    .line 37
    const-string/jumbo v6, "video"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 38
    invoke-static {v1, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_3

    .line 40
    :cond_1
    const-string v6, "image"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 41
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 43
    .local v6, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 44
    invoke-static {v1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 46
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 47
    .local v7, "width":I
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 48
    .local v8, "height":I
    const/4 v9, 0x1

    .line 50
    .local v9, "inSampleSize":I
    sget-object v10, Lcom/sec/internal/ims/util/ThumbnailUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "width: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/16 v10, 0x200

    if-gt v8, v10, :cond_2

    if-le v7, v10, :cond_3

    .line 53
    :cond_2
    :goto_1
    div-int v11, v8, v9

    if-le v11, v10, :cond_3

    div-int v11, v7, v9

    if-le v11, v10, :cond_3

    .line 55
    mul-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 59
    :cond_3
    sget-object v10, Lcom/sec/internal/ims/util/ThumbnailUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inSampleSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-le v9, v5, :cond_4

    .line 62
    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 65
    :cond_4
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 66
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v10, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 67
    invoke-static {v1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 68
    .end local v0    # "thumbBitmap":Landroid/graphics/Bitmap;
    .local v10, "thumbBitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_5

    .line 70
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/util/ThumbnailUtil;->readPictureDegree(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v18

    .line 71
    .local v18, "matrix":Landroid/graphics/Matrix;
    if-eqz v18, :cond_5

    .line 73
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 74
    :try_start_0
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 75
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v17, 0x1

    .line 73
    move-object v11, v10

    move-object/from16 v16, v18

    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v10    # "thumbBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "thumbBitmap":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 78
    .end local v0    # "thumbBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "thumbBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 76
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 86
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "inSampleSize":I
    .end local v18    # "matrix":Landroid/graphics/Matrix;
    :cond_5
    :goto_2
    move-object v0, v10

    .end local v10    # "thumbBitmap":Landroid/graphics/Bitmap;
    .local v0, "thumbBitmap":Landroid/graphics/Bitmap;
    :cond_6
    :goto_3
    if-eqz v0, :cond_9

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    const/16 v7, 0x1400

    if-le v6, v7, :cond_7

    .line 88
    nop

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x40b4000000000000L    # 5120.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 88
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 90
    .local v5, "scale":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v6, v5

    .line 91
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v7, v5

    .line 92
    .local v7, "height":I
    sget-object v8, Lcom/sec/internal/ims/util/ThumbnailUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Width: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {v0, v6, v7, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    .line 87
    .end local v5    # "scale":I
    .end local v6    # "width":I
    .end local v7    # "height":I
    :cond_7
    move-object v3, v0

    .line 96
    .end local v0    # "thumbBitmap":Landroid/graphics/Bitmap;
    .local v3, "thumbBitmap":Landroid/graphics/Bitmap;
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v5, :cond_8

    .line 98
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v0

    .line 101
    goto :goto_5

    .line 99
    :catch_2
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 103
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_8
    :goto_5
    return-object v3

    .line 105
    .end local v3    # "thumbBitmap":Landroid/graphics/Bitmap;
    .local v0, "thumbBitmap":Landroid/graphics/Bitmap;
    :cond_9
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getThumbnailByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "contentType"    # Ljava/lang/String;

    .line 109
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ThumbnailUtil;->getThumbnailBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, "thumbBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 111
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v1, "ostream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 113
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 115
    .local v2, "byteArray":[B
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v3

    .line 117
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return-object v2

    .line 121
    .end local v1    # "ostream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "byteArray":[B
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static readPictureDegree(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .line 125
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 127
    .local v0, "matrix":Landroid/graphics/Matrix;
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "exifInterface":Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, 0x1

    .line 129
    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 131
    .local v2, "orientation":I
    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    packed-switch v2, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :pswitch_0
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 140
    goto :goto_0

    .line 152
    :pswitch_1
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 153
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 154
    goto :goto_0

    .line 133
    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 134
    goto :goto_0

    .line 148
    :pswitch_3
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 149
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 150
    goto :goto_0

    .line 145
    :pswitch_4
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 146
    goto :goto_0

    .line 136
    :pswitch_5
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 137
    goto :goto_0

    .line 142
    :pswitch_6
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .line 161
    .end local v1    # "exifInterface":Landroid/media/ExifInterface;
    .end local v2    # "orientation":I
    :goto_0
    goto :goto_1

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 162
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
