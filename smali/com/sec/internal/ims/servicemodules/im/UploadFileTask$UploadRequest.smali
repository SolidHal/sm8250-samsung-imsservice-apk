.class public Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;
.super Ljava/lang/Object;
.source "UploadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadRequest"
.end annotation


# instance fields
.field public bFileIcon:Z

.field public mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

.field public mContentType:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mNetwork:Landroid/net/Network;

.field public mPassword:Ljava/lang/String;

.field public mTid:Ljava/lang/String;

.field public mTotalBytes:J

.field public mTrustAllCerts:Z

.field public mUrl:Ljava/lang/String;

.field public mUser:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;ZLcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "totalBytes"    # J
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "useFileIcon"    # Z
    .param p6, "tid"    # Ljava/lang/String;
    .param p7, "user"    # Ljava/lang/String;
    .param p8, "password"    # Ljava/lang/String;
    .param p9, "ua"    # Ljava/lang/String;
    .param p10, "network"    # Landroid/net/Network;
    .param p11, "trustAllCert"    # Z
    .param p12, "callback"    # Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;
    .param p13, "contentType"    # Ljava/lang/String;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .line 560
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    .line 561
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFilePath:Ljava/lang/String;

    .line 562
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    .line 563
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUser:Ljava/lang/String;

    .line 564
    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mPassword:Ljava/lang/String;

    .line 565
    iput-object p9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    .line 566
    iput-object p12, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    .line 567
    iput-boolean p5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->bFileIcon:Z

    .line 568
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    .line 569
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    .line 570
    iput-object p13, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentType:Ljava/lang/String;

    .line 571
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadRequest{mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFilePath:Ljava/lang/String;

    .line 576
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bFileIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->bFileIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUser:Ljava/lang/String;

    .line 577
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mPassword:Ljava/lang/String;

    .line 578
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTrustAllCerts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    return-object v0
.end method
