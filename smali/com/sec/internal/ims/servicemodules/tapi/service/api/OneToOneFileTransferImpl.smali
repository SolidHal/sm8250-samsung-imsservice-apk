.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;
.super Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;
.source "OneToOneFileTransferImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

.field private mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "imModule"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 71
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 73
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "imModule"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 63
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 65
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 66
    return-void
.end method


# virtual methods
.method public abortTransfer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abortTransfer id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->getTransferId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->cancelFileTransfer(I)V

    .line 258
    return-void
.end method

.method public acceptInvitation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 236
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptInvitation id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->acceptFileTransfer(I)V

    .line 238
    return-void
.end method

.method public canPauseTransfer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public canResendTransfer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v0

    return v0
.end method

.method public getFile()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFileDisposition()Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    if-ne v0, v1, :cond_0

    .line 116
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->RENDER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    .line 115
    :goto_0
    return-object v0
.end method

.method public getFileExpiration()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    const-wide/16 v0, 0x0

    .line 419
    .local v0, "time":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 420
    .local v2, "df":Ljava/text/DateFormat;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileExpire()Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "timeStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    goto :goto_0

    .line 425
    :catch_0
    move-exception v4

    .line 426
    .local v4, "e":Ljava/lang/NullPointerException;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "time is 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 423
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    .line 424
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    .line 428
    .end local v4    # "e":Ljava/text/ParseException;
    :goto_0
    nop

    .line 429
    :goto_1
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFileExpiration, time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-wide v0
.end method

.method public getFileIcon()Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 133
    .local v2, "uri":Landroid/net/Uri;
    return-object v2
.end method

.method public getFileIconExpiration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->getFileExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileIconMimeType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getContentTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getReasonCode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 346
    .local v0, "reasonCode":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v1

    .line 347
    .local v1, "cancel":Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRejectReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    move-result-object v2

    .line 348
    .local v2, "reject":Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    if-eqz v2, :cond_0

    .line 349
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->ftRejectReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->ftCancelReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFtMsg.getContactUri() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getState()Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 190
    .local v0, "state":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 191
    .local v1, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 213
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_0

    .line 210
    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ABORTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 211
    goto :goto_0

    .line 206
    :cond_1
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->TRANSFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 207
    goto :goto_0

    .line 203
    :cond_2
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->STARTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 204
    goto :goto_0

    .line 196
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v2, v1, :cond_4

    .line 197
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INVITED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_0

    .line 198
    :cond_4
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v2, v1, :cond_5

    .line 199
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INITIATING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 216
    :cond_5
    :goto_0
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getInsertedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestampDelivered()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    const-wide/16 v0, 0x0

    .line 461
    .local v0, "time":J
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isOutgoing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDeliveredTimestamp()J

    move-result-wide v0

    .line 464
    :cond_0
    return-wide v0
.end method

.method public getTimestampDisplayed()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    const-wide/16 v0, 0x0

    .line 476
    .local v0, "time":J
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isOutgoing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDisplayedTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 479
    :cond_0
    return-wide v0
.end method

.method public getTimestampSent()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    const-wide/16 v0, 0x0

    .line 405
    .local v0, "time":J
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 406
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getInsertedTimestamp()J

    move-result-wide v0

    goto :goto_0

    .line 408
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getSentTimestamp()J

    move-result-wide v0

    .line 410
    :goto_0
    return-wide v0
.end method

.method public getTransferId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllowedToResumeTransfer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    const/4 v0, 0x1

    return v0
.end method

.method public isExpiredDelivery()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDispositionNotification()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 502
    const/4 v0, 0x1

    return v0

    .line 504
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupTransfer()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 307
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    return v1

    .line 310
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isRead()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    .line 489
    .local v0, "status":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v0, v1, :cond_0

    .line 490
    const/4 v1, 0x1

    return v1

    .line 492
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public pauseTransfer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pauseTransfer id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->cancelFileTransfer(I)V

    .line 268
    return-void
.end method

.method public rejectInvitation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rejectInvitation id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->rejectFileTransfer(I)V

    .line 248
    return-void
.end method

.method public resendTransfer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resendTransfer id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->getState()Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    .line 296
    :cond_0
    return-void
.end method

.method public resumeTransfer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeTransfer id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->resumeSendingTransfer(IZ)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->resumeReceivingTransfer(I)V

    .line 283
    :goto_0
    return-void
.end method
