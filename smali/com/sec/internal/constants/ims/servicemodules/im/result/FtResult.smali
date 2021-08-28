.class public Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;
.super Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
.source "FtResult.java"


# instance fields
.field public mRawHandle:Ljava/lang/Object;

.field public mRetryTimer:I


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V
    .locals 1
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .param p3, "rawHandle"    # Ljava/lang/Object;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .line 22
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRawHandle:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRetryTimer:I

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .param p2, "rawHandle"    # Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;I)V
    .locals 7
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .param p2, "rawHandle"    # Ljava/lang/Object;
    .param p3, "retryTimer"    # I

    .line 31
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getMsrpResponse()Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object v4

    .line 32
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getWarningHdr()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getReasonHdr()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    move-result-object v6

    .line 31
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    .line 33
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRawHandle:Ljava/lang/Object;

    .line 34
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRetryTimer:I

    .line 35
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FtResult ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRetryTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRetryTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
