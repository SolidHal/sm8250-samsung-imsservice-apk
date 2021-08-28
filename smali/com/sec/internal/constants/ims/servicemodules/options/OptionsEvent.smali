.class public Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;
.super Ljava/lang/Object;
.source "OptionsEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    }
.end annotation


# instance fields
.field private mExtFeature:Ljava/lang/String;

.field private mFeatures:J

.field private mIsResponse:Z

.field private mIsTokenUsed:Z

.field private mPAssertedIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mReason:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

.field private mSessionId:I

.field private mSuccess:Z

.field private mTxId:Ljava/lang/String;

.field private mUri:Lcom/sec/ims/util/ImsUri;

.field private mlastSeen:I


# direct methods
.method public constructor <init>(ZLcom/sec/ims/util/ImsUri;JIZILjava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "features"    # J
    .param p5, "phoneId"    # I
    .param p6, "isResponse"    # Z
    .param p7, "sessionId"    # I
    .param p8, "txId"    # Ljava/lang/String;
    .param p10, "extFeature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sec/ims/util/ImsUri;",
            "JIZI",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    .local p9, "pAssertedIds":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mSuccess:Z

    .line 37
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 38
    iput-wide p3, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mFeatures:J

    .line 39
    iput p5, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mPhoneId:I

    .line 40
    iput-boolean p6, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mIsResponse:Z

    .line 41
    iput p7, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mSessionId:I

    .line 42
    iput-object p8, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mTxId:Ljava/lang/String;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mlastSeen:I

    .line 44
    iput-object p10, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mExtFeature:Ljava/lang/String;

    .line 45
    iput-object p9, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mPAssertedIdSet:Ljava/util/Set;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mIsTokenUsed:Z

    .line 47
    return-void
.end method


# virtual methods
.method public getExtFeature()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mExtFeature:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mFeatures:J

    return-wide v0
.end method

.method public getIsTokenUsed()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mIsTokenUsed:Z

    return v0
.end method

.method public getLastSeen()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mlastSeen:I

    return v0
.end method

.method public getPAssertedIdSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mPAssertedIdSet:Ljava/util/Set;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mPhoneId:I

    return v0
.end method

.method public getReason()Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mReason:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mSessionId:I

    return v0
.end method

.method public getTxId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mTxId:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public isResponse()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mIsResponse:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mSuccess:Z

    return v0
.end method

.method public setFeatures(J)V
    .locals 0
    .param p1, "features"    # J

    .line 74
    iput-wide p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mFeatures:J

    .line 75
    return-void
.end method

.method public setIsTokenUsed(Z)V
    .locals 0
    .param p1, "isTokenUsed"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mIsTokenUsed:Z

    .line 87
    return-void
.end method

.method public setLastSeen(I)V
    .locals 0
    .param p1, "mlastSeen"    # I

    .line 106
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mlastSeen:I

    .line 107
    return-void
.end method

.method public setReason(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;)V
    .locals 0
    .param p1, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 82
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mReason:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OptionsEvent [mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mFeatures:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mIsResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mReason:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPAssertedIdSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mPAssertedIdSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mExtFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
