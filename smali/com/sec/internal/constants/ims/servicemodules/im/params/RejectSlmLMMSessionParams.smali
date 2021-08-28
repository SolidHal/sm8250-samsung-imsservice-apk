.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;
.super Ljava/lang/Object;
.source "RejectSlmLMMSessionParams.java"


# instance fields
.field public mCallback:Landroid/os/Message;

.field public mChatId:Ljava/lang/String;

.field public mOwnImsi:Ljava/lang/String;

.field public mRawHandle:Ljava/lang/Object;

.field public mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;Ljava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "rawHandle"    # Ljava/lang/Object;
    .param p3, "sessionStopReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .param p4, "callback"    # Landroid/os/Message;
    .param p5, "ownImsi"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mChatId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mRawHandle:Ljava/lang/Object;

    .line 30
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 31
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mCallback:Landroid/os/Message;

    .line 32
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mOwnImsi:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RejectSlmLMMSessionParams [mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionStopReason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
