.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;
.super Ljava/lang/Object;
.source "ChangeGroupChatLeaderParams.java"


# instance fields
.field public final mCallback:Landroid/os/Message;

.field public final mLeader:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public final mRawHandle:Ljava/lang/Object;

.field public final mReqKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;Landroid/os/Message;)V
    .locals 1
    .param p1, "mRawHandle"    # Ljava/lang/Object;
    .param p3, "mCallback"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 17
    .local p2, "leader":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mReqKey:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mRawHandle:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mLeader:Ljava/util/List;

    .line 20
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeGroupChatLeaderParams [mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mLeader:Ljava/util/List;

    .line 26
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReqKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mReqKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    return-object v0
.end method
