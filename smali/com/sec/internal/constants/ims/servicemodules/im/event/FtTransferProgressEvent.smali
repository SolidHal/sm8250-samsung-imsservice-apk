.class public Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;
.super Ljava/lang/Object;
.source "FtTransferProgressEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;
    }
.end annotation


# instance fields
.field public mId:I

.field public mRawHandle:Ljava/lang/Object;

.field public mReason:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

.field public mState:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

.field public mTotal:J

.field public mTransferred:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 1
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "id"    # I
    .param p3, "total"    # J
    .param p5, "transferred"    # J
    .param p7, "state"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;
    .param p8, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mId:I

    .line 33
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mRawHandle:Ljava/lang/Object;

    .line 34
    iput p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mId:I

    .line 35
    iput-wide p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mTotal:J

    .line 36
    iput-wide p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mTransferred:J

    .line 37
    iput-object p7, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    .line 38
    iput-object p8, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mReason:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 39
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FtTransferProgressEvent [mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTransferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mTransferred:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mReason:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
