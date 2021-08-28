.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;
.super Ljava/lang/Object;
.source "AcceptSlmLMMSessionParams.java"


# instance fields
.field public mCallback:Landroid/os/Message;

.field public mChatId:Ljava/lang/String;

.field public mOwnImsi:Ljava/lang/String;

.field public mRawHandle:Ljava/lang/Object;

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Message;Ljava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "userAlias"    # Ljava/lang/String;
    .param p3, "rawHandle"    # Ljava/lang/Object;
    .param p4, "callback"    # Landroid/os/Message;
    .param p5, "ownImsi"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mChatId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mUserAlias:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mRawHandle:Ljava/lang/Object;

    .line 30
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mCallback:Landroid/os/Message;

    .line 31
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mOwnImsi:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AcceptSlmLMMSessionParams [mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mUserAlias:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    return-object v0
.end method
