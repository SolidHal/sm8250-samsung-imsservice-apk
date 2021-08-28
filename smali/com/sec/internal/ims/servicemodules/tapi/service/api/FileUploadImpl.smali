.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;
.super Lcom/gsma/services/rcs/upload/IFileUpload$Stub;
.source "FileUploadImpl.java"


# instance fields
.field private mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;)V
    .locals 0
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;
    .param p2, "listener"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    .line 37
    invoke-direct {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    .line 39
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->addListener(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;)V

    .line 40
    return-void
.end method


# virtual methods
.method public abortUpload()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->abortUploadTask()V

    .line 100
    return-void
.end method

.method public getFile()Landroid/net/Uri;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/gsma/services/rcs/upload/FileUpload$State;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->getState()Lcom/gsma/services/rcs/upload/FileUpload$State;

    move-result-object v0

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->getFileUploadId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->getFileUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;

    move-result-object v0

    return-object v0
.end method

.method public startUpload()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->startUploadTask()V

    .line 91
    return-void
.end method
