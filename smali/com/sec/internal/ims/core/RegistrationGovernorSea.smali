.class public Lcom/sec/internal/ims/core/RegistrationGovernorSea;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorSea.java"


# static fields
.field private static final DELAYED_DEREGISTER_TIMER:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnSea"


# instance fields
.field protected mPdnFailedReason:Ljava/lang/String;


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

    .line 41
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mPdnFailedReason:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mNeedToCheckSrvcc:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mHandlePcscfOnAlternativeCall:Z

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mNeedToCheckLocationSetting:Z

    .line 45
    return-void
.end method

.method private checkDeregisterTimer()Z
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getBlockDeregiOnSrvcc()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->isDelayedDeregisterTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegiGvnSea["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "isReadyToRegister: DelayedDeregisterTimer Running."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->isDeregisterWithVoPSNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->isDeregisterWithRATNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 237
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isReadyToRegister: LTE attached. Delete DelayedDeregisterTimer."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->onDelayedDeregister()V

    goto :goto_1

    .line 238
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected checkCallStatus()Z
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 215
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ims"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    .line 216
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 217
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isEpdgHandoverInProgress()Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->isSrvccCase()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "RegiGvnSea"

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getBlockDeregiOnSrvcc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegiGvnSea["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "isReadyToRegister: Skip deregister SRVCC"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return v2

    .line 223
    :cond_0
    const-string v1, "isReadyToRegister: SRVCC case"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    const-string v1, "isReadyToRegister: call state is not idle"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    return v2

    .line 229
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method protected checkNetworkEvent(I)Z
    .locals 5
    .param p1, "rat"    # I

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 251
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    const-string v4, "RegiGvnSea"

    if-ne v1, v2, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    const/16 v1, 0x12

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 254
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 255
    const-string v1, "isReadyToRegister: Not LTE area"

    invoke-static {v4, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->DATA_RAT_IS_NOT_LTE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 257
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 258
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/ims/ImsRegistration;->setCurrentRat(I)V

    .line 261
    :cond_0
    return v3

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasNetworModeChangeEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 265
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ims"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 266
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v1, v2, :cond_2

    .line 267
    const-string v1, "isReadyToRegister: networkModeChangeTimer Running."

    invoke-static {v4, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ONGOING_NW_MODE_CHANGE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 269
    return v3

    .line 271
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method protected checkRoamingStatus(I)Z
    .locals 4
    .param p1, "rat"    # I

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 198
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    .line 199
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->allowRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    const/16 v1, 0x12

    const-string v2, "RegiGvnSea"

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 201
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v1

    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    .line 202
    const-string v1, "VoWIFI skip for roaming check"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    const-string v1, "isReadyToRegister: roaming is not allowed."

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ROAMING_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 206
    const/4 v1, 0x0

    return v1

    .line 209
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
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

    .line 129
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 130
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 132
    .local v1, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    .line 133
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 134
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    .line 133
    const-string v5, "ims"

    invoke-static {v3, v5, v4}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 135
    .local v3, "isImsEnabled":Z
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 136
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v7

    .line 135
    const-string/jumbo v8, "volte"

    invoke-static {v6, v8, v7}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    .line 138
    .local v6, "isVolteEnabled":Z
    :goto_1
    const-string v7, "RegiGvnSea"

    if-nez v3, :cond_2

    .line 139
    const-string v4, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v7, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 141
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    return-object v4

    .line 144
    :cond_2
    const-string v8, "mmtel"

    if-eqz v6, :cond_3

    .line 145
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 146
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 147
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v10, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 152
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->applyImsSwitch(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 154
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 155
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    .line 156
    .local v9, "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    .line 157
    invoke-interface {v0, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 160
    .end local v9    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->TRUEMOVE:Lcom/sec/internal/constants/Mno;

    const/16 v11, 0xd

    const/16 v12, 0xb

    if-eq v9, v10, :cond_5

    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->AIS:Lcom/sec/internal/constants/Mno;

    if-eq v9, v10, :cond_5

    .line 161
    if-ne p2, v11, :cond_5

    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 162
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v9

    if-ne v9, v12, :cond_5

    .line 163
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 165
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 166
    return-object v0

    .line 171
    :cond_5
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne v9, v10, :cond_7

    if-ne p2, v11, :cond_7

    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 172
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v9

    if-ne v9, v12, :cond_7

    .line 173
    sget-object v9, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mContext:Landroid/content/Context;

    sget v11, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    invoke-virtual {v9, v10, v11}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v9

    sget v10, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-ne v9, v10, :cond_6

    move v4, v5

    .line 175
    .local v4, "isDataRoamingOn":Z
    :cond_6
    if-nez v4, :cond_7

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v5, :cond_7

    .line 176
    const-string v5, "Data roaming OFF remove VoLTE service"

    invoke-static {v7, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data roaming : OFF,"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "reason":Ljava/lang/String;
    const-string v7, "mmtel-video"

    invoke-virtual {p0, v0, v7, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v0, v8, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v7, "smsip"

    invoke-virtual {p0, v0, v7, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v4    # "isDataRoamingOn":Z
    .end local v5    # "reason":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    if-ne v4, v12, :cond_8

    .line 185
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 188
    :cond_8
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 189
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 192
    :cond_9
    return-object v1
.end method

.method public isDelayedDeregisterTimerRunning()Z
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->isDelayedDeregisterTimerRunningWithCallStatus()Z

    move-result v0

    return v0
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 2
    .param p1, "rat"    # I

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->GLOBE_PH:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    .line 287
    const/4 v0, 0x1

    return v0

    .line 289
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isLocationInfoLoaded(I)Z

    move-result v0

    return v0
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 276
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->checkRoamingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->checkNetworkEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->checkWFCsettings(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->checkDeregisterTimer()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->checkMdmnProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 276
    :goto_1
    return v0
.end method

.method public isThrottled()Z
    .locals 6

    .line 49
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mIsPermanentStopped:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 50
    return v1

    .line 53
    :cond_0
    iget-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 54
    return v1

    .line 57
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mIsPermanentPdnFailed:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 58
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_4

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->SMART_PH:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mPdnFailedReason:Ljava/lang/String;

    .line 61
    const-string v3, "INSUFFICIENT_RESOURCES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 62
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getCurrentNetworkByPhoneId(I)I

    move-result v0

    const/16 v3, 0x12

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 60
    :goto_1
    return v1

    .line 65
    :cond_4
    return v2
.end method

.method public onDelayedDeregister()V
    .locals 0

    .line 314
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->runDelayedDeregister()V

    .line 315
    return-void
.end method

.method public onPdnRequestFailed(Ljava/lang/String;)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 95
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mPdnFailedReason:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "isNeedToStop":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->getPdnFailureReasons()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->getMatchedPdnFailReason([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "matchfrompdnfail":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 101
    .local v2, "retryTime":J
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 102
    const/4 v0, 0x1

    .line 103
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 104
    nop

    .line 105
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    .line 104
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 107
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->setRetryTimeOnPdnFail(J)V

    .line 110
    :cond_1
    if-eqz v0, :cond_3

    .line 111
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mIsPermanentPdnFailed:Z

    .line 112
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 113
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 114
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->SMART_PH:Lcom/sec/internal/constants/Mno;

    if-ne v4, v6, :cond_2

    if-eqz p1, :cond_2

    const-string v4, "INSUFFICIENT_RESOURCES"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegiGvnSea["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SMART_PH not enable Volte on all sites"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 118
    :cond_2
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mNonVoLTESimByPdnFail:Z

    .line 120
    :cond_3
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 5
    .param p1, "callState"    # I

    .line 294
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->setCallStatus(I)V

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getBlockDeregiOnSrvcc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->getCallStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 298
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v2, v3

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->isDeregisterWithVoPSNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->isDeregisterWithRATNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    .line 299
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v1, :cond_1

    .line 300
    :cond_0
    const-string v1, "RegiGvnSea"

    const-string/jumbo v2, "onTelephonyCallStatusChanged: delayedDeregisterTimer 10 seconds start"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->setDelayedDeregisterTimerRunning(Z)V

    .line 302
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    .line 305
    .end local v0    # "phoneId":I
    :cond_1
    return-void
.end method

.method public releaseThrottle(I)V
    .locals 5
    .param p1, "releaseCase"    # I

    .line 73
    const-string v0, "]"

    const-string v1, "RegiGvnSea["

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->isDelayedDeregisterTimerRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "releaseThrottle: delete DelayedDeregisterTimer on fligt mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->setDelayedDeregisterTimerRunning(Z)V

    .line 78
    :cond_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mIsPermanentStopped:Z

    goto :goto_0

    .line 79
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 80
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mIsPermanentStopped:Z

    .line 81
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mIsPermanentPdnFailed:Z

    .line 82
    const-string v3, ""

    iput-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mPdnFailedReason:Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mCurImpu:I

    .line 84
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mNonVoLTESimByPdnFail:Z

    .line 87
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mIsPermanentStopped:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mIsPermanentPdnFailed:Z

    if-nez v2, :cond_4

    .line 88
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseThrottle: case by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_4
    return-void
.end method
