.class public Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;
.super Ljava/lang/Object;
.source "FileUploadMessage.java"


# static fields
.field private static final EVENT_CANCEL_UPLOAD:I = 0x2

.field private static final EVENT_RETRY_UPLOAD:I = 0x7

.field private static final EVENT_UPLOAD_CANCELED:I = 0x6

.field private static final EVENT_UPLOAD_COMPLETED:I = 0x5

.field private static final EVENT_UPLOAD_FILE:I = 0x1

.field private static final EVENT_UPLOAD_PROGRESS:I = 0x3

.field private static final EVENT_UPLOAD_STARTED:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_RETRY_COUNT:I = 0x3


# instance fields
.field private bFileIconRequired:Z

.field private bRetryEvent:Z

.field private mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mFileUploadId:Ljava/lang/String;

.field private mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;

.field private mFileUri:Landroid/net/Uri;

.field private final mHandler:Landroid/os/Handler;

.field private final mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

.field private final mPhoneId:I

.field private mRetryCnt:I

.field private mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

.field private final mTidGenerator:Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;

.field private mUploadBytes:J

.field private mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/sec/internal/ims/servicemodules/im/ImConfig;Landroid/os/Looper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "imConfig"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "fileUri"    # Landroid/net/Uri;
    .param p5, "filePath"    # Ljava/lang/String;
    .param p6, "fileName"    # Ljava/lang/String;
    .param p7, "fileSize"    # J
    .param p9, "useFileIcon"    # Z

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mTidGenerator:Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;

    .line 121
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    .line 126
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->INITIATING:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadBytes:J

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mRetryCnt:I

    .line 141
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->bRetryEvent:Z

    .line 151
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;-><init>(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    .line 205
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mPhoneId:I

    .line 206
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mTidGenerator:Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->generate()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    .line 208
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUri:Landroid/net/Uri;

    .line 209
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFilePath:Ljava/lang/String;

    .line 210
    iput-wide p7, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileSize:J

    .line 211
    iput-boolean p9, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->bFileIconRequired:Z

    .line 212
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;

    invoke-direct {v0, p0, p3}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;-><init>(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    .line 262
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    .line 46
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->handleTransferStarted()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;
    .param p1, "x1"    # J

    .line 46
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadBytes:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->handleTransferCompleted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    .line 46
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->isUploadCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    .line 46
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->bRetryEvent:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->bRetryEvent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    .line 46
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->tryUpload()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    .line 46
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mRetryCnt:I

    return v0
.end method

.method static synthetic access$508(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    .line 46
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mRetryCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mRetryCnt:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->handleTransferCanceled(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    .line 46
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->tryAbort()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;
    .param p1, "x1"    # J

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->handleProgressUpadate(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    .line 46
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->isUploadStated()Z

    move-result v0

    return v0
.end method

.method private convertTimeToLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .line 379
    :try_start_0
    invoke-static {p1}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 384
    .end local v0    # "e":Ljava/text/ParseException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private handleProgressUpadate(J)V
    .locals 6
    .param p1, "transferred"    # J

    .line 393
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadBytes:J

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    if-eqz v0, :cond_0

    .line 395
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileSize:J

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadProgress(Ljava/lang/String;JJ)V

    .line 397
    :cond_0
    return-void
.end method

.method private handleTransferAborted()V
    .locals 4

    .line 455
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->ABORTED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 456
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    if-eqz v1, :cond_0

    .line 457
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;Z)V

    .line 459
    :cond_0
    return-void
.end method

.method private handleTransferCanceled(II)V
    .locals 6
    .param p1, "retryTime"    # I
    .param p2, "errorCode"    # I

    .line 435
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle file upload state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", CANCELED, retry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    if-gez p1, :cond_1

    .line 438
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->FAILED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 439
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    if-eqz v1, :cond_2

    .line 440
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    invoke-interface {v1, v3, v0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;Z)V

    goto :goto_1

    .line 443
    :cond_1
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->bRetryEvent:Z

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 447
    :cond_2
    :goto_1
    return-void
.end method

.method private handleTransferCompleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "body"    # Ljava/lang/String;

    .line 415
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->parseResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->TRANSFERRED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    goto :goto_0

    .line 418
    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->FAILED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    if-eqz v0, :cond_1

    .line 422
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;Z)V

    .line 423
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->TRANSFERRED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    if-ne v0, v1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadComplete(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V

    .line 427
    :cond_1
    return-void
.end method

.method private handleTransferStarted()V
    .locals 4

    .line 403
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->STARTED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 404
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    if-eqz v1, :cond_0

    .line 405
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;Z)V

    .line 407
    :cond_0
    return-void
.end method

.method private isUploadCompleted()Z
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    sget-object v1, Lcom/gsma/services/rcs/upload/FileUpload$State;->INITIATING:Lcom/gsma/services/rcs/upload/FileUpload$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    sget-object v1, Lcom/gsma/services/rcs/upload/FileUpload$State;->STARTED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUploadStated()Z
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    sget-object v1, Lcom/gsma/services/rcs/upload/FileUpload$State;->INITIATING:Lcom/gsma/services/rcs/upload/FileUpload$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseResult(Ljava/lang/String;)Z
    .locals 40
    .param p1, "msgBody"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 339
    const/4 v2, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    move-result-object v0

    .line 341
    .local v0, "fileInfo":Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
    if-nez v0, :cond_0

    .line 342
    return v2

    .line 345
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->isThumbnailExist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    new-instance v3, Lcom/gsma/services/rcs/upload/FileUploadInfo;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 347
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUntil()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->convertTimeToLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    .line 348
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileSize()J

    move-result-wide v9

    .line 349
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getContentType()Ljava/lang/String;

    move-result-object v11

    .line 350
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailDataUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 351
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailDataUntil()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->convertTimeToLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 352
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailFileSize()J

    move-result-wide v15

    .line 353
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailContentType()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v21}, Lcom/gsma/services/rcs/upload/FileUploadInfo;-><init>(Landroid/net/Uri;JLjava/lang/String;JLjava/lang/String;Landroid/net/Uri;JJLjava/lang/String;JJ)V

    iput-object v3, v1, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;

    goto :goto_0

    .line 355
    :cond_1
    new-instance v3, Lcom/gsma/services/rcs/upload/FileUploadInfo;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 356
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUntil()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->convertTimeToLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v26

    .line 357
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileSize()J

    move-result-wide v27

    .line 358
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getContentType()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-string v35, ""

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v39}, Lcom/gsma/services/rcs/upload/FileUploadInfo;-><init>(Landroid/net/Uri;JLjava/lang/String;JLjava/lang/String;Landroid/net/Uri;JJLjava/lang/String;JJ)V

    iput-object v3, v1, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 365
    .end local v0    # "fileInfo":Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 368
    return v2

    .line 361
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 362
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t parse upload result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 364
    return v2
.end method

.method private tryAbort()V
    .locals 3

    .line 319
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abort uploading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    if-eqz v0, :cond_0

    .line 322
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancel(Z)Z

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;

    if-nez v0, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->handleTransferAborted()V

    .line 329
    :cond_1
    return-void
.end method

.method private tryUpload()V
    .locals 17

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    .line 292
    return-void

    .line 295
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileSize:J

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFilePath:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->bFileIconRequired:Z

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 297
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUser()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 298
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsPwd()Ljava/lang/String;

    move-result-object v11

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mPhoneId:I

    .line 299
    invoke-static {v2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getFtHttpUserAgent(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 300
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpTrustAllCerts()Z

    move-result v14

    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;-><init>(Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;ZLcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;Ljava/lang/String;)V

    .line 302
    .local v1, "request":Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;
    iget-wide v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 303
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;-><init>(I)V

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    goto :goto_0

    .line 305
    :cond_1
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;-><init>(I)V

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    .line 307
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    sget-object v3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 309
    sget-object v2, Lcom/gsma/services/rcs/upload/FileUpload$State;->INITIATING:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 310
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    if-eqz v3, :cond_2

    .line 311
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    invoke-interface {v3, v4, v2, v5}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;Z)V

    .line 313
    :cond_2
    return-void
.end method


# virtual methods
.method public abortUploadTask()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 285
    return-void
.end method

.method public addListener(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    .line 270
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    .line 271
    return-void
.end method

.method public getFileUploadId()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;

    return-object v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getState()Lcom/gsma/services/rcs/upload/FileUpload$State;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    return-object v0
.end method

.method public startUploadTask()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    return-void
.end method
