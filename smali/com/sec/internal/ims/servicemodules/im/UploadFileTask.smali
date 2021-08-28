.class public Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;
.super Landroid/os/AsyncTask;
.source "UploadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;,
        Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mEncodedFileName:Ljava/lang/String;

.field protected mFile:Ljava/io/File;

.field protected mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

.field protected final mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field protected mPhoneId:I

.field protected mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

.field protected mTotal:J

.field protected mTransferred:J

.field protected mUploadProgressElapsed:J

.field protected thumbFileName:Ljava/lang/String;

.field protected thumbnailData:[B

.field protected thumbnailType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 85
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 86
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    .line 88
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 89
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private generateFileInfo()V
    .locals 5

    .line 391
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mFile:Ljava/io/File;

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mFile:Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContentType:Ljava/lang/String;

    .line 399
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    .line 400
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailType:Ljava/lang/String;

    .line 401
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    .line 403
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->bFileIcon:Z

    if-eqz v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContentType:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->generateThumbnailData(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v2, "support_encoding_filename_by_server"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 410
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v2, "file_name_length_limit_In_server"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v1

    .line 411
    .local v1, "fnLengthlimit":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .local v2, "fileName":Ljava/lang/String;
    const-string v3, "UTF-8"

    if-lez v1, :cond_2

    :try_start_1
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-le v4, v1, :cond_2

    .line 414
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getTrimmedFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 416
    :cond_2
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 420
    .end local v1    # "fnLengthlimit":I
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "UnsupportedEncodingException or IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 423
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEncodedFileName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "fileName":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_4

    .line 426
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    goto :goto_2

    .line 428
    :cond_4
    const-string/jumbo v2, "thumb"

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    .line 431
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    goto :goto_3

    .line 433
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailType:Ljava/lang/String;

    const-string v2, "image/bmp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    .line 437
    .end local v1    # "fileName":[Ljava/lang/String;
    :cond_6
    :goto_3
    return-void
.end method

.method private generateThumbnailData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v1, "support_highresolutionvideo_thumbnail"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {p1, p2}, Lcom/sec/internal/ims/util/ThumbnailUtil;->getHighResolutionVideoThumbnailByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    if-nez v0, :cond_1

    .line 444
    invoke-static {p1, p2}, Lcom/sec/internal/ims/util/ThumbnailUtil;->getThumbnailByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    if-nez v0, :cond_3

    .line 448
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "csc":Ljava/lang/String;
    const-string v1, "DTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    :cond_2
    const/16 v1, 0x42

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    .line 468
    const-string v1, "image/bmp"

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailType:Ljava/lang/String;

    .line 469
    const-string v1, "dummy.txt.txt.bmp"

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    .line 472
    .end local v0    # "csc":Ljava/lang/String;
    :cond_3
    return-void

    :array_0
    .array-data 1
        0x42t
        0x4dt
        0x42t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3et
        0x0t
        0x0t
        0x0t
        0x28t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        -0x40t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getRequestContentLength(Lcom/sec/internal/helper/HttpRequest;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 17
    .param p1, "httpReq"    # Lcom/sec/internal/helper/HttpRequest;
    .param p2, "thumbnailData"    # [B
    .param p3, "thumbnailType"    # Ljava/lang/String;
    .param p4, "thumbFileName"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "encodedFileName"    # Ljava/lang/String;

    .line 257
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    const-wide/16 v4, 0x0

    .line 258
    .local v4, "contentLength":J
    const-string v6, "\r\n"

    .line 259
    .local v6, "CRLF":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFilePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v7, "file":Ljava/io/File;
    const-string/jumbo v8, "tid"

    const/4 v9, 0x0

    const-string/jumbo v10, "text/plain"

    const/4 v11, 0x1

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/sec/internal/helper/HttpRequest;->getPartHeaderLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v8

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 262
    const-string v8, "contentlength_in_byte"

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 263
    const-string v10, "Thumbnail"

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual {v1, v10, v12, v11, v9}, Lcom/sec/internal/helper/HttpRequest;->getPartHeaderLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v13

    array-length v10, v2

    int-to-long v9, v10

    add-long/2addr v13, v9

    add-long/2addr v4, v13

    .line 264
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v9, :cond_1

    invoke-interface {v9, v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 265
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v4, v9

    goto :goto_0

    .line 262
    :cond_0
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 268
    :cond_1
    :goto_0
    const-string v9, "File"

    move-object/from16 v10, p5

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v3, v10, v13}, Lcom/sec/internal/helper/HttpRequest;->getPartHeaderLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v13

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v15

    add-long/2addr v13, v15

    add-long/2addr v4, v13

    .line 269
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v9, :cond_2

    invoke-interface {v9, v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 270
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 273
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "00content0boundary00"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 274
    return-wide v4
.end method

.method private getTrimmedFileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "limitSize"    # I

    .line 278
    const-string v0, "UTF-8"

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrimmedFileName() fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", limitSize= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const/4 v0, 0x0

    return-object v0

    .line 283
    :cond_0
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 284
    .local v1, "encodedNameLength":I
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 285
    .local v2, "extOffset":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v3

    .line 288
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "ext":Ljava/lang/String;
    const/4 v6, 0x0

    .line 292
    .local v6, "totalTrimmedSize":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 293
    .local v7, "idx":I
    :goto_0
    if-lez v7, :cond_2

    sub-int v8, v1, v6

    if-le v8, p2, :cond_2

    .line 294
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 295
    .local v8, "trimedStr":Ljava/lang/String;
    invoke-static {v8, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v6, v9

    .line 296
    nop

    .end local v8    # "trimedStr":Ljava/lang/String;
    add-int/lit8 v7, v7, -0x1

    .line 297
    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 299
    .end local v4    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trimmed fileName="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 301
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "encodedNameLength":I
    .end local v2    # "extOffset":I
    .end local v5    # "ext":Ljava/lang/String;
    .end local v6    # "totalTrimmedSize":I
    .end local v7    # "idx":I
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    return-object p1
.end method

.method private handleFirstRequestResponse(I)Z
    .locals 9
    .param p1, "code"    # I

    .line 349
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_4

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x12e

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    .line 383
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    .line 385
    return v1

    .line 357
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    const-string v4, "POST"

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "response":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleFirstRequestResponse: Authorization response is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    .line 363
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/HttpRequest;->useNetwork(Landroid/net/Network;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v1

    .line 364
    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 365
    goto :goto_0

    .line 367
    .end local v0    # "response":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "location":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 369
    new-instance v2, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v6, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v7, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-boolean v8, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    move-object v3, v2

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "openIdResponseURL":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 372
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 373
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .line 374
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 375
    goto :goto_0

    .line 378
    .end local v2    # "openIdResponseURL":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleFirstRequestResponse: OpenId process failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    .line 380
    return v1

    .line 352
    .end local v0    # "location":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 354
    nop

    .line 387
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private onUploadFileDone()V
    .locals 4

    .line 475
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Upload File done. Read http response."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->ok()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Upload success, handle response message."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    if-ne v0, v2, :cond_1

    .line 482
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Retry uploading with deaccented mFile name."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    .line 489
    :goto_0
    return-void
.end method

.method private sendEmptyPostRequest()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .line 342
    .local v0, "emptyPostUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isHTTPUsedForEmptyFtHttpPOST()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const-string v1, "https://"

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 346
    return-void
.end method

.method private sendFirstPostRequest()Z
    .locals 6

    .line 311
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->sendEmptyPostRequest()V

    .line 312
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 314
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v2

    .line 315
    .local v2, "code":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 318
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->handleFirstRequestResponse(I)Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 319
    return v1

    .line 336
    :cond_0
    nop

    .line 337
    const/4 v0, 0x1

    return v0

    .line 332
    .end local v2    # "code":I
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v3, v0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 335
    return v1

    .line 321
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 322
    .local v2, "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 323
    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 325
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v4, 0x1e

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_0

    .line 328
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " happened. Retry Upload Task."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 331
    :goto_0
    return v1
.end method


# virtual methods
.method protected cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    .locals 1
    .param p1, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "retryTime"    # I
    .param p3, "errorCode"    # I
    .param p4, "fullUploadNeeded"    # Z

    .line 250
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 253
    :cond_0
    return-void
.end method

.method protected cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    .locals 6
    .param p1, "httpReq"    # Lcom/sec/internal/helper/HttpRequest;
    .param p2, "fullUploadNeeded"    # Z

    .line 218
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 220
    .local v0, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_3

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_0

    .line 242
    const/4 v1, 0x3

    .local v1, "delay":I
    goto :goto_0

    .line 222
    .end local v1    # "delay":I
    :cond_0
    const-string v1, "Retry-After"

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/RetryTimerUtil;->getRetryAfter(Ljava/lang/String;)I

    move-result v1

    .line 223
    .restart local v1    # "delay":I
    goto :goto_0

    .line 230
    .end local v1    # "delay":I
    :cond_1
    const/4 v1, 0x5

    .line 231
    .restart local v1    # "delay":I
    goto :goto_0

    .line 226
    .end local v1    # "delay":I
    :cond_2
    const/4 v1, 0x1

    .line 227
    .restart local v1    # "delay":I
    goto :goto_0

    .line 233
    .end local v1    # "delay":I
    :cond_3
    const/4 v1, 0x3

    .line 234
    .restart local v1    # "delay":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v2, :cond_4

    .line 235
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_FT_HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleFtHttpRequestFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    .line 246
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 247
    return-void
.end method

.method protected varargs doInBackground([Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;)Ljava/lang/Long;
    .locals 14
    .param p1, "params"    # [Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "mMnoStrategy is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 112
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 120
    .local v0, "threadId":I
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 122
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    aget-object v3, p1, v2

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    .line 124
    iget-wide v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    iput-wide v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTotal:J

    .line 125
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 127
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->sendFirstPostRequest()Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 131
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-nez v4, :cond_2

    .line 132
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v4, "mHttpRequest is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v3, v1, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 134
    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 137
    :cond_2
    const-wide/32 v4, 0x7d000

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v6, v6, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    const-wide/16 v8, 0x32

    div-long/2addr v6, v8

    const-wide/32 v8, 0xf000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 140
    .local v4, "bufferSize":I
    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 141
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v6, v4}, Lcom/sec/internal/helper/HttpRequest;->bufferSize(I)Lcom/sec/internal/helper/HttpRequest;

    .line 143
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->generateFileInfo()V

    .line 145
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v7, "support_fthttp_contentlength"

    invoke-interface {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 147
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailType:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContentType:Ljava/lang/String;

    iget-object v13, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getRequestContentLength(Lcom/sec/internal/helper/HttpRequest;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 149
    .local v6, "contentLength":J
    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Http request length:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/helper/HttpRequest;->contentLength(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 151
    nop

    .end local v6    # "contentLength":J
    goto :goto_0

    .line 152
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v6, v2}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 155
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string/jumbo v7, "tid"

    const-string/jumbo v8, "text/plain"

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-virtual {v6, v7, v3, v8, v9}, Lcom/sec/internal/helper/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 156
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    if-eqz v6, :cond_4

    .line 157
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v7, "Thumbnail"

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailType:Ljava/lang/String;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/internal/helper/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/sec/internal/helper/HttpRequest;

    .line 159
    :cond_4
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onStarted()V

    .line 161
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v7, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;

    invoke-direct {v7, p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;)V

    invoke-virtual {v6, v7}, Lcom/sec/internal/helper/HttpRequest;->progress(Lcom/sec/internal/helper/HttpRequest$UploadProgress;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v6

    const-string v7, "File"

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContentType:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mFile:Ljava/io/File;

    .line 183
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/internal/helper/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/internal/helper/HttpRequest;->progress(Lcom/sec/internal/helper/HttpRequest$UploadProgress;)Lcom/sec/internal/helper/HttpRequest;

    .line 185
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 186
    iget-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 186
    return-object v1

    .line 189
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->onUploadFileDone()V
    :try_end_1
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 207
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 201
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 203
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    :cond_6
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v6, v5, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 208
    goto :goto_2

    .line 191
    :catch_1
    move-exception v3

    .line 192
    .local v3, "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :try_start_3
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 193
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    :cond_7
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 196
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v6, 0x1e

    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_1

    .line 198
    :cond_8
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " happened. Retry Upload Task."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v6, v5, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 209
    .end local v3    # "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :goto_2
    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 207
    :goto_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 208
    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, [Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->doInBackground([Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "httpRequest"    # Lcom/sec/internal/helper/HttpRequest;
    .param p3, "requestUrl"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;

    .line 492
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Receive 401 Unauthorized, attempt to generate response"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p2}, Lcom/sec/internal/helper/HttpRequest;->wwwAuthenticate()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "challenge":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "challenge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v1, ""

    if-nez v0, :cond_0

    .line 497
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Got 401 and challenge is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-object v1

    .line 499
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Got 401 for SIT. Skip GBA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-object v1

    .line 504
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/helper/HttpRequest;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3, v0, p4, v1}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "response":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-object v1
.end method

.method protected isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z
    .locals 1
    .param p1, "e"    # Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    .line 213
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    instance-of v0, v0, Ljava/net/UnknownHostException;

    return v0
.end method

.method protected onCancelled(Ljava/lang/Long;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Long;

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onFinished()V

    .line 96
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task cancelled. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->onCancelled(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Long;

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onFinished()V

    .line 104
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task finished. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected setDefaultHeaders()V
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest;->useNetwork(Landroid/net/Network;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 525
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest;->useCaches(Z)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 526
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/HttpRequest;->connectTimeout(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 527
    const v2, 0x1d4c0

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/HttpRequest;->readTimeout(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    .line 528
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/HttpRequest;->userAgent(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 530
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v2, "ft_with_gba"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v2, "use_useridentity_for_fthttp"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpuFromIsim(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "impu":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPublicId(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-3GPP-Intended-Identity"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 538
    .end local v0    # "impu":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->trustAllCerts()Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->trustAllHosts()Lcom/sec/internal/helper/HttpRequest;

    .line 541
    :cond_2
    return-void
.end method
