.class public Lcom/sec/internal/ims/core/RegistrationGovernorCtc;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorCtc.java"


# static fields
.field private static final DEFAULT_TIMS_TIMER:I = 0x2da

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnCtc"


# instance fields
.field private mPendingCtcVolteOff:Z

.field private mPendingCtcVolteOn:Z

.field protected final mRegRetryTime:[I


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

    .line 61
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPendingCtcVolteOff:Z

    .line 53
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPendingCtcVolteOn:Z

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mRegRetryTime:[I

    .line 62
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->updateEutranValues()V

    .line 63
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->updateCTCVolteState()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mHandlePcscfOnAlternativeCall:Z

    .line 65
    return-void

    :array_0
    .array-data 4
        0x0
        0x1e
        0x3c
        0x78
        0xf0
        0x1e0
    .end array-data
.end method

.method private buildVolteStateOemHookCmd(Z)[B
    .locals 7
    .param p1, "isVolteOn"    # Z

    .line 272
    const/4 v0, 0x5

    new-array v1, v0, [B

    .line 273
    .local v1, "cmd":[B
    const/4 v2, 0x2

    .line 274
    .local v2, "OEM_FUNCTION_ID_NETWORK":B
    const/16 v3, -0x7f

    .line 275
    .local v3, "OEM_NET_SET_VOLTE_STATE":B
    int-to-byte v4, p1

    .line 277
    .local v4, "IS_VOLTE_ON":B
    const/4 v5, 0x0

    aput-byte v2, v1, v5

    .line 278
    const/4 v6, 0x1

    aput-byte v3, v1, v6

    .line 279
    const/4 v6, 0x2

    aput-byte v5, v1, v6

    .line 280
    const/4 v5, 0x3

    aput-byte v0, v1, v5

    .line 281
    const/4 v0, 0x4

    aput-byte v4, v1, v0

    .line 283
    return-object v1
.end method

.method private updateCTCVolteState()V
    .locals 5

    .line 287
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    return-void

    .line 296
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->getVoiceTechType(I)I

    move-result v0

    .line 297
    .local v0, "voiceTech":I
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCTCVolteState : voiceTech : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiGvnCtc"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 298
    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 299
    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPendingCtcVolteOff:Z

    if-eqz v2, :cond_2

    .line 300
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPendingCtcVolteOn:Z

    goto :goto_0

    .line 302
    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->buildVolteStateOemHookCmd(Z)[B

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->sendRawRequestToTelephony2([BI)Z

    goto :goto_0

    .line 305
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    .line 306
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPendingCtcVolteOn:Z

    .line 307
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPendingCtcVolteOff:Z

    goto :goto_0

    .line 309
    :cond_4
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->buildVolteStateOemHookCmd(Z)[B

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->sendRawRequestToTelephony2([BI)Z

    .line 312
    :goto_0
    return-void
.end method

.method private updateEutranValues()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    return-void

    .line 257
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->getVoiceTechType(I)I

    move-result v0

    .line 258
    .local v0, "voiceTech":I
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEutranValues : voiceTech : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiGvnCtc"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 260
    if-nez v0, :cond_1

    .line 261
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeVolteSettingOffEvent()V

    .line 263
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->notifyVoLteOnOffToRil(Z)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 265
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v1, v2, :cond_2

    .line 267
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->notifyVoLteOnOffToRil(Z)V

    .line 269
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected checkCallStatus()Z
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    .line 150
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "RegiGvnCtc"

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 151
    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount(I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasEmergencyCall(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasActiveCall(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v1

    const-string v4, "DSDS_DI"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    .line 157
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    const-string v4, "isReadyToRegister: another slot\'s call state is not idle"

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    return v2

    .line 152
    :cond_1
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    const-string v4, "isReadyToRegister: call state is not idle"

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    return v2

    .line 162
    .end local v0    # "phoneId":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected checkDelayedStopPdnEvent()Z
    .locals 1

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method protected checkVolteSetting(I)Z
    .locals 3
    .param p1, "rat"    # I

    .line 172
    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    .line 173
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->getVoiceTechType(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    const-string v1, "RegiGvnCtc"

    const-string v2, "isReadyToRegister: volte disabled"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 176
    const/4 v0, 0x0

    return v0

    .line 178
    :cond_0
    const/4 v0, 0x1

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

    .line 83
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 84
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v1, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

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

    .line 87
    .local v2, "isImsEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    const-string/jumbo v7, "volte"

    invoke-static {v5, v7, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    move v3, v4

    .line 90
    .local v3, "isVoLteEnabled":Z
    :cond_1
    if-nez v2, :cond_2

    .line 91
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    const-string v5, "RegiGvnCtc"

    const-string v6, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v5, v4, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 93
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    return-object v4

    .line 96
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v1

    .line 98
    if-eqz v3, :cond_3

    .line 99
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 100
    .local v4, "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 101
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 102
    const-string v5, "mmtel"

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 103
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 107
    .end local v4    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 108
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 109
    .restart local v4    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 110
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 113
    .end local v4    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const/16 v4, 0xd

    if-eq p2, v4, :cond_5

    const/16 v4, 0x14

    if-ne p2, v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 114
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_6

    .line 115
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 117
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 118
    return-object v0

    .line 122
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 123
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 126
    :cond_7
    return-object v1
.end method

.method protected getWaitTime()I
    .locals 4

    .line 183
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mFailureCounter:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mRegRetryTime:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 184
    .local v0, "currentRetryTimer":I
    const/4 v1, 0x0

    .line 185
    .local v1, "random":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 186
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mRegRetryTime:[I

    aget v2, v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method public notifyVoLteOnOffToRil(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 217
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVoLteOnOffToRil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnCtc"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v0, "eutranValue":Landroid/content/ContentValues;
    const-string/jumbo v1, "voice_domain_pref_eutran"

    if-eqz p1, :cond_0

    .line 221
    const/4 v2, 0x3

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 225
    :cond_0
    const/4 v2, 0x1

    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    :goto_0
    const-string v1, "content://com.sec.ims.settings/global"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 230
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method public onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
    .locals 4
    .param p1, "event"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;
    .param p3, "callType"    # I

    .line 69
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStatus: event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnCtc"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mHasVoLteCall:Z

    .line 72
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->isDeregisterWithVoPSNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 74
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v3, "SERVICE NOT AVAILABLE"

    invoke-virtual {v1, v2, v0, v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 79
    :cond_1
    :goto_0
    return-void
.end method

.method public onDeregistrationDone(Z)V
    .locals 6
    .param p1, "requested"    # Z

    .line 199
    const/4 v0, 0x1

    const/16 v1, 0xb

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v2, v2, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    .line 200
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->getVoiceTechType(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyVolteSettingOff(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    .line 204
    :cond_0
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPendingCtcVolteOff:Z

    if-eqz v1, :cond_1

    .line 205
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    const-string v2, "RegiGvnCtc"

    const-string/jumbo v3, "update volte off state to CP after IMS deregistered."

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPendingCtcVolteOff:Z

    .line 207
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->buildVolteStateOemHookCmd(Z)[B

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->sendRawRequestToTelephony2([BI)Z

    .line 208
    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPendingCtcVolteOn:Z

    if-eqz v2, :cond_1

    .line 209
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPendingCtcVolteOn:Z

    .line 210
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->buildVolteStateOemHookCmd(Z)[B

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->sendRawRequestToTelephony2([BI)Z

    .line 213
    :cond_1
    return-void
.end method

.method public onRegistrationDone()V
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onRegistrationDone()V

    .line 194
    const-string v0, "Registered"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->stopTimsTimer(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 4
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 131
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSipError: service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnCtc"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    const-string/jumbo v0, "smsip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x198

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x2c4

    if-ne v0, v1, :cond_1

    .line 135
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS error : mCurPcscfIpIdx="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mCurPcscfIpIdx:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNumOfPcscfIp="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mNumOfPcscfIp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 142
    :cond_1
    return-object p2

    .line 140
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0
.end method

.method public onVolteSettingChanged()V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->updateEutranValues()V

    .line 236
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->updateCTCVolteState()V

    .line 237
    return-void
.end method

.method public startTimsTimer(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "mTimsTimer":I
    const v0, 0xb2390

    .line 243
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    .line 244
    return-void
.end method

.method public stopTimsTimer(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorCtc;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    .line 249
    return-void
.end method
