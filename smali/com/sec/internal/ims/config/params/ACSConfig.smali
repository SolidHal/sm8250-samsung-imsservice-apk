.class public Lcom/sec/internal/ims/config/params/ACSConfig;
.super Ljava/lang/Object;
.source "ACSConfig.java"


# instance fields
.field private mAcsCompleted:Z

.field private mAcsLastError:I

.field private mAcsVersion:I

.field private mIsTriggeredByNrcr:Z

.field private mNeedForceAcs:Z

.field private mRcsBlocked:Z

.field private mRcsDormantMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsVersion:I

    .line 75
    iput v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsLastError:I

    .line 76
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsCompleted:Z

    .line 77
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mRcsDormantMode:Z

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mNeedForceAcs:Z

    .line 79
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mRcsBlocked:Z

    .line 80
    return-void
.end method

.method public disableRcsByAcs(Z)V
    .locals 0
    .param p1, "set"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mRcsBlocked:Z

    .line 26
    return-void
.end method

.method public getAcsLastError()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsLastError:I

    return v0
.end method

.method public getAcsVersion()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsVersion:I

    return v0
.end method

.method public isAcsCompleted()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsCompleted:Z

    return v0
.end method

.method public isRcsDisabled()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mRcsBlocked:Z

    return v0
.end method

.method public isRcsDormantMode()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mRcsDormantMode:Z

    return v0
.end method

.method public isTriggeredByNrcr()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mIsTriggeredByNrcr:Z

    return v0
.end method

.method public needForceAcs()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mNeedForceAcs:Z

    return v0
.end method

.method public resetAcsSettings()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsCompleted:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mNeedForceAcs:Z

    .line 71
    return-void
.end method

.method public setAcsCompleteStatus(Z)V
    .locals 0
    .param p1, "set"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsCompleted:Z

    .line 54
    return-void
.end method

.method public setAcsLastError(I)V
    .locals 0
    .param p1, "lastErrorCode"    # I

    .line 33
    iput p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsLastError:I

    .line 34
    return-void
.end method

.method public setAcsVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 41
    iput p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsVersion:I

    .line 42
    return-void
.end method

.method public setForceAcs(Z)V
    .locals 0
    .param p1, "set"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mNeedForceAcs:Z

    .line 58
    return-void
.end method

.method public setIsTriggeredByNrcr(Z)V
    .locals 0
    .param p1, "set"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mIsTriggeredByNrcr:Z

    .line 62
    return-void
.end method

.method public setRcsDormantMode(Z)V
    .locals 0
    .param p1, "set"    # Z

    .line 17
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mRcsDormantMode:Z

    .line 18
    return-void
.end method
