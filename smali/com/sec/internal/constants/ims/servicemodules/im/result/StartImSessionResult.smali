.class public Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;
.super Ljava/lang/Object;
.source "StartImSessionResult.java"


# instance fields
.field public mAllowedMethods:Ljava/lang/String;

.field public mIsChatbotRole:Z

.field public mIsMsgFallbackSupported:Z

.field public mIsMsgRevokeSupported:Z

.field public mIsProvisional:Z

.field public mRawHandle:Ljava/lang/Object;

.field public mRemoteUserDisplayName:Ljava/lang/String;

.field public final mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

.field public mRetryTimer:I

.field public mSessionUri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V
    .locals 10
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "rawHandle"    # Ljava/lang/Object;

    .line 33
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;ILjava/lang/String;ZZZLjava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;ILjava/lang/String;ZZZLjava/lang/String;)V
    .locals 1
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "rawHandle"    # Ljava/lang/Object;
    .param p4, "retryTimer"    # I
    .param p5, "allowedMethods"    # Ljava/lang/String;
    .param p6, "isMsgRevokeSupported"    # Z
    .param p7, "isMsgFallbackSupported"    # Z
    .param p8, "isChatbotRole"    # Z
    .param p9, "displayName"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 52
    invoke-static {p9}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRemoteUserDisplayName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    .line 54
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    .line 55
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRetryTimer:I

    .line 56
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mAllowedMethods:Ljava/lang/String;

    .line 57
    iput-boolean p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsMsgRevokeSupported:Z

    .line 58
    iput-boolean p7, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsMsgFallbackSupported:Z

    .line 59
    iput-boolean p8, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsChatbotRole:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "rawHandle"    # Ljava/lang/Object;
    .param p4, "isProvisional"    # Z

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 39
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    .line 40
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    .line 41
    iput-boolean p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsProvisional:Z

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRetryTimer:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mAllowedMethods:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRemoteUserDisplayName:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public toCriticalLog()Ljava/lang/String;
    .locals 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRetryTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsProvisional:Z

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsMsgRevokeSupported:Z

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsChatbotRole:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartImSessionResult [mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRetryTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRetryTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAllowedMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mAllowedMethods:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsProvisional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsProvisional:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMsgRevokeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsMsgRevokeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsChatbotRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsChatbotRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteUserDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRemoteUserDisplayName:Ljava/lang/String;

    .line 72
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    return-object v0
.end method
