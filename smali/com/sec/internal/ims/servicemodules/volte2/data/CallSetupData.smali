.class public Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;
.super Ljava/lang/Object;
.source "CallSetupData.java"


# instance fields
.field private mAlertInfo:Ljava/lang/String;

.field private mCallType:I

.field private mCli:Ljava/lang/String;

.field private mCmcBoundSessionId:I

.field private mComposerData:Landroid/os/Bundle;

.field private mDestUri:Lcom/sec/ims/util/ImsUri;

.field private mDialingNumber:Ljava/lang/String;

.field private mIsEmergency:Z

.field private mIsLteEpsOnlyAttached:Z

.field private mLetteringText:Ljava/lang/String;

.field private mOrigUri:Lcom/sec/ims/util/ImsUri;

.field private mP2p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPEmergencyInfoOfAtt:Ljava/lang/String;

.field private mReplaceCallId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "destUri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "dialingNumber"    # Ljava/lang/String;
    .param p3, "callType"    # I
    .param p4, "cli"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsEmergency:Z

    .line 32
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsLteEpsOnlyAttached:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mP2p:Ljava/util/List;

    .line 34
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcBoundSessionId:I

    .line 35
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mComposerData:Landroid/os/Bundle;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mReplaceCallId:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mDestUri:Lcom/sec/ims/util/ImsUri;

    .line 40
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mDialingNumber:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCallType:I

    .line 42
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCli:Ljava/lang/String;

    .line 44
    invoke-static {p3}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->isE911Call(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsEmergency:Z

    .line 45
    return-void
.end method

.method private static isE911Call(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 128
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    .line 136
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getAlertInfo()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mAlertInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCallType()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCallType:I

    return v0
.end method

.method public getCli()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCli:Ljava/lang/String;

    return-object v0
.end method

.method public getCmcBoundSessionId()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcBoundSessionId:I

    return v0
.end method

.method public getComposerData()Landroid/os/Bundle;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mComposerData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDestinationUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mDestUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public getDialingNumber()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mDialingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getLetteringText()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mLetteringText:Ljava/lang/String;

    return-object v0
.end method

.method public getLteEpsOnlyAttached()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsLteEpsOnlyAttached:Z

    return v0
.end method

.method public getOriginatingUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mOrigUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public getP2p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mP2p:Ljava/util/List;

    return-object v0
.end method

.method public getPEmergencyInfoOfAtt()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mPEmergencyInfoOfAtt:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceCallId()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mReplaceCallId:Ljava/lang/String;

    return-object v0
.end method

.method public isEmergency()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsEmergency:Z

    return v0
.end method

.method public setAlertInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "alertInfo"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mAlertInfo:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setCli(Ljava/lang/String;)V
    .locals 0
    .param p1, "cli"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCli:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setCmcBoundSessionId(I)V
    .locals 0
    .param p1, "cmcBoundSessionId"    # I

    .line 72
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcBoundSessionId:I

    .line 73
    return-void
.end method

.method public setComposerData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "composerData"    # Landroid/os/Bundle;

    .line 145
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mComposerData:Landroid/os/Bundle;

    .line 146
    return-void
.end method

.method public setLetteringText(Ljava/lang/String;)V
    .locals 0
    .param p1, "lettering"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mLetteringText:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setLteEpsOnlyAttached(Z)V
    .locals 0
    .param p1, "isLteEpsOnlyAttached"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsLteEpsOnlyAttached:Z

    .line 69
    return-void
.end method

.method public setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 48
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mOrigUri:Lcom/sec/ims/util/ImsUri;

    .line 49
    return-void
.end method

.method public setP2p(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "p2p":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mP2p:Ljava/util/List;

    .line 65
    return-void
.end method

.method public setPEmergencyInfoOfAtt(Ljava/lang/String;)V
    .locals 0
    .param p1, "PEmergencyInfo"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mPEmergencyInfoOfAtt:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setReplaceCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "replaceCallId"    # Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mReplaceCallId:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallSetupData [mOrigUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mOrigUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDestUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mDestUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDialingNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mDialingNumber:Ljava/lang/String;

    .line 160
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLetteringText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mLetteringText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPEmergencyInfoOfAtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mPEmergencyInfoOfAtt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCli:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAlertInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mAlertInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLteEpsOnlyAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsLteEpsOnlyAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCmcBoundSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcBoundSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mReplaceCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mReplaceCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    return-object v0
.end method
