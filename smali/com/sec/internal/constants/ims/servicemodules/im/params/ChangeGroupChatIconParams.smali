.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;
.super Ljava/lang/Object;
.source "ChangeGroupChatIconParams.java"


# instance fields
.field public final mCallback:Landroid/os/Message;

.field public final mIconPath:Ljava/lang/String;

.field public final mRawHandle:Ljava/lang/Object;

.field public final mReqKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "iconPath"    # Ljava/lang/String;
    .param p3, "mCallback"    # Landroid/os/Message;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mReqKey:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mRawHandle:Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mCallback:Landroid/os/Message;

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeGroupChatIconParams [mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIconPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReqKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mReqKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
