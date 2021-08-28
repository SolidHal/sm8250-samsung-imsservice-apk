.class public Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorMeAfrica.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnMeAfr"


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

    .line 37
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mHandlePcscfOnAlternativeCall:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mNeedToCheckLocationSetting:Z

    .line 40
    return-void
.end method

.method private isGlsEnabled()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mContext:Landroid/content/Context;

    const-string v1, "geolocPushAuth"

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected checkCallStatus()Z
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    .line 155
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 156
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isEpdgHandoverInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->isSrvccCase()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RegiGvnMeAfr"

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getBlockDeregiOnSrvcc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    const-string v3, "isReadyToRegister: Skip deregister SRVCC"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    return v1

    .line 162
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    const-string v1, "isReadyToRegister: SRVCC case"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    const-string v3, "isReadyToRegister: call state is not idle"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    return v1

    .line 168
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 9
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

    .line 90
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 91
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 93
    .local v1, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

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

    .line 94
    .local v2, "isImsEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    const-string/jumbo v7, "volte"

    invoke-static {v5, v7, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 96
    .local v5, "isVolteEnabled":Z
    :goto_1
    if-nez v2, :cond_2

    .line 97
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    const-string v4, "RegiGvnMeAfr"

    const-string v6, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v4, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 99
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 102
    :cond_2
    const-string v6, "mmtel"

    if-eqz v5, :cond_3

    .line 103
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 104
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 105
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 110
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->applyImsSwitch(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 112
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 113
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    .line 114
    .local v7, "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 115
    .end local v7    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 118
    .end local v3    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const/16 v3, 0xd

    const/16 v7, 0xb

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 119
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 121
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 122
    return-object v0

    .line 126
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v3

    if-ne v4, v3, :cond_6

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    .line 127
    invoke-static {v3, v4}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x12

    if-ne p2, v3, :cond_6

    .line 128
    const-string v3, "VoWiFi diabled"

    invoke-virtual {p0, v1, v6, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v4, "smsip"

    invoke-virtual {p0, v1, v4, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 133
    :cond_6
    const-string v3, "gls"

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->isGlsEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    .line 134
    const-string v4, "GLS disabled"

    invoke-virtual {p0, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_7
    const-string v3, "ec"

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->isEcEnabled(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 138
    const-string v4, "EC disabled"

    invoke-virtual {p0, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_8
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 142
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v1

    .line 145
    :cond_9
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 146
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 149
    :cond_a
    return-object v1
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 2
    .param p1, "rat"    # I

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

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

    .line 173
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->checkRoamingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->checkNetworkEvent(I)Z

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

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 4
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationError: state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " retryAfter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCurPcscfIpIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mCurPcscfIpIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNumOfPcscfIp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mNumOfPcscfIp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mFailureCounter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mFailureCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsPermanentStopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mIsPermanentStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 47
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAcs(I)V

    .line 51
    return-void

    .line 56
    :cond_0
    if-gez p2, :cond_1

    .line 57
    const/4 p2, 0x0

    .line 60
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    .line 61
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 64
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mFailureCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mFailureCounter:I

    .line 65
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mCurPcscfIpIdx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mCurPcscfIpIdx:I

    .line 67
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    .line 68
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 81
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->handleTimeoutError(I)V

    goto :goto_1

    .line 69
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    const-string v3, "RegiGvnMeAfr"

    if-ne v0, v2, :cond_6

    .line 70
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mCurPcscfIpIdx:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mCurPcscfIpIdx:I

    .line 71
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    const-string v1, "onRegistrationError: Ignore 403 error for Etisalat, retry on same PCSCF."

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    :cond_5
    :goto_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->handleRetryTimer(I)V

    goto :goto_3

    .line 74
    :cond_6
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mPhoneId:I

    const-string v2, "onRegistrationError: Permanently prohibited."

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mIsPermanentStopped:Z

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_7

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 79
    :cond_7
    return-void

    .line 62
    :cond_8
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->handleNormalResponse(Lcom/sec/ims/util/SipError;I)V

    .line 86
    :goto_3
    return-void
.end method
