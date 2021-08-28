.class public Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
.super Landroid/os/AsyncTask;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException;,
        Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;,
        Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final FT_SIZE_MARGIN:J = 0x2800L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_PROGRESS_COUNT:I = 0x32


# instance fields
.field private mDownloadProgressElapsed:J

.field private mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

.field protected final mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field private mPhoneId:I

.field private mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

.field private mTotal:J

.field private mTransferred:J

.field private mWritten:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 75
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 76
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    .line 78
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 80
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 60
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 60
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 60
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
    .param p1, "x1"    # J

    .line 60
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 60
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mDownloadProgressElapsed:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
    .param p1, "x1"    # J

    .line 60
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mDownloadProgressElapsed:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    return-object v0
.end method

.method private cancelRequest(Lcom/sec/internal/helper/HttpRequest;)V
    .locals 5
    .param p1, "httpReq"    # Lcom/sec/internal/helper/HttpRequest;

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleFtHttpDownloadError(Lcom/sec/internal/helper/HttpRequest;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;I)V

    .line 205
    .local v0, "response":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->getDelay()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .line 206
    return-void
.end method

.method private isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z
    .locals 1
    .param p1, "e"    # Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    .line 199
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    instance-of v0, v0, Ljava/net/UnknownHostException;

    return v0
.end method

.method private sendEmptyGetRequest(I)I
    .locals 1
    .param p1, "bufferSize"    # I

    .line 356
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 357
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->setDefaultHeaders(I)V

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v0

    return v0
.end method

.method private sendGetRequest(I)I
    .locals 11
    .param p1, "bufferSize"    # I

    .line 261
    const-string v0, "application/vnd.gsma.eap-relay.v1.0+json"

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 262
    const/4 v1, -0x1

    .line 265
    .local v1, "response":I
    const/4 v2, 0x3

    const/4 v3, -0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->sendEmptyGetRequest(I)I

    move-result v4

    move v1, v4

    .line 267
    const/16 v4, 0xc8

    if-eq v1, v4, :cond_4

    const/16 v0, 0xce

    if-eq v1, v0, :cond_3

    const/16 v0, 0x12e

    if-eq v1, v0, :cond_1

    const/16 v0, 0x191

    if-eq v1, v0, :cond_0

    .line 329
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive HTTP response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " neither OK nor UNAUTHORIZED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;)V

    goto/16 :goto_0

    .line 295
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Receive 401 Unauthorized, attempt to generate response"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->wwwAuthenticate()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "challenge":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "challenge: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    const-string v6, "GET"

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 302
    invoke-virtual {v7}, Lcom/sec/internal/helper/HttpRequest;->getCipherSuite()Ljava/lang/String;

    move-result-object v7

    .line 301
    invoke-static {v4, v5, v0, v6, v7}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "authResponse":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 305
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->setDefaultHeaders(I)V

    .line 306
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 308
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v2

    move v1, v2

    .line 309
    goto/16 :goto_0

    .line 312
    .end local v0    # "challenge":Ljava/lang/String;
    .end local v4    # "authResponse":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v4, "Location"

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, "location":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    new-instance v0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v8, v4, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mNetwork:Landroid/net/Network;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v9, v4, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUserAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-boolean v10, v4, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTrustAllCerts:Z

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "openIdResponseURL":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 317
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 318
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iput-object v0, v4, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    .line 319
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->sendEmptyGetRequest(I)I

    move-result v2

    move v1, v2

    .line 320
    goto/16 :goto_0

    .line 323
    .end local v0    # "openIdResponseURL":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "sendGetRequest: OpenId Process failed!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, -0x1

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {v0, v4, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .line 326
    goto/16 :goto_0

    .line 291
    .end local v7    # "location":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Receive 206 Partial"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    goto/16 :goto_0

    .line 269
    :cond_4
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Receive 200 OK"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v5, "Content-Type"

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 271
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 272
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "body":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 274
    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    invoke-static {v5, v4}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getEAPAkaChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "akaResponse":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 276
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 277
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->setDefaultHeaders(I)V

    .line 279
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v6, v0}, Lcom/sec/internal/helper/HttpRequest;->contentType(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0, v5}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v0

    move v1, v0

    .line 282
    goto :goto_0

    .line 285
    .end local v5    # "akaResponse":Ljava/lang/String;
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EAP AKA authentication failed, code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v6}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v1, -0x1

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {v0, v5, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v4    # "body":Ljava/lang/String;
    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 350
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {v4, v5, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    goto :goto_2

    .line 345
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 347
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {v2, v4, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 342
    :catch_2
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 344
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {v2, v4, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .line 351
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_6
    :goto_0
    goto :goto_2

    .line 332
    :catch_3
    move-exception v0

    .line 333
    .local v0, "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 334
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 336
    :cond_7
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 337
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v5, 0x1e

    invoke-interface {v2, v4, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    goto :goto_1

    .line 339
    :cond_8
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {v4, v5, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .line 341
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " happened. Retry download Task."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    goto :goto_0

    .line 352
    :goto_2
    return v1
.end method

.method private setDefaultHeaders(I)V
    .locals 6
    .param p1, "bufferSize"    # I

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mNetwork:Landroid/net/Network;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v5, v2, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUserAgent:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x2710

    const v4, 0x1d4c0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/helper/HttpRequest;->setParams(Landroid/net/Network;ZIILjava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 363
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/HttpRequest;->bufferSize(I)Lcom/sec/internal/helper/HttpRequest;

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v1, "is_eap_supported"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v1, "Accept"

    const-string v2, "application/vnd.gsma.eap-relay.v1.0+json"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v1, "ft_with_gba"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v1, "use_useridentity_for_fthttp"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpuFromIsim(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "impu":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/util/ImsUtil;->getPublicId(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

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

    .line 378
    .end local v0    # "impu":Ljava/lang/String;
    :cond_2
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 379
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/sec/internal/helper/HttpRequest;->range(JJ)Lcom/sec/internal/helper/HttpRequest;

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTrustAllCerts:Z

    if-eqz v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->trustAllCerts()Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->trustAllHosts()Lcom/sec/internal/helper/HttpRequest;

    .line 384
    :cond_4
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;)Ljava/lang/Long;
    .locals 16
    .param p1, "params"    # [Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    .line 84
    move-object/from16 v1, p0

    const/4 v0, 0x0

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    invoke-static {v2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUserAgent:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 90
    .local v2, "threadId":I
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 92
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    aget-object v3, p1, v0

    iput-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    .line 96
    iget-wide v3, v3, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTransferredBytes:J

    iput-wide v3, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    .line 97
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-wide v3, v3, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTotalBytes:J

    iput-wide v3, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    .line 99
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 101
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjust mTransferred to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    .line 103
    iget-wide v6, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 104
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Already the download was completed."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    iget-wide v4, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-interface {v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCompleted(J)V

    .line 106
    iget-wide v4, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    .line 111
    const-wide/32 v4, 0x7d000

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-wide v6, v6, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTotalBytes:J

    const-wide/16 v8, 0x32

    div-long/2addr v6, v8

    const-wide/32 v8, 0xf000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 113
    .local v4, "bufferSize":I
    const/4 v5, 0x0

    .line 116
    .local v5, "output":Ljava/io/BufferedOutputStream;
    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    :try_start_0
    invoke-direct {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->sendGetRequest(I)I

    move-result v9

    .line 118
    .local v9, "response":I
    const/16 v10, 0xc8

    const/16 v11, 0xce

    if-eq v9, v10, :cond_3

    if-ne v9, v11, :cond_1

    iget-wide v12, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    cmp-long v10, v12, v6

    if-gtz v10, :cond_3

    .line 119
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Download failed, response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;)V

    .line 121
    iget-wide v10, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    if-eqz v5, :cond_2

    .line 186
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 190
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    nop

    .line 192
    :goto_1
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 121
    return-object v6

    .line 124
    :cond_3
    :try_start_2
    new-instance v10, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v13, v13, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    iget-wide v14, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    cmp-long v14, v14, v6

    const/4 v15, 0x1

    if-lez v14, :cond_4

    move v14, v15

    goto :goto_2

    :cond_4
    move v14, v0

    :goto_2
    invoke-direct {v12, v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v10, v12, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v5, v10

    .line 126
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v12, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;

    invoke-direct {v12, v1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)V

    invoke-virtual {v10, v12}, Lcom/sec/internal/helper/HttpRequest;->progress(Lcom/sec/internal/helper/HttpRequest$UploadProgress;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v10

    .line 148
    invoke-virtual {v10, v5}, Lcom/sec/internal/helper/HttpRequest;->receive(Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_9

    .line 154
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v10}, Lcom/sec/internal/helper/HttpRequest;->ok()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 155
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Download success, handle response message."

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    iget-wide v10, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    iget-wide v12, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    add-long/2addr v10, v12

    invoke-interface {v0, v10, v11}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCompleted(J)V

    goto :goto_3

    .line 158
    :cond_5
    sget-object v10, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Download failed, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v13}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-wide v12, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    iget-wide v6, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    cmp-long v6, v12, v6

    if-eqz v6, :cond_6

    iget-wide v6, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    iget-wide v12, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    add-long/2addr v6, v12

    iget-wide v12, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    cmp-long v6, v6, v12

    if-nez v6, :cond_7

    :cond_6
    move v0, v15

    .line 161
    .local v0, "isUploaded":Z
    :cond_7
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v6}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v6

    if-ne v6, v11, :cond_8

    if-eqz v0, :cond_8

    .line 162
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    iget-wide v10, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    iget-wide v12, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    add-long/2addr v10, v12

    invoke-interface {v6, v10, v11}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCompleted(J)V

    goto :goto_3

    .line 164
    :cond_8
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-direct {v1, v6}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;)V
    :try_end_2
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    .end local v0    # "isUploaded":Z
    .end local v9    # "response":I
    :goto_3
    nop

    .line 186
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 191
    goto :goto_4

    .line 188
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 190
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 193
    nop

    .line 195
    iget-wide v6, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 151
    .restart local v9    # "response":I
    :cond_9
    :try_start_4
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException;

    const-string v6, "Download Task Failed. isCancelled() is called."

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException;-><init>(Ljava/lang/String;)V

    .end local v2    # "threadId":I
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "bufferSize":I
    .end local v5    # "output":Ljava/io/BufferedOutputStream;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
    .end local p1    # "params":[Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;
    throw v0
    :try_end_4
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    .end local v9    # "response":I
    .restart local v2    # "threadId":I
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "bufferSize":I
    .restart local v5    # "output":Ljava/io/BufferedOutputStream;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
    .restart local p1    # "params":[Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;
    :catchall_0
    move-exception v0

    move-object v6, v0

    goto/16 :goto_c

    .line 179
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 180
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 181
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {v0, v7, v8, v8}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .line 182
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 185
    if-eqz v5, :cond_a

    .line 186
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 188
    :catch_3
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 190
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_5
    nop

    .line 192
    :goto_6
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 182
    return-object v7

    .line 176
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    move-object v6, v0

    .line 177
    .local v6, "e":Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException;
    :try_start_7
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException;->printStackTrace()V

    .line 178
    iget-wide v7, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 185
    if-eqz v5, :cond_b

    .line 186
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    .line 188
    :catch_5
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 190
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :goto_7
    nop

    .line 192
    :goto_8
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 178
    return-object v7

    .line 167
    .end local v6    # "e":Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException;
    :catch_6
    move-exception v0

    move-object v6, v0

    .line 168
    .local v6, "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :try_start_9
    invoke-direct {v1, v6}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 169
    invoke-virtual {v6}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 170
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v9, 0x1e

    invoke-interface {v0, v7, v9, v8}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    goto :goto_9

    .line 172
    :cond_c
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v9, 0x3

    invoke-interface {v0, v7, v9, v8}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .line 174
    :goto_9
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " happened. Retry download Task."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-wide v7, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 185
    if-eqz v5, :cond_d

    .line 186
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_a

    .line 188
    :catch_7
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 190
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :cond_d
    :goto_a
    nop

    .line 192
    :goto_b
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 175
    return-object v7

    .line 185
    .end local v6    # "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :goto_c
    if-eqz v5, :cond_e

    .line 186
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_d

    .line 188
    :catch_8
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 190
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :cond_e
    :goto_d
    nop

    .line 192
    :goto_e
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 193
    throw v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, [Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->doInBackground([Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
