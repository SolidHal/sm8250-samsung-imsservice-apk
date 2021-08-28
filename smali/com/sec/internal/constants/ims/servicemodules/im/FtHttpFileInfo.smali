.class public final Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
.super Ljava/lang/Object;
.source "FtHttpFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;,
        Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;
    }
.end annotation


# instance fields
.field private final mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

.field private final mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    .line 63
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    .line 64
    return-void
.end method


# virtual methods
.method public getBrandedUrl()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$600(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$200(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataUntil()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$300(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->access$500(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataUrl()Ljava/net/URL;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$300(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->access$400(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$700(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$100(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$000(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayingLength()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$800(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)I

    move-result v0

    return v0
.end method

.method public getThumbnailContentType()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$200(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailDataUntil()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$300(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->access$500(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailDataUrl()Ljava/net/URL;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$300(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->access$400(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailFileSize()J
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$000(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isThumbnailExist()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$300(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBrandedUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "brandedUrl"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$602(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$202(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)V
    .locals 1
    .param p1, "data"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    .line 134
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$302(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    .line 135
    return-void
.end method

.method public setFileDisposition(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileDisposition"    # Ljava/lang/String;

    .line 148
    const-string/jumbo v0, "render"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$702(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$702(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 152
    :goto_0
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$102(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "size"    # J

    .line 122
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$002(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;J)J

    .line 123
    return-void
.end method

.method public setPlayingLength(I)V
    .locals 1
    .param p1, "playingLength"    # I

    .line 160
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$802(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;I)I

    .line 161
    return-void
.end method

.method public setThumbnailContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$202(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setThumbnailData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)V
    .locals 1
    .param p1, "data"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    .line 172
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$302(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    .line 173
    return-void
.end method

.method public setThumbnailFileSize(J)V
    .locals 1
    .param p1, "size"    # J

    .line 164
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->access$002(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;J)J

    .line 165
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FtHttpFileInfo [mFileInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbnailInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
