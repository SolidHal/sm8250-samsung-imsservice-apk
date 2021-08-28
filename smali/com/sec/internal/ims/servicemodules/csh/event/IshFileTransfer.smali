.class public Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;
.super Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;
.source "IshFileTransfer.java"


# instance fields
.field private mTransmittedBytes:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;-><init>()V

    .line 23
    const-string/jumbo v0, "path can\'t be NULL"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkState(Z)V

    .line 25
    const-string v0, "mimeType can\'t be NULL"

    invoke-static {p3, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->mTransmittedBytes:J

    .line 29
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->mPath:Ljava/lang/String;

    .line 30
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->mSize:J

    .line 31
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->mMimeType:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->mSize:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IshFileTransfer [mTransmittedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->mTransmittedBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
