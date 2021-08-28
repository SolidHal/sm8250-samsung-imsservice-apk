.class public Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;
.super Ljava/lang/Object;
.source "FtHttpFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation


# instance fields
.field private mBrandedUrl:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mData:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

.field private mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mPlayingLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    .line 19
    iget-wide v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mFileSize:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;
    .param p1, "x1"    # J

    .line 19
    iput-wide p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mFileSize:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    .line 19
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    .line 19
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mContentType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    .line 19
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mData:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;
    .param p1, "x1"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    .line 19
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mData:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    .line 19
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mBrandedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mBrandedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    .line 19
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;
    .param p1, "x1"    # Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 19
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    .line 19
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mPlayingLength:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;
    .param p1, "x1"    # I

    .line 19
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mPlayingLength:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileInfo [mFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mFileName:Ljava/lang/String;

    .line 31
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mData:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBrandedUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mBrandedUrl:Ljava/lang/String;

    .line 34
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileDisposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPlayingLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->mPlayingLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    return-object v0
.end method
