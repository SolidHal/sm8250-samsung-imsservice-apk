.class public Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;
.super Ljava/lang/Object;
.source "SendMessageResult.java"


# instance fields
.field public mAllowedMethods:Ljava/lang/String;

.field public mIsProvisional:Z

.field public mRawHandle:Ljava/lang/Object;

.field public final mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 1
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V
    .locals 1
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .param p3, "allowedMethods"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mRawHandle:Ljava/lang/Object;

    .line 35
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mIsProvisional:Z

    .line 37
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mAllowedMethods:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Z)V
    .locals 1
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .param p3, "isProvisional"    # Z

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mRawHandle:Ljava/lang/Object;

    .line 28
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 29
    iput-boolean p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mIsProvisional:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mAllowedMethods:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendMessageParams [mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsProvisional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mIsProvisional:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAllowedMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mAllowedMethods:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
