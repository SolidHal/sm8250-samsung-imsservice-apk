.class public Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorHkTw.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnHkTw"


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

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mNeedToCheckLocationSetting:Z

    .line 49
    return-void
.end method


# virtual methods
.method protected checkNetworkEvent(I)Z
    .locals 4
    .param p1, "rat"    # I

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v0

    .line 99
    .local v0, "networkClass":I
    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 101
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    const-string v2, "RegiGvnHkTw"

    const-string v3, "isReadyToRegister: W2L NW unknown moment"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    return v1

    .line 104
    :cond_0
    return v1
.end method

.method protected checkVolteSetting(I)Z
    .locals 3
    .param p1, "rat"    # I

    .line 109
    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->getVoiceTechType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    const-string v1, "RegiGvnHkTw"

    const-string v2, "isReadyToRegister: volte disabled"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->resetNotifiedImsNotAvailable(I)V

    .line 113
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public determineDeRegistration(II)Z
    .locals 8
    .param p1, "foundBestRat"    # I
    .param p2, "currentRat"    # I

    .line 189
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 190
    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 192
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1770

    const-string v7, "TWM: delay 6s to deregister"

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->determineDeRegistration(II)Z

    move-result v0

    return v0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 8
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 54
    .local v0, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 55
    .local v1, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    const-string v4, "ims"

    invoke-static {v2, v4, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 56
    .local v2, "isImsEnabled":Z
    :goto_0
    if-nez v2, :cond_1

    .line 57
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    const-string v4, "RegiGvnHkTw"

    const-string v5, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v4, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 59
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 62
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    const-string/jumbo v7, "volte"

    invoke-static {v5, v7, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_2

    move v3, v4

    .line 63
    .local v3, "isVolteEnabled":Z
    :cond_2
    if-eqz v3, :cond_3

    .line 64
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 65
    .local v4, "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 66
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    const-string v5, "mmtel"

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 68
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 72
    .end local v4    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 74
    .restart local v4    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 75
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 78
    .end local v4    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const/16 v4, 0xd

    if-eq p2, v4, :cond_5

    const/16 v4, 0x14

    if-ne p2, v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 79
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_6

    .line 80
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 82
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 83
    return-object v1

    .line 87
    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 88
    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 91
    :cond_7
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 2
    .param p1, "rat"    # I

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isLocationInfoLoaded(I)Z

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

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 118
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->checkNetworkEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->checkRoamingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->checkVolteSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->checkWFCsettings(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 118
    :goto_1
    return v0
.end method

.method public isThrottled()Z
    .locals 4

    .line 153
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mIsPermanentStopped:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mIsPermanentPdnFailed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    :cond_0
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mRegiAt:J

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 153
    :goto_1
    return v0
.end method

.method public onPdnRequestFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 161
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSDS_SI_DDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "RegiGvnHkTw"

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 162
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    const-string v2, "onPdnRequestFailed, SIM slot is not DDS slot"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    .line 167
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    const-string v2, "onPdnRequestFailed, not IMS PDN"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getCurrentNetworkByPhoneId(I)I

    move-result v0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 172
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 173
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    const-string v2, "onPdnRequestFailed ignore in non LTE"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    return-void

    .line 177
    :cond_2
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->getPdnFailureReasons()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->isMatchedPdnFailReason([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mIsPermanentPdnFailed:Z

    .line 181
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 182
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 183
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mNonVoLTESimByPdnFail:Z

    .line 185
    :cond_3
    return-void
.end method

.method public onUpdateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)Z
    .locals 5
    .param p1, "geolocation"    # Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->updateGeolocation(Ljava/lang/String;)Z

    .line 204
    :cond_0
    return v3
.end method

.method public releaseThrottle(I)V
    .locals 3
    .param p1, "releaseCase"    # I

    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 134
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mIsPermanentStopped:Z

    goto :goto_0

    .line 135
    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 136
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mIsPermanentStopped:Z

    .line 137
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mIsPermanentPdnFailed:Z

    .line 138
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mNonVoLTESimByPdnFail:Z

    goto :goto_0

    .line 139
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 140
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mIsPermanentStopped:Z

    .line 141
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mIsPermanentPdnFailed:Z

    .line 142
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mCurImpu:I

    .line 143
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mNonVoLTESimByPdnFail:Z

    .line 146
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mIsPermanentStopped:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mIsPermanentPdnFailed:Z

    if-nez v0, :cond_4

    .line 147
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorHkTw;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseThrottle: case by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnHkTw"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    :cond_4
    return-void
.end method
