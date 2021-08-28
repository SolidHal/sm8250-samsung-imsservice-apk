.class public Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;
.super Ljava/lang/Object;
.source "SendSlmResult.java"


# instance fields
.field public final mPAssertedIdentity:Ljava/lang/String;

.field public final mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .param p2, "pAssertedIdentity"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 22
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;->mPAssertedIdentity:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendSlmResult [, mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPAssertedIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;->mPAssertedIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
