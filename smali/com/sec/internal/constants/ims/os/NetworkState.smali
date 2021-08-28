.class public Lcom/sec/internal/constants/ims/os/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"


# instance fields
.field private mCellLocation:Landroid/telephony/CellLocation;

.field private mDataConnectionState:Z

.field private mDataNetworkType:I

.field private mDataRegState:I

.field private mDataRoaming:Z

.field private mEmcbsIndication:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

.field private mEmergencyOnly:Z

.field private mEpdgAvailable:Z

.field private mInternationalRoaming:Z

.field private mIsEmergencyEpdgConnected:Z

.field private mIsEpdgConnected:Z

.field private mIsPsOnlyReg:Z

.field private mLastRequestedNetworkType:I

.field private mMobileDataNetworkType:I

.field private mMobileDataRegState:I

.field private mOperatorNumeric:Ljava/lang/String;

.field private mPendedEPDGWeakSignal:Z

.field private mSimSlot:I

.field private mSnapshotState:I

.field private mVoiceNetworkType:I

.field private mVoiceRegState:I

.field private mVoiceRoaming:Z

.field private mVopsIndication:Lcom/sec/internal/constants/ims/os/VoPsIndication;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "simSlot"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mSimSlot:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataNetworkType:I

    .line 43
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataRegState:I

    .line 44
    iput v1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceRegState:I

    .line 45
    iput v1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mMobileDataRegState:I

    .line 46
    sget v1, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_DEACTIVATED:I

    iput v1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mSnapshotState:I

    .line 47
    iput v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mLastRequestedNetworkType:I

    .line 48
    return-void
.end method


# virtual methods
.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mCellLocation:Landroid/telephony/CellLocation;

    return-object v0
.end method

.method public getDataNetworkType()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataNetworkType:I

    return v0
.end method

.method public getDataRegState()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataRegState:I

    return v0
.end method

.method public getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEmcbsIndication:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    return-object v0
.end method

.method public getLastRequestedNetworkType()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mLastRequestedNetworkType:I

    return v0
.end method

.method public getMobileDataNetworkType()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mMobileDataNetworkType:I

    return v0
.end method

.method public getMobileDataRegState()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mMobileDataRegState:I

    return v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getSimSlot()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mSimSlot:I

    return v0
.end method

.method public getSnapshotState()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mSnapshotState:I

    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceNetworkType:I

    return v0
.end method

.method public getVoiceRegState()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceRegState:I

    return v0
.end method

.method public getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVopsIndication:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object v0
.end method

.method public isDataConnectedState()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataConnectionState:Z

    return v0
.end method

.method public isDataRoaming()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataRoaming:Z

    return v0
.end method

.method public isEmergencyEpdgConnected()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mIsEmergencyEpdgConnected:Z

    return v0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEmergencyOnly:Z

    return v0
.end method

.method public isEpdgAVailable()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEpdgAvailable:Z

    return v0
.end method

.method public isEpdgConnected()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mIsEpdgConnected:Z

    return v0
.end method

.method public isInternationalRoaming()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mInternationalRoaming:Z

    return v0
.end method

.method public isPendedEPDGWeakSignal()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mPendedEPDGWeakSignal:Z

    return v0
.end method

.method public isPsOnlyReg()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mIsPsOnlyReg:Z

    return v0
.end method

.method public isVoiceRoaming()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceRoaming:Z

    return v0
.end method

.method public setCellLocation(Landroid/telephony/CellLocation;)V
    .locals 0
    .param p1, "cl"    # Landroid/telephony/CellLocation;

    .line 131
    iput-object p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mCellLocation:Landroid/telephony/CellLocation;

    .line 132
    return-void
.end method

.method public setDataConnectionState(Z)V
    .locals 0
    .param p1, "isDataConnected"    # Z

    .line 143
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataConnectionState:Z

    .line 144
    return-void
.end method

.method public setDataNetworkType(I)V
    .locals 0
    .param p1, "dataNetworkType"    # I

    .line 55
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataNetworkType:I

    .line 56
    return-void
.end method

.method public setDataRaoming(Z)V
    .locals 0
    .param p1, "isDataRoaming"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataRoaming:Z

    .line 140
    return-void
.end method

.method public setDataRegState(I)V
    .locals 0
    .param p1, "dataRegState"    # I

    .line 79
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataRegState:I

    .line 80
    return-void
.end method

.method public setEmcBsIndication(Lcom/sec/internal/constants/ims/os/EmcBsIndication;)V
    .locals 0
    .param p1, "emc"    # Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    .line 123
    iput-object p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEmcbsIndication:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    .line 124
    return-void
.end method

.method public setEmergencyEpdgConnected(Z)V
    .locals 0
    .param p1, "isEmer"    # Z

    .line 203
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mIsEmergencyEpdgConnected:Z

    .line 204
    return-void
.end method

.method public setEmergencyOnly(Z)V
    .locals 0
    .param p1, "isEmer"    # Z

    .line 171
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEmergencyOnly:Z

    .line 172
    return-void
.end method

.method public setEpdgAvailable(Z)V
    .locals 0
    .param p1, "isAvail"    # Z

    .line 195
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEpdgAvailable:Z

    .line 196
    return-void
.end method

.method public setEpdgConnected(Z)V
    .locals 0
    .param p1, "isSet"    # Z

    .line 187
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mIsEpdgConnected:Z

    .line 188
    return-void
.end method

.method public setInternationalRoaming(Z)V
    .locals 0
    .param p1, "isInternationalRoaming"    # Z

    .line 227
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mInternationalRoaming:Z

    .line 228
    return-void
.end method

.method public setLastRequestedNetworkType()V
    .locals 1

    .line 103
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataNetworkType:I

    iput v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mLastRequestedNetworkType:I

    .line 104
    return-void
.end method

.method public setLastRequestedNetworkType(I)V
    .locals 0
    .param p1, "lastRequestedNetworkType"    # I

    .line 107
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mLastRequestedNetworkType:I

    .line 108
    return-void
.end method

.method public setMobileDataNetworkType(I)V
    .locals 0
    .param p1, "mobileDataNetworkType"    # I

    .line 59
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mMobileDataNetworkType:I

    .line 60
    return-void
.end method

.method public setMobileDataRegState(I)V
    .locals 0
    .param p1, "mobileDataRegState"    # I

    .line 75
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mMobileDataRegState:I

    .line 76
    return-void
.end method

.method public setOperatorNumeric(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mOperatorNumeric:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setPendedEpdgWeakSignal(Z)V
    .locals 0
    .param p1, "set"    # Z

    .line 219
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mPendedEPDGWeakSignal:Z

    .line 220
    return-void
.end method

.method public setPsOnlyReg(Z)V
    .locals 0
    .param p1, "isSet"    # Z

    .line 179
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mIsPsOnlyReg:Z

    .line 180
    return-void
.end method

.method public setSnapshotState(I)V
    .locals 0
    .param p1, "snapshotState"    # I

    .line 95
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mSnapshotState:I

    .line 96
    return-void
.end method

.method public setVoiceNetworkType(I)V
    .locals 0
    .param p1, "voiceNet"    # I

    .line 211
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceNetworkType:I

    .line 212
    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 0
    .param p1, "voiceRegState"    # I

    .line 87
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceRegState:I

    .line 88
    return-void
.end method

.method public setVoiceRoaming(Z)V
    .locals 0
    .param p1, "isVoiceRoaming"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceRoaming:Z

    .line 156
    return-void
.end method

.method public setVopsIndication(Lcom/sec/internal/constants/ims/os/VoPsIndication;)V
    .locals 0
    .param p1, "vops"    # Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 115
    iput-object p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVopsIndication:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 116
    return-void
.end method
