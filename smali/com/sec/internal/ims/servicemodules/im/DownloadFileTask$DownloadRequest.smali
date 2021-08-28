.class public Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRequest"
.end annotation


# instance fields
.field public mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

.field public mFilePath:Ljava/lang/String;

.field public mNetwork:Landroid/net/Network;

.field public mPassword:Ljava/lang/String;

.field public mTotalBytes:J

.field public mTransferredBytes:J

.field public mTrustAllCerts:Z

.field public mUrl:Ljava/lang/String;

.field public mUser:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;ZLjava/lang/String;Ljava/util/Map;Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "totalBytes"    # J
    .param p4, "transferredBytes"    # J
    .param p6, "filePath"    # Ljava/lang/String;
    .param p7, "user"    # Ljava/lang/String;
    .param p8, "password"    # Ljava/lang/String;
    .param p9, "ua"    # Ljava/lang/String;
    .param p10, "network"    # Landroid/net/Network;
    .param p11, "trustAllCerts"    # Z
    .param p12, "dlUrl"    # Ljava/lang/String;
    .param p14, "callback"    # Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Network;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;",
            ")V"
        }
    .end annotation

    .line 229
    .local p13, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTotalBytes:J

    .line 231
    iput-wide p4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTransferredBytes:J

    .line 232
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    .line 233
    iput-object p9, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUserAgent:Ljava/lang/String;

    .line 234
    iput-object p14, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    .line 235
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUser:Ljava/lang/String;

    .line 236
    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mPassword:Ljava/lang/String;

    .line 237
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mNetwork:Landroid/net/Network;

    .line 238
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTrustAllCerts:Z

    .line 239
    invoke-static {p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p12

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    .line 240
    if-eqz p13, :cond_1

    invoke-interface {p13}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0, p13}, Lcom/sec/internal/ims/servicemodules/im/util/FileTaskUtil;->createRequestUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    .line 243
    :cond_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadRequest{mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTotalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTransferredBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTransferredBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    .line 248
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUser:Ljava/lang/String;

    .line 249
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTrustAllCerts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTrustAllCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    return-object v0
.end method
