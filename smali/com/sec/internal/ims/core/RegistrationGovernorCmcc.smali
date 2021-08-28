.class public Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorCmcc.java"


# static fields
.field private static final DELAYED_DEREGISTER_TIMER:I = 0xf

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnCmcc"


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

    .line 60
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mAllPcscfOver:Z

    .line 61
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->setUpsmEventReceiver()V

    .line 62
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->updateEutranValues()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mHandlePcscfOnAlternativeCall:Z

    .line 64
    return-void
.end method

.method private updateEutranValues()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->getVoiceTechType()I

    move-result v0

    .line 316
    .local v0, "voiceTech":I
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEutranValues : voiceTech : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiGvnCmcc"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    if-nez v0, :cond_1

    .line 319
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeVolteSettingOffEvent()V

    .line 321
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->notifyVoLteOnOffToRil(Z)V

    goto :goto_0

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 323
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v1, v2, :cond_2

    .line 325
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->notifyVoLteOnOffToRil(Z)V

    .line 327
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected checkCallStatus()Z
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RegiGvnCmcc"

    if-eqz v0, :cond_0

    .line 215
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string v3, "isReadyToRegister: call state is not idle"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 216
    return v1

    .line 219
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DSDS_DI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    .line 220
    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string v3, "isReadyToRegister: another slot\'s call state is not idle"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    return v1

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->isDelayedDeregisterTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string v3, "isReadyToRegister: DelayedDeregisterTimer Running."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->isDeregisterWithVoPSNeeded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->isDeregisterWithRATNeeded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    .line 229
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 234
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string v1, "isReadyToRegister: LTE attached. Delete DelayedDeregisterTimer."

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->onDelayedDeregister()V

    goto :goto_1

    .line 230
    :cond_3
    :goto_0
    return v1

    .line 240
    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method protected checkRcsEvent(I)Z
    .locals 5
    .param p1, "rat"    # I

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string v3, "defaultmsgappinuse"

    invoke-static {v0, v3, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const-string v3, "RegiGvnCmcc"

    if-eq v0, v1, :cond_0

    .line 248
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string v1, "isReadyToRegister: Default MSG app isn\'t used for RCS"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    return v2

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    .line 254
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string v1, "isReadyToRegister: The RCS rat is not wifi, when wifi is connected."

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    return v2

    .line 259
    :cond_1
    return v1
.end method

.method protected checkVolteSetting(I)Z
    .locals 3
    .param p1, "rat"    # I

    .line 264
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->getVoiceTechType()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 265
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string v1, "RegiGvnCmcc"

    const-string v2, "isReadyToRegister: volte disabled"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 268
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_0
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

    .line 168
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 169
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 170
    .local v1, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string v4, "ims"

    invoke-static {v2, v4, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v3

    .line 172
    .local v2, "isImsEnabled":Z
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string/jumbo v8, "volte"

    invoke-static {v6, v8, v7}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    move v3, v5

    .line 175
    .local v3, "isVoLteEnabled":Z
    :cond_1
    const-string v5, "RegiGvnCmcc"

    if-nez v2, :cond_2

    .line 176
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string v6, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v5, v4, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 178
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    return-object v4

    .line 181
    :cond_2
    const/16 v6, 0xd

    if-eq p2, v6, :cond_3

    const/16 v6, 0x14

    if-ne p2, v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 182
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    .line 183
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v7, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v6, v7, :cond_4

    .line 185
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string v6, "filterService: IMSVoPS is not supported"

    invoke-static {v5, v4, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 187
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    return-object v4

    .line 191
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 192
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v1

    .line 195
    :cond_5
    if-eqz v3, :cond_6

    .line 196
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 197
    const-string v4, "mmtel"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 198
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 202
    :cond_6
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 203
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 206
    :cond_7
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 208
    return-object v1
.end method

.method public getFailureType()I
    .locals 2

    .line 157
    const/16 v0, 0x10

    .line 158
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mDiscardCurrentNetwork:Z

    if-eqz v1, :cond_0

    .line 159
    const/16 v0, 0x20

    goto :goto_0

    .line 160
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mIsPermanentStopped:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mAllPcscfOver:Z

    if-eqz v1, :cond_2

    .line 161
    :cond_1
    const/16 v0, 0x21

    .line 163
    :cond_2
    :goto_0
    return v0
.end method

.method protected handleNormalResponse(Lcom/sec/ims/util/SipError;I)V
    .locals 6
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mFailureCounter:I

    .line 92
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mCurPcscfIpIdx:I

    .line 93
    const/4 p2, 0x1

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegiAt:J

    .line 95
    int-to-long v0, p2

    mul-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->startRetryTimer(J)V

    .line 96
    return-void
.end method

.method public isDelayedDeregisterTimerRunning()Z
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->isDelayedDeregisterTimerRunningWithCallStatus()Z

    move-result v0

    return v0
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 275
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->checkVolteSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->checkRcsEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 275
    :goto_1
    return v0
.end method

.method public isThrottled()Z
    .locals 4

    .line 378
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mIsPermanentStopped:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mAllPcscfOver:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegiAt:J

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

.method public notifyVoLteOnOffToRil(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 289
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVoLteOnOffToRil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnCmcc"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 291
    .local v0, "eutranValue":Landroid/content/ContentValues;
    const-string/jumbo v1, "voice_domain_pref_eutran"

    if-nez p1, :cond_0

    .line 293
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 296
    :cond_0
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
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

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 301
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method public onDelayedDeregister()V
    .locals 0

    .line 370
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->runDelayedDeregister()V

    .line 371
    return-void
.end method

.method public onDeregistrationDone(Z)V
    .locals 4
    .param p1, "requested"    # Z

    .line 281
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v0, v0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->getVoiceTechType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyVolteSettingOff(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    .line 285
    :cond_0
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 4
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 100
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationError: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

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

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mCurPcscfIpIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mNumOfPcscfIp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mNumOfPcscfIp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mFailureCounter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mFailureCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsPermanentStopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mIsPermanentStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnCmcc"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationError : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fail count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mFailureCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V

    .line 109
    return-void

    .line 112
    :cond_0
    if-gez p2, :cond_1

    .line 113
    const/4 p2, 0x0

    .line 116
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    .line 117
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 120
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mFailureCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mFailureCounter:I

    .line 121
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mCurPcscfIpIdx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mCurPcscfIpIdx:I

    .line 123
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    .line 124
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 127
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->MISSING_P_ASSOCIATED_URI:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mCurPcscfIpIdx:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mCurPcscfIpIdx:I

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    goto :goto_0

    .line 131
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mCurPcscfIpIdx:I

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mNumOfPcscfIp:I

    if-ne v0, v3, :cond_6

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    .line 134
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-nez v0, :cond_7

    .line 135
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 136
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    .line 137
    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-nez v0, :cond_7

    .line 138
    :cond_5
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mAllPcscfOver:Z

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 140
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->resetPcscfList()V

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_0

    .line 144
    :cond_6
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string v1, "onRegistrationError: SIP_TIMEOUT error. Retry regi immediately"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegiAt:J

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 148
    return-void

    .line 151
    :cond_7
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->handleRetryTimer(I)V

    goto :goto_3

    .line 125
    :cond_8
    :goto_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->handleForbiddenError(I)V

    .line 126
    return-void

    .line 118
    :cond_9
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->handleNormalResponse(Lcom/sec/ims/util/SipError;I)V

    .line 153
    :goto_3
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 8
    .param p1, "callState"    # I

    .line 331
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->setCallStatus(I)V

    .line 332
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->getCallStatus()I

    move-result v0

    const-string v1, "RegiGvnCmcc"

    const-string v2, "ims"

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 334
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

    .line 336
    .local v0, "isProperState":Z
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 337
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->isDeregisterWithVoPSNeeded()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->isDeregisterWithRATNeeded()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    .line 338
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v4, :cond_3

    .line 339
    :cond_2
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string/jumbo v5, "onTelephonyCallStatusChanged: delayedDeregisterTimer 15 seconds start"

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->setDelayedDeregisterTimerRunning(Z)V

    .line 343
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/16 v6, 0x3a98

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    .line 354
    .end local v0    # "isProperState":Z
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->getCallStatus()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 355
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 356
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string/jumbo v2, "onTelephonyCallStatusChanged: deregister due to cs call"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v2, "call state changed"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 361
    :cond_4
    return-void
.end method

.method public onVolteSettingChanged()V
    .locals 0

    .line 306
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->updateEutranValues()V

    .line 307
    return-void
.end method

.method public releaseThrottle(I)V
    .locals 4
    .param p1, "releaseCase"    # I

    .line 68
    const-string v0, "RegiGvnCmcc"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->isDelayedDeregisterTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string/jumbo v3, "releaseThrottle: delete DelayedDeregisterTimer on fligt mode"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->setDelayedDeregisterTimerRunning(Z)V

    .line 73
    :cond_0
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    const-string/jumbo v3, "releaseThrottle: RELEASE_AIRPLANEMODE_ON"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mIsPermanentStopped:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mAllPcscfOver:Z

    goto :goto_0

    .line 76
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 77
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mIsPermanentStopped:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mAllPcscfOver:Z

    .line 79
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mCurImpu:I

    goto :goto_0

    .line 80
    :cond_2
    if-nez p1, :cond_3

    .line 81
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mIsPermanentStopped:Z

    .line 84
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mIsPermanentStopped:Z

    if-nez v1, :cond_4

    .line 85
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseThrottle: case by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    :cond_4
    return-void
.end method

.method public resetAllPcscfChecked()V
    .locals 1

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCmcc;->mAllPcscfOver:Z

    .line 384
    return-void
.end method
