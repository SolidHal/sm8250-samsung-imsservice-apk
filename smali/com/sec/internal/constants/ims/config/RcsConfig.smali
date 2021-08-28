.class public final Lcom/sec/internal/constants/ims/config/RcsConfig;
.super Ljava/lang/Object;
.source "RcsConfig.java"


# instance fields
.field private mCbMsgTech:I

.field private mConfUri:Ljava/lang/String;

.field private mDownloadsPath:Ljava/lang/String;

.field private mEndUserConfReqId:Ljava/lang/String;

.field private mExploderUri:Ljava/lang/String;

.field private mFtChunkSize:I

.field private mIsAggrImdnSupported:Z

.field private mIsConfSubscribeEnabled:Z

.field private mIsMsrpCema:Z

.field private mIsPrivacyDisable:Z

.field private mIshChunkSize:I

.field private mPagerModeLimit:I

.field private mSuspendUser:Ljava/lang/String;

.field private mUseMsrpDiscardPort:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;IZZZILjava/lang/String;)V
    .locals 0
    .param p1, "ftChunkSize"    # I
    .param p2, "ishChunkSize"    # I
    .param p3, "confUri"    # Ljava/lang/String;
    .param p4, "isMsrpCema"    # Z
    .param p5, "downloadsPath"    # Ljava/lang/String;
    .param p6, "isConfSubscribeEnabled"    # Z
    .param p7, "exploderUri"    # Ljava/lang/String;
    .param p8, "pagerModeLimit"    # I
    .param p9, "useMsrpDiscardPort"    # Z
    .param p10, "isAggrImdnSupported"    # Z
    .param p11, "isPrivacyDisable"    # Z
    .param p12, "cbMsgTech"    # I
    .param p13, "endUserConfReqId"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mFtChunkSize:I

    .line 40
    iput p2, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIshChunkSize:I

    .line 41
    iput-object p3, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mConfUri:Ljava/lang/String;

    .line 42
    iput-boolean p4, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsMsrpCema:Z

    .line 43
    iput-object p5, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mDownloadsPath:Ljava/lang/String;

    .line 44
    iput-boolean p6, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsConfSubscribeEnabled:Z

    .line 45
    iput-object p7, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mExploderUri:Ljava/lang/String;

    .line 46
    iput p8, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mPagerModeLimit:I

    .line 47
    iput-boolean p9, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mUseMsrpDiscardPort:Z

    .line 48
    iput-boolean p10, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsAggrImdnSupported:Z

    .line 49
    iput-boolean p11, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsPrivacyDisable:Z

    .line 50
    iput p12, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mCbMsgTech:I

    .line 51
    iput-object p13, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mEndUserConfReqId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "suspendUser"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mSuspendUser:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getCbMsgTech()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mCbMsgTech:I

    return v0
.end method

.method public getConfUri()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mConfUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadsPath()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEndUserConfReqId()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mEndUserConfReqId:Ljava/lang/String;

    return-object v0
.end method

.method public getExploderUri()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mExploderUri:Ljava/lang/String;

    return-object v0
.end method

.method public getFtChunkSize()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mFtChunkSize:I

    return v0
.end method

.method public getIshChunkSize()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIshChunkSize:I

    return v0
.end method

.method public getPagerModeLimit()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mPagerModeLimit:I

    return v0
.end method

.method public getSuspendUser()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mSuspendUser:Ljava/lang/String;

    return-object v0
.end method

.method public isAggrImdnSupported()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsAggrImdnSupported:Z

    return v0
.end method

.method public isConfSubscribeEnabled()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsConfSubscribeEnabled:Z

    return v0
.end method

.method public isMsrpCema()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsMsrpCema:Z

    return v0
.end method

.method public isPrivacyDisable()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsPrivacyDisable:Z

    return v0
.end method

.method public isUseMsrpDiscardPort()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mUseMsrpDiscardPort:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsConfig[chunksize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mFtChunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIshChunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", confuri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mConfUri:Ljava/lang/String;

    .line 113
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is msrp cema = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsMsrpCema:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", downloads path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mDownloadsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", conf.subscribe enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsConfSubscribeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", exploderUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mExploderUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pagerModeLimit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mPagerModeLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useMsrpDiscardPort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mUseMsrpDiscardPort:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", aggr.imdn supported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsAggrImdnSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", privacyDisable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsPrivacyDisable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cbMsgTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mCbMsgTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endUserConfReqId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mEndUserConfReqId:Ljava/lang/String;

    .line 122
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method
