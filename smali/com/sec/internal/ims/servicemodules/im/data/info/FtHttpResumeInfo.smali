.class public Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
.super Ljava/lang/Object;
.source "FtHttpResumeInfo.java"


# instance fields
.field private final mEnd:J

.field private final mStart:J

.field private final mUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(JJLjava/net/URL;)V
    .locals 0
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "url"    # Ljava/net/URL;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->mStart:J

    .line 25
    iput-wide p3, p0, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->mEnd:J

    .line 26
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->mUrl:Ljava/net/URL;

    .line 27
    return-void
.end method


# virtual methods
.method public getEnd()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->mEnd:J

    return-wide v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FtHttpResumeInfo [mStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->mStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->mEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->mUrl:Ljava/net/URL;

    .line 44
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    return-object v0
.end method
