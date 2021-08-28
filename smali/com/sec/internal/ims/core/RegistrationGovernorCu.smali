.class public Lcom/sec/internal/ims/core/RegistrationGovernorCu;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorCu.java"


# static fields
.field private static final DELAYED_DEREGISTER_TIMER:I = 0x3a98

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnCu"


# instance fields
.field protected mAllPcscfOver:Z


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 1
    .param p1, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p7, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mAllPcscfOver:Z

    .line 48
    return-void
.end method


# virtual methods
.method protected checkCallStatus()Z
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RegiGvnCu"

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->isSrvccCase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    const-string v3, "isReadyToRegister: call state is not idle"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    return v1

    .line 93
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DSDS_DI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    .line 94
    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    const-string v3, "isReadyToRegister: another slot\'s call state is not idle"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    return v1

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->isDelayedDeregisterTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    const-string v3, "isReadyToRegister: DelayedDeregisterTimer Running."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->isDeregisterWithRATNeeded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->isDeregisterWithVoPSNeeded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    .line 103
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 108
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    const-string v1, "isReadyToRegister: LTE attached. Delete DelayedDeregisterTimer."

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->onDelayedDeregister()V

    goto :goto_1

    .line 104
    :cond_3
    :goto_0
    return v1

    .line 114
    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method protected checkVolteSetting(I)Z
    .locals 3
    .param p1, "rat"    # I

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->getVoiceTechType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    const-string v1, "RegiGvnCu"

    const-string v2, "isReadyToRegister: volte disabled"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 122
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getFailureType()I
    .locals 2

    .line 75
    const/16 v0, 0x10

    .line 76
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mDiscardCurrentNetwork:Z

    if-eqz v1, :cond_0

    .line 77
    const/16 v0, 0x20

    goto :goto_0

    .line 78
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mIsPermanentStopped:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mAllPcscfOver:Z

    if-eqz v1, :cond_2

    .line 79
    :cond_1
    const/16 v0, 0x21

    .line 81
    :cond_2
    :goto_0
    return v0
.end method

.method public isDelayedDeregisterTimerRunning()Z
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->isDelayedDeregisterTimerRunningWithCallStatus()Z

    move-result v0

    return v0
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 130
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->checkVolteSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSrvccCase()Z
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 136
    .local v0, "network":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 137
    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 136
    :goto_0
    return v1
.end method

.method public isThrottled()Z
    .locals 4

    .line 235
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mIsPermanentStopped:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mAllPcscfOver:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onDelayedDeregister()V
    .locals 0

    .line 227
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->runDelayedDeregister()V

    .line 228
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 3
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 142
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationError: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " retryAfter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurPcscfIpIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mCurPcscfIpIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mNumOfPcscfIp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mNumOfPcscfIp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mFailureCounter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mFailureCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsPermanentStopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mIsPermanentStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnCu"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fail count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mFailureCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 149
    if-gez p2, :cond_0

    .line 150
    const/4 p2, 0x0

    .line 153
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    .line 154
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    .line 155
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 158
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mFailureCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mFailureCounter:I

    .line 159
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mCurPcscfIpIdx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mCurPcscfIpIdx:I

    .line 161
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->handleForbiddenError(I)V

    .line 163
    return-void

    .line 164
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_FOUND:Lcom/sec/ims/util/SipError;

    .line 165
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BAD_REQUEST:Lcom/sec/ims/util/SipError;

    .line 166
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 179
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->EMPTY_PCSCF:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->handlePcscfError()V

    .line 181
    return-void

    .line 167
    :cond_4
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mCurPcscfIpIdx:I

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mNumOfPcscfIp:I

    if-ne v0, v2, :cond_6

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    .line 169
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 170
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 171
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    .line 172
    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 173
    :cond_5
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mAllPcscfOver:Z

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 175
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->resetPcscfList()V

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 183
    :cond_6
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->handleRetryTimer(I)V

    goto :goto_2

    .line 156
    :cond_7
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->handleNormalResponse(Lcom/sec/ims/util/SipError;I)V

    .line 185
    :goto_2
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 8
    .param p1, "callState"    # I

    .line 189
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->setCallStatus(I)V

    .line 190
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->getCallStatus()I

    move-result v0

    const-string v1, "RegiGvnCu"

    const-string v2, "ims"

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 192
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 194
    .local v0, "isProperState":Z
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->isDeregisterWithVoPSNeeded()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->isDeregisterWithRATNeeded()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    .line 196
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v4, :cond_3

    .line 197
    :cond_2
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    const-string/jumbo v5, "onTelephonyCallStatusChanged: delayedDeregisterTimer 15000 milliseconds start"

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->setDelayedDeregisterTimerRunning(Z)V

    .line 201
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/16 v6, 0x3a98

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    .line 212
    .end local v0    # "isProperState":Z
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->getCallStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 214
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    const-string/jumbo v2, "onTelephonyCallStatusChanged: deregister due to cs call"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v2, "call state changed"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 218
    :cond_4
    return-void
.end method

.method public releaseThrottle(I)V
    .locals 4
    .param p1, "releaseCase"    # I

    .line 52
    const-string v0, "RegiGvnCu"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->isDelayedDeregisterTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    const-string/jumbo v3, "releaseThrottle: delete DelayedDeregisterTimer on fligt mode"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->setDelayedDeregisterTimerRunning(Z)V

    .line 57
    :cond_0
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    const-string/jumbo v3, "releaseThrottle: RELEASE_AIRPLANEMODE_ON"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mIsPermanentStopped:Z

    .line 59
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mAllPcscfOver:Z

    goto :goto_0

    .line 60
    :cond_1
    if-nez p1, :cond_2

    .line 61
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mIsPermanentStopped:Z

    goto :goto_0

    .line 62
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 63
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mIsPermanentStopped:Z

    .line 64
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mAllPcscfOver:Z

    .line 65
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mCurImpu:I

    .line 68
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mIsPermanentStopped:Z

    if-nez v1, :cond_4

    .line 69
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseThrottle: case by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    :cond_4
    return-void
.end method

.method public resetAllPcscfChecked()V
    .locals 1

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCu;->mAllPcscfOver:Z

    .line 241
    return-void
.end method
