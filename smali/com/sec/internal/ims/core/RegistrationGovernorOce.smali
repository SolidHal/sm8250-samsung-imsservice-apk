.class public Lcom/sec/internal/ims/core/RegistrationGovernorOce;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorOce.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnOce"


# instance fields
.field private mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;


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

    .line 44
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mNeedToCheckSrvcc:Z

    .line 47
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mHandlePcscfOnAlternativeCall:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mNeedToCheckLocationSetting:Z

    .line 49
    return-void
.end method

.method private checkAvailableRat(I)Z
    .locals 3
    .param p1, "rat"    # I

    .line 122
    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 123
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 124
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    const-string v1, "RegiGvnOce"

    const-string v2, "isReadyToRegister: Not LTE area"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->DATA_RAT_IS_NOT_LTE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsRegistration;->setCurrentRat(I)V

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkSimState()Z
    .locals 4

    .line 113
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 114
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    const-string v2, "RegiGvnOce"

    const-string v3, "isReadyToRegister: Sim hasn\'t loaded yet"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    return v1

    .line 118
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private countryInfoLoaded()Ljava/lang/String;
    .locals 3

    .line 265
    const-string v0, ""

    .line 267
    .local v0, "countryCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    if-eqz v1, :cond_0

    .line 268
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->isCountryCodeLoaded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    .line 272
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected checkCallStatus()Z
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 138
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isEpdgHandoverInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->isSrvccCase()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RegiGvnOce"

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getBlockDeregiOnSrvcc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    const-string v3, "isReadyToRegister: Skip deregister SRVCC"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    return v1

    .line 144
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    const-string v1, "isReadyToRegister: SRVCC case"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    const-string v3, "isReadyToRegister: call state is not idle"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    return v1

    .line 150
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public determineDeRegistration(II)Z
    .locals 8
    .param p1, "foundBestRat"    # I
    .param p2, "currentRat"    # I

    .line 277
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 278
    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 280
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1770

    const-string v7, "Vodafone AU: delay 6s to deregister"

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    .line 281
    const/4 v0, 0x1

    return v0

    .line 284
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->determineDeRegistration(II)Z

    move-result v0

    return v0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 13
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

    .line 178
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 179
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 181
    .local v1, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

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

    .line 182
    .local v2, "isImsEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    const-string/jumbo v7, "volte"

    invoke-static {v5, v7, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 184
    .local v5, "isVoLteEnabled":Z
    :goto_1
    const-string v6, "RegiGvnOce"

    if-nez v2, :cond_2

    .line 185
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    const-string v4, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v6, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 187
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 190
    :cond_2
    if-eqz v5, :cond_3

    .line 191
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 192
    const-string v7, "mmtel"

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 193
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 198
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->applyImsSwitch(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 200
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    const/16 v7, 0x12

    if-eq p2, v7, :cond_5

    .line 201
    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    const-string v8, "Mobile off!"

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 203
    .local v9, "service":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    invoke-static {v10, v9, v11}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v4, :cond_4

    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mContext:Landroid/content/Context;

    .line 204
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget v12, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    invoke-static {v10, v9, v11, v12}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 205
    const-string v10, "MobileOff"

    invoke-virtual {p0, v1, v9, v10}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v9    # "service":Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 210
    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    invoke-interface {v4, v6}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 211
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 212
    .local v4, "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 213
    .end local v4    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 216
    .end local v3    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const/16 v3, 0xd

    const/16 v4, 0xb

    if-ne p2, v3, :cond_7

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 217
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v3

    if-ne v3, v4, :cond_7

    .line 218
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 220
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 221
    return-object v0

    .line 225
    :cond_7
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v3, v6, :cond_8

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v3, v6, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->isVideoCallEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 226
    const-string v3, "mmtel-video"

    const-string v6, "TELSTRA/VODAFONE VideoCall disabled"

    invoke-virtual {p0, v1, v3, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_9
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v3

    if-ne v3, v4, :cond_a

    .line 230
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v1

    .line 233
    :cond_a
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 234
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 237
    :cond_b
    return-object v1
.end method

.method protected handleForbiddenError(I)V
    .locals 4
    .param p1, "retryAfter"    # I

    .line 243
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    const-string v1, "RegiGvnOce"

    const-string v2, "onRegistrationError: Permanently prohibited."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mIsPermanentStopped:Z

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 246
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object v0

    .line 247
    .local v0, "usm":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-eqz v0, :cond_0

    .line 248
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->enableUt(IZ)V

    .line 252
    .end local v0    # "usm":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getCurrentNetworkByPhoneId(I)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->countryInfoLoaded()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    const v3, 0xdbba0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZI)Z

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_2

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 260
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->resetPcscfList()V

    .line 262
    :cond_2
    return-void
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 2
    .param p1, "rat"    # I

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

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

    .line 155
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->checkSimState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->checkRoamingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->checkAvailableRat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->checkWFCsettings(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->checkNetworkEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 155
    :goto_1
    return v0
.end method

.method public isThrottled()Z
    .locals 4

    .line 53
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mIsPermanentStopped:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mIsPermanentPdnFailed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    :cond_0
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mRegiAt:J

    .line 54
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

    .line 53
    :goto_1
    return v0
.end method

.method public onPdnRequestFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 95
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->getPdnFailureReasons()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->isMatchedPdnFailReason([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mIsPermanentPdnFailed:Z

    .line 100
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mNonVoLTESimByPdnFail:Z

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 103
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object v0

    .line 104
    .local v0, "usm":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-eqz v0, :cond_0

    .line 105
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->enableUt(IZ)V

    .line 110
    .end local v0    # "usm":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    :cond_0
    return-void
.end method

.method public onUpdateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)Z
    .locals 2
    .param p1, "geolocation"    # Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->updateGeolocation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public releaseThrottle(I)V
    .locals 5
    .param p1, "releaseCase"    # I

    .line 63
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 64
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 66
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v4, "flight mode enabled"

    invoke-virtual {v2, v3, v1, v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 68
    :cond_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mIsPermanentStopped:Z

    goto :goto_0

    .line 69
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 70
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mIsPermanentStopped:Z

    .line 71
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mIsPermanentPdnFailed:Z

    .line 72
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mCurImpu:I

    .line 73
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mNonVoLTESimByPdnFail:Z

    goto :goto_0

    .line 74
    :cond_2
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    .line 75
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mIsPermanentStopped:Z

    .line 76
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mIsPermanentPdnFailed:Z

    .line 77
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mCurImpu:I

    .line 78
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mNonVoLTESimByPdnFail:Z

    .line 81
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mIsPermanentStopped:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mIsPermanentPdnFailed:Z

    if-nez v1, :cond_5

    .line 82
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegiGvnOce["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseThrottle: case by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_5

    .line 84
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object v1

    .line 85
    .local v1, "usm":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-eqz v1, :cond_5

    .line 86
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorOce;->mPhoneId:I

    invoke-interface {v1, v2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->enableUt(IZ)V

    .line 90
    .end local v1    # "usm":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    :cond_5
    return-void
.end method
