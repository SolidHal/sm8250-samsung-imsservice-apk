.class public Lcom/sec/internal/ims/core/RegistrationGovernorSwa;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorSwa.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnSwa"


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 2
    .param p1, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p7, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegiGvnSwa["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Register : ShutdownEventReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mHandlePcscfOnAlternativeCall:Z

    .line 38
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mNeedToCheckSrvcc:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mNeedToCheckLocationSetting:Z

    .line 40
    return-void
.end method


# virtual methods
.method protected checkCallStatus()Z
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 50
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ims"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    .line 51
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 52
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isEpdgHandoverInProgress()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    const-string v3, "RegiGvnSwa"

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->BSNL:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->isSrvccCase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "isReadyToRegister: SRVCC case"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_0
    const-string v1, "isReadyToRegister: call state is not idle"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    const/4 v1, 0x0

    return v1

    .line 60
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method protected checkRoamingStatus(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 44
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

    .line 87
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 88
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    .local v1, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    .line 91
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mContext:Landroid/content/Context;

    const-string v4, "ims"

    invoke-static {v3, v4, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 93
    .local v3, "isImsEnabled":Z
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "volte"

    invoke-static {v6, v7, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    move v4, v5

    .line 96
    .local v4, "isVoLteEnabled":Z
    :cond_1
    if-nez v3, :cond_2

    .line 97
    const-string v5, "RegiGvnSwa"

    const-string v6, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v5, v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 99
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    return-object v5

    .line 102
    :cond_2
    if-eqz v4, :cond_4

    .line 103
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 104
    .local v5, "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "mmtel"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 105
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 107
    :cond_3
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    .line 108
    .local v7, "dmServiceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 110
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 111
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_DM_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 115
    .end local v5    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "dmServiceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v5, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 116
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 117
    .restart local v5    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 118
    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 121
    .end local v5    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const/16 v5, 0xd

    const/16 v6, 0xb

    if-ne p2, v5, :cond_6

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 122
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 123
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 125
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 126
    return-object v0

    .line 130
    :cond_6
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    if-ne v5, v6, :cond_7

    .line 131
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 134
    :cond_7
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 135
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 138
    :cond_8
    return-object v1
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 2
    .param p1, "rat"    # I

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLocationInfoLoaded  rat : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnSwa"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isLocationInfoLoaded(I)Z

    move-result v0

    return v0
.end method

.method public onPdnRequestFailed(Ljava/lang/String;)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 143
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->getPdnFailureReasons()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->getMatchedPdnFailReason([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "matchfrompdnfail":Ljava/lang/String;
    const/4 v1, 0x0

    .line 146
    .local v1, "isNeedToStop":Z
    const-wide/16 v2, -0x1

    .line 147
    .local v2, "retryTime":J
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 148
    const/4 v1, 0x1

    .line 149
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 150
    nop

    .line 151
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 150
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 153
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->setRetryTimeOnPdnFail(J)V

    .line 156
    :cond_1
    if-eqz v1, :cond_2

    .line 157
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 158
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 159
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mIsPermanentStopped:Z

    .line 161
    :cond_2
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 5
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retryAfter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurPcscfIpIdx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mCurPcscfIpIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumOfPcscfIp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mNumOfPcscfIp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFailureCounter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mFailureCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsPermanentStopped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mIsPermanentStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnSwa"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-gez p2, :cond_0

    .line 172
    const/4 p2, 0x0

    .line 174
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorSwa;->AKA_CHANLENGE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const-string v0, "onRegistrationError: Permanently prohibited."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mIsPermanentStopped:Z

    .line 178
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->resetPcscfList()V

    .line 179
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v3, 0x0

    const-string v4, "Aka challenge timeout"

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fail count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mFailureCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 184
    return-void

    .line 186
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V

    .line 187
    return-void
.end method

.method public releaseThrottle(I)V
    .locals 3
    .param p1, "releaseCase"    # I

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 69
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mIsPermanentStopped:Z

    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 71
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mIsPermanentStopped:Z

    .line 72
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mIsPermanentPdnFailed:Z

    .line 73
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mCurImpu:I

    .line 74
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mNonVoLTESimByPdnFail:Z

    .line 77
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mIsPermanentStopped:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mIsPermanentPdnFailed:Z

    if-nez v0, :cond_3

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegiGvnSwa["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSwa;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseThrottle: case by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_3
    return-void
.end method
