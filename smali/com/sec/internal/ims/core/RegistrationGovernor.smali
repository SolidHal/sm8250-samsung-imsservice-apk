.class public abstract Lcom/sec/internal/ims/core/RegistrationGovernor;
.super Ljava/lang/Object;
.source "RegistrationGovernor.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    }
.end annotation


# static fields
.field protected static final DEFAULT_RETRY_AFTER:I = 0x1

.field public static final PREFERED_IMPU_TYPE_ANY_FIRST:I = 0x0

.field public static final PREFERED_IMPU_TYPE_IMSI_BASED:I = 0x1

.field public static final RELEASE_AIRPLANEMODE_ON:I = 0x1

.field public static final RELEASE_ALWAYS:I = 0x0

.field public static final RELEASE_AUTOCONFIG_UPDATED:I = 0x7

.field public static final RELEASE_CMC_UPDATED:I = 0x8

.field public static final RELEASE_NETWORK_CHANGED:I = 0x6

.field public static final RELEASE_PDN_DISCONNECTED:I = 0x5

.field public static final RELEASE_PLMN_CHANGED:I = 0x9

.field public static final RELEASE_SIM_REMOVED:I = 0x4

.field public static final RELEASE_WFC_TURNED_OFF:I = 0x3

.field public static final RELEASE_WIFI_TURNED_OFF:I = 0x2

.field public static final RETRY_AFTER_EPDGDEREGI:I = 0x1

.field public static final RETRY_AFTER_PDNLOST:I = 0x3


# instance fields
.field protected mCallStatus:I

.field protected mCountry:Ljava/lang/String;

.field protected mCurImpu:I

.field protected mCurPcscfIpIdx:I

.field protected mDelayedDeregisterTimerRunning:Z

.field protected mDiscardCurrentNetwork:Z

.field protected mFailureCounter:I

.field protected mHandlePcscfOnAlternativeCall:Z

.field protected mHasPdnFailure:Z

.field protected mHasVoLteCall:Z

.field protected mIPsecAllow:Z

.field protected mIsPermanentPdnFailed:Z

.field protected mIsPermanentStopped:Z

.field protected mIsValid:Z

.field protected mMoveToNextPcscfAfterTimerB:Z

.field protected mNeedToCheckLocationSetting:Z

.field protected mNeedToCheckSrvcc:Z

.field protected mNonVoLTESimByPdnFail:Z

.field protected mNumOfPcscfIp:I

.field protected mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field protected mPcscfIpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPdnFailRetryTime:J

.field protected mPdnRejectCounter:I

.field protected mPhoneId:I

.field protected mPse911Prohibited:Z

.field protected mRegBaseTime:I

.field protected mRegMaxTime:I

.field protected mRegiAt:J

.field protected mRetryAfter:I

.field protected mRetryTimeout:Landroid/os/Message;

.field protected mSubscribeForbiddenCounter:I

.field protected mTimEshtablishTimeout:Landroid/os/Message;

.field protected mTimEshtablishTimeoutRCS:Landroid/os/Message;

.field protected mUpsmEnabled:Z

.field protected mWFCSubscribeForbiddenCounter:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegBaseTime:I

    .line 41
    const/16 v0, 0x708

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTime:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 52
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 59
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    .line 60
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentPdnFailed:Z

    .line 61
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 62
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    .line 63
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    .line 64
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIPsecAllow:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mMoveToNextPcscfAfterTimerB:Z

    .line 67
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 68
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRetryAfter:I

    .line 69
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    .line 70
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPse911Prohibited:Z

    .line 71
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnFailRetryTime:J

    .line 72
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasPdnFailure:Z

    .line 73
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mSubscribeForbiddenCounter:I

    .line 74
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    .line 75
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNonVoLTESimByPdnFail:Z

    .line 76
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    .line 77
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDelayedDeregisterTimerRunning:Z

    .line 78
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNeedToCheckSrvcc:Z

    .line 79
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHandlePcscfOnAlternativeCall:Z

    .line 80
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mUpsmEnabled:Z

    .line 81
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCallStatus:I

    .line 82
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNeedToCheckLocationSetting:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    .line 87
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRetryTimeout:Landroid/os/Message;

    .line 88
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeout:Landroid/os/Message;

    .line 89
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeoutRCS:Landroid/os/Message;

    .line 90
    sget-object v1, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 91
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCountry:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 167
    return-void
.end method

.method public checkAcsPcscfListChange()V
    .locals 0

    .line 399
    return-void
.end method

.method public checkEmergencyInProgress()Z
    .locals 1

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method protected checkEpdgEvent(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public checkProfileUpdateFromDM(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 443
    return-void
.end method

.method protected checkRcsEvent(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method protected checkVolteSetting(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public enableRcsOverIms(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0
    .param p1, "rcsProfile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 463
    return-void
.end method

.method public finishOmadmProvisioningUpdate()V
    .locals 0

    .line 375
    return-void
.end method

.method protected getCallStatus()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCallStatus:I

    return v0
.end method

.method public getFailureCount()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    return v0
.end method

.method public getNextImpuType()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    return v0
.end method

.method public getP2pListSize(I)I
    .locals 1
    .param p1, "cmcType"    # I

    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public getPcoType()Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-object v0
.end method

.method public getPcscfOrdinal()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    return v0
.end method

.method public getRetryTimeOnPdnFail()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnFailRetryTime:J

    return-wide v0
.end method

.method public getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;
    .locals 5

    .line 188
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->IDLE:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    .line 189
    .local v0, "state":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-eqz v1, :cond_0

    .line 190
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    goto :goto_0

    .line 191
    :cond_0
    iget-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 192
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->TEMPORARY_THROTTLED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    .line 194
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getWFCSubscribeForbiddenCounter()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    return v0
.end method

.method public hasNetworkFailure()Z
    .locals 1

    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public hasPdnFailure()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasPdnFailure:Z

    return v0
.end method

.method public hasValidPcscfIpList()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    return v0
.end method

.method public isDelayedDeregisterTimerRunning()Z
    .locals 1

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public isDeregisterOnLocationUpdate()Z
    .locals 1

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public isExistRetryTimer()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRetryTimeout:Landroid/os/Message;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIPSecAllow()Z
    .locals 1

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public isMobilePreferredForRcs()Z
    .locals 1

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedDelayedDeregister()Z
    .locals 1

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public isNonVoLteSimByPdnFail()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNonVoLTESimByPdnFail:Z

    return v0
.end method

.method public isOmadmConfigAvailable()Z
    .locals 1

    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public isPse911Prohibited()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPse911Prohibited:Z

    return v0
.end method

.method public isReadyToDualRegister(Z)Z
    .locals 1
    .param p1, "isCmcDualRegi"    # Z

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public isThrottled()Z
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->IDLE:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeThrottle()V
    .locals 1

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 142
    return-void
.end method

.method public needImsNotAvailable()Z
    .locals 1

    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public needPendingPdnConnected()Z
    .locals 1

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public notifyLocationTimeout()V
    .locals 0

    .line 327
    return-void
.end method

.method public notifyReattachToRil()V
    .locals 0

    .line 411
    return-void
.end method

.method public notifyVoLteOnOffToRil(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 407
    return-void
.end method

.method public onConfigUpdated()V
    .locals 0

    .line 447
    return-void
.end method

.method public onContactActivated()V
    .locals 0

    .line 395
    return-void
.end method

.method public onDelayedDeregister()V
    .locals 0

    .line 383
    return-void
.end method

.method public onDeregistrationDone(Z)V
    .locals 0
    .param p1, "requested"    # Z

    .line 343
    return-void
.end method

.method public onLocationCacheExpiry()V
    .locals 0

    .line 335
    return-void
.end method

.method public onLteDataNetworkModeSettingChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 427
    return-void
.end method

.method public onPackageDataCleared(Landroid/net/Uri;)V
    .locals 0
    .param p1, "data"    # Landroid/net/Uri;

    .line 459
    return-void
.end method

.method public onPdnConnected()V
    .locals 0

    .line 455
    return-void
.end method

.method public onPublishError(Lcom/sec/ims/util/SipError;)V
    .locals 0
    .param p1, "error"    # Lcom/sec/ims/util/SipError;

    .line 351
    return-void
.end method

.method public onRegEventContactUriNotification(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .param p2, "isRegi"    # I
    .param p3, "contactUriType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 391
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public onRoamingDataChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 431
    return-void
.end method

.method public onRoamingLteChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 435
    return-void
.end method

.method public onServiceStateDataChanged(ZZ)V
    .locals 0
    .param p1, "isPsOnly"    # Z
    .param p2, "isRoaming"    # Z

    .line 339
    return-void
.end method

.method public onSubscribeError(ILcom/sec/ims/util/SipError;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 347
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 0
    .param p1, "callState"    # I

    .line 251
    return-void
.end method

.method public onUpdateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)Z
    .locals 1
    .param p1, "geolocation"    # Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdatedPcoInfo(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pdn"    # Ljava/lang/String;
    .param p2, "pco"    # I

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public onVolteRoamingSettingChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 423
    return-void
.end method

.method public onVolteSettingChanged()V
    .locals 0

    .line 439
    return-void
.end method

.method public onWfcProfileChanged([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 415
    return-void
.end method

.method public requestLocation(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 331
    return-void
.end method

.method public resetAllPcscfChecked()V
    .locals 0

    .line 387
    return-void
.end method

.method public resetAllRetryFlow()V
    .locals 0

    .line 419
    return-void
.end method

.method public resetIPSecAllow()V
    .locals 0

    .line 355
    return-void
.end method

.method public resetPcoType()V
    .locals 1

    .line 161
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 162
    return-void
.end method

.method public resetPcscfList()V
    .locals 1

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    .line 152
    return-void
.end method

.method public resetPcscfPreference()V
    .locals 0

    .line 359
    return-void
.end method

.method public resetPdnFailureInfo()V
    .locals 1

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    .line 127
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasPdnFailure:Z

    .line 128
    return-void
.end method

.method public resetPermanentFailure()V
    .locals 1

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    .line 147
    return-void
.end method

.method public retryDNSQuery()V
    .locals 0

    .line 379
    return-void
.end method

.method protected setCallStatus(I)V
    .locals 0
    .param p1, "callStatus"    # I

    .line 175
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCallStatus:I

    .line 176
    return-void
.end method

.method public setNeedDelayedDeregister(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 403
    return-void
.end method

.method public setPcoType(Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;)V
    .locals 0
    .param p1, "type"    # Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 156
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 157
    return-void
.end method

.method public setRetryTimeOnPdnFail(J)V
    .locals 0
    .param p1, "retryTime"    # J

    .line 171
    iput-wide p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnFailRetryTime:J

    .line 172
    return-void
.end method

.method public startOmadmProvisioningUpdate()V
    .locals 0

    .line 371
    return-void
.end method

.method public startTimsTimer(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 363
    return-void
.end method

.method public stopTimsTimer(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 367
    return-void
.end method

.method public unRegisterIntentReceiver()V
    .locals 0

    .line 451
    return-void
.end method
