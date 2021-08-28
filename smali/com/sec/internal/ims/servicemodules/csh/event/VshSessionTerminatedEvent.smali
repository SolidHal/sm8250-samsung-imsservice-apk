.class public Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;
.super Ljava/lang/Object;
.source "VshSessionTerminatedEvent.java"


# instance fields
.field public mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public mSessionId:I


# direct methods
.method public constructor <init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "reason"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mSessionId:I

    .line 10
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 11
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VshSessionTerminatedEvent [mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
