.class public Lcom/sec/internal/ims/core/iil/Registration;
.super Ljava/lang/Object;
.source "Registration.java"


# static fields
.field public static final CDPN_REGISTERED:I = 0x20

.field public static final RCS_REGISTERED:I = 0x4

.field public static final SMS_OVER_IMS_REGISTERED:I = 0x2

.field public static final VOLTE_REGISTERED:I = 0x1

.field public static final VT_REGISTERED:I = 0x8


# instance fields
.field private mDereiReasonCode:I

.field private mEcmpMode:I

.field private mEpdgMode:I

.field private mError:I

.field private mErrorMsg:Ljava/lang/String;

.field private mFeatureMask:I

.field private mFeatureTags:Ljava/lang/String;

.field private mImpu:Ljava/lang/String;

.field private mLimitedMode:I

.field private mPdnType:I

.field private mRat:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureMask:I

    .line 5
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mPdnType:I

    .line 6
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEcmpMode:I

    .line 7
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mLimitedMode:I

    .line 8
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEpdgMode:I

    .line 9
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mRat:I

    .line 10
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mError:I

    .line 11
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mDereiReasonCode:I

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mErrorMsg:Ljava/lang/String;

    .line 14
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureTags:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mImpu:Ljava/lang/String;

    .line 36
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureMask:I

    .line 37
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mPdnType:I

    .line 38
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEcmpMode:I

    .line 39
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mLimitedMode:I

    .line 40
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEpdgMode:I

    .line 41
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mRat:I

    .line 42
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mError:I

    .line 43
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mDereiReasonCode:I

    .line 44
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2
    .param p1, "feature"    # I
    .param p2, "pdnType"    # I
    .param p3, "ecmp"    # I
    .param p4, "limited"    # I
    .param p5, "epdgMode"    # I
    .param p6, "rat"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureMask:I

    .line 5
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mPdnType:I

    .line 6
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEcmpMode:I

    .line 7
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mLimitedMode:I

    .line 8
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEpdgMode:I

    .line 9
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mRat:I

    .line 10
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mError:I

    .line 11
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mDereiReasonCode:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mErrorMsg:Ljava/lang/String;

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureTags:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mImpu:Ljava/lang/String;

    .line 27
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureMask:I

    .line 28
    iput p2, p0, Lcom/sec/internal/ims/core/iil/Registration;->mPdnType:I

    .line 29
    iput p3, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEcmpMode:I

    .line 30
    iput p4, p0, Lcom/sec/internal/ims/core/iil/Registration;->mLimitedMode:I

    .line 31
    iput p5, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEpdgMode:I

    .line 32
    iput p6, p0, Lcom/sec/internal/ims/core/iil/Registration;->mRat:I

    .line 33
    return-void
.end method


# virtual methods
.method public getDeregiReasonCode()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mDereiReasonCode:I

    return v0
.end method

.method public getEcmpMode()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEcmpMode:I

    return v0
.end method

.method public getEpdgMode()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEpdgMode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureMask()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureMask:I

    return v0
.end method

.method public getFeatureTags()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureTags:Ljava/lang/String;

    return-object v0
.end method

.method public getImpu()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mImpu:Ljava/lang/String;

    return-object v0
.end method

.method public getLimitedMode()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mLimitedMode:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mPdnType:I

    return v0
.end method

.method public getRegiRat()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mRat:I

    return v0
.end method

.method public getSipError()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mError:I

    return v0
.end method

.method public setDeregiReasonCode(I)V
    .locals 0
    .param p1, "reasonCode"    # I

    .line 55
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mDereiReasonCode:I

    .line 56
    return-void
.end method

.method public setEcmpMode(I)V
    .locals 0
    .param p1, "ecmpMode"    # I

    .line 87
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEcmpMode:I

    .line 88
    return-void
.end method

.method public setEpdgMode(I)V
    .locals 0
    .param p1, "epdgMode"    # I

    .line 103
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEpdgMode:I

    .line 104
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mErrorMsg:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setFeatureMask(I)V
    .locals 0
    .param p1, "featureMask"    # I

    .line 71
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureMask:I

    .line 72
    return-void
.end method

.method public setFeatureTags(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureTags"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureTags:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setImpu(Ljava/lang/String;)V
    .locals 0
    .param p1, "impu"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mImpu:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setLimitedMode(I)V
    .locals 0
    .param p1, "limitedMode"    # I

    .line 95
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mLimitedMode:I

    .line 96
    return-void
.end method

.method public setNetworkType(I)V
    .locals 0
    .param p1, "pdnType"    # I

    .line 79
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mPdnType:I

    .line 80
    return-void
.end method

.method public setRegiRat(I)V
    .locals 0
    .param p1, "rat"    # I

    .line 127
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mRat:I

    .line 128
    return-void
.end method

.method public setSipError(I)V
    .locals 0
    .param p1, "error"    # I

    .line 47
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mError:I

    .line 48
    return-void
.end method
