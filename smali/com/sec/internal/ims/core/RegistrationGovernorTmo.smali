.class public Lcom/sec/internal/ims/core/RegistrationGovernorTmo;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorTmo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnTmo"

.field static final WFC_STATUS_OFF:I = 0x2

.field static final WFC_STATUS_ON:I = 0x1


# instance fields
.field protected mAllPcscfFailed:Z

.field protected mHasPendingDeregistration:Z

.field protected mWfcPrefMode:B

.field protected mWfcStatus:B


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcPrefMode:B

    .line 71
    iput-byte v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcStatus:B

    .line 76
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    .line 78
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    .line 82
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mNeedToCheckSrvcc:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 1
    .param p1, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p7, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcPrefMode:B

    .line 71
    iput-byte v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcStatus:B

    .line 76
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    .line 78
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mNeedToCheckSrvcc:Z

    .line 90
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->updateEutranValues()V

    .line 91
    return-void
.end method

.method private checkVowifiSetting(I)Z
    .locals 2
    .param p1, "rat"    # I

    .line 439
    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    iget-byte v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 440
    const-string v0, "RegiGvnTmo"

    const-string v1, "Rat is IWLAN but WFC switch is OFF."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 442
    const/4 v0, 0x0

    return v0

    .line 444
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private hasRcsSession()Z
    .locals 2

    .line 473
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 474
    .local v0, "imModule":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->hasEstablishedSession()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isDataAllowed()Z
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 258
    .local v0, "isDataRoamingOn":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v3

    .line 259
    .local v3, "isRoaming":Z
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    return v2
.end method

.method static synthetic lambda$filterService$0(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p0, "enabledRcsSvcsByAcs"    # Ljava/util/List;
    .param p1, "rcsSvc"    # Ljava/lang/String;

    .line 331
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected checkCallStatus()Z
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->isSrvccCase()Z

    move-result v0

    return v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    const/4 v0, 0x0

    return v0

    .line 434
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected checkRcsEvent(I)Z
    .locals 4
    .param p1, "rat"    # I

    .line 452
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->hasRcsSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "isVopsUpdated":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    .line 455
    .local v1, "event":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    if-eqz v1, :cond_0

    .line 456
    iget-boolean v0, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated:Z

    .line 458
    :cond_0
    const/16 v2, 0xd

    if-ne p1, v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/16 v2, 0x12

    if-ne p1, v2, :cond_3

    .line 459
    :cond_2
    const-string v2, "RegiGvnTmo"

    const-string v3, "RCS session is active"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ONGOING_RCS_SESSION:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 461
    const/4 v2, 0x0

    return v2

    .line 464
    .end local v0    # "isVopsUpdated":Z
    .end local v1    # "event":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public determineDeRegistration(II)Z
    .locals 5
    .param p1, "foundBestRat"    # I
    .param p2, "currentRat"    # I

    .line 538
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    const-string v1, "RegiGvnTmo"

    const-string v2, "isNeedToDeRegistration:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 539
    if-nez p1, :cond_1

    .line 540
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedToDeRegistration: no IMS service for network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Deregister."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no IMS service for network : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 543
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ims"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->isSrvccCase()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 544
    return v3

    .line 547
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->determineDeRegistration(II)Z

    move-result v0

    return v0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 16
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

    .line 264
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 265
    .local v3, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    if-eqz v1, :cond_0

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 267
    .local v4, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    iget-object v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    iget v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    const-string/jumbo v7, "volte"

    invoke-static {v5, v7, v6}, Lcom/sec/internal/helper/DmConfigHelper;->isImsSwitchEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    .line 268
    .local v5, "isVolteEnabled":Z
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    const-string/jumbo v8, "rcs"

    invoke-static {v6, v8, v7}, Lcom/sec/internal/helper/DmConfigHelper;->isImsSwitchEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    .line 269
    .local v6, "isRcsEnabled":Z
    iget-object v7, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    .line 270
    const/4 v9, -0x1

    invoke-static {v7, v9, v8}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    move v7, v10

    .line 271
    .local v7, "isRcsEnabledByUser":Z
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->isDataAllowed()Z

    move-result v10

    .line 272
    .local v10, "dataAllowed":Z
    iget-object v11, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    iget v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    const-string v13, "defaultmsgappinuse"

    invoke-static {v11, v13, v12}, Lcom/sec/internal/helper/DmConfigHelper;->isImsSwitchEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v11

    .line 274
    .local v11, "isDefaultMsgAppInUsed":Z
    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    iget v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    const-string v14, "ims"

    invoke-static {v12, v14, v13}, Lcom/sec/internal/helper/DmConfigHelper;->isImsSwitchEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v12

    const-string v13, "RegiGvnTmo"

    if-nez v12, :cond_2

    .line 275
    const-string v8, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v13, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 277
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    return-object v8

    .line 280
    :cond_2
    iget v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VOLTE: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", RCS: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", rcs_user_setting: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", Data allowed: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", Default MSG app: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v12, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    const/16 v8, 0xd

    if-eq v2, v8, :cond_3

    const/16 v8, 0x14

    if-ne v2, v8, :cond_6

    .line 291
    :cond_3
    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    invoke-virtual {v8, v12}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v12, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v8, v12, :cond_4

    .line 292
    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v8

    const-string v12, "internet"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 293
    const-string v8, "VoPS Supported. Registration over IMS pdn."

    invoke-static {v13, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    return-object v8

    .line 302
    :cond_4
    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->hasRcsSession()Z

    move-result v8

    if-nez v8, :cond_5

    .line 304
    const-string v8, "VoPS NOT Supported. Registration over Internet PDN."

    invoke-static {v13, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 306
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    return-object v8

    .line 308
    :cond_5
    const-string v8, "VoPS NOT Supported. But, there are rcs sessions"

    invoke-static {v13, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_6
    if-eqz v5, :cond_7

    .line 315
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 316
    const-string v8, "mmtel"

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 317
    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v12, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 322
    :cond_7
    const-string v8, "mmtel-video"

    if-nez v10, :cond_8

    const/16 v12, 0x12

    if-eq v2, v12, :cond_8

    .line 323
    const-string v12, "MobileData OFF"

    invoke-virtual {v0, v4, v8, v12}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_8
    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    invoke-interface {v12, v13}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v12

    if-eqz v12, :cond_c

    if-eqz v6, :cond_c

    .line 327
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 329
    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    iget v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    iget-object v14, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    iget v15, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    iget-object v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 330
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-static {v14, v15, v9}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v9

    .line 329
    invoke-static {v12, v13, v9}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getRcsEnabledServiceList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 331
    .local v9, "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v12

    new-instance v13, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorTmo$O2p6SCVsmsnfMzA8FZ9OmMNUYUI;

    invoke-direct {v13, v9}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorTmo$O2p6SCVsmsnfMzA8FZ9OmMNUYUI;-><init>(Ljava/util/List;)V

    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v12

    new-instance v13, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorTmo$yHl9On_-V1XQGxGVF8T1sJPCJ8U;

    invoke-direct {v13, v0, v4}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorTmo$yHl9On_-V1XQGxGVF8T1sJPCJ8U;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Ljava/util/Set;)V

    .line 332
    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 333
    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    iget v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    .line 334
    const-string/jumbo v14, "root/application/1/services/IR94VideoAuth"

    invoke-static {v12, v14, v13}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getConfigData(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;

    move-result-object v12

    .line 335
    .local v12, "configData":Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v13, "IR94VideoAuth"

    invoke-virtual {v12, v13, v14}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_9

    .line 336
    const-string v13, "ir94videoauth disabled"

    invoke-virtual {v0, v4, v8, v13}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_9
    if-eqz v7, :cond_a

    if-nez v11, :cond_c

    .line 340
    :cond_a
    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 341
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v8

    array-length v13, v8

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_c

    aget-object v15, v8, v14

    .line 342
    .local v15, "service":Ljava/lang/String;
    const-string v1, "RCS service off"

    invoke-virtual {v0, v4, v15, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .end local v15    # "service":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_2

    .line 345
    :cond_b
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v8, v1

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v8, :cond_c

    aget-object v14, v1, v13

    .line 346
    .local v14, "service":Ljava/lang/String;
    const-string v15, "chatservice off"

    invoke-virtual {v0, v4, v14, v15}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local v14    # "service":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 352
    .end local v9    # "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "configData":Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;
    :cond_c
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    invoke-static {v1, v8}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 353
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v8, v1

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_d

    aget-object v12, v1, v9

    .line 354
    .local v12, "service":Ljava/lang/String;
    const-string v13, "No DualRcs"

    invoke-virtual {v0, v4, v12, v13}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v12    # "service":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 358
    :cond_d
    const-string v1, "mmtel-call-composer"

    if-eqz v5, :cond_f

    if-eqz v6, :cond_f

    .line 359
    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    .line 360
    const-string v12, "composerAuth"

    invoke-static {v12, v9}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iget-object v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    .line 361
    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    invoke-static {v13, v12, v14, v15}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v12

    .line 359
    invoke-static {v8, v9, v12}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 362
    .local v8, "val":I
    const/4 v9, 0x2

    if-eq v8, v9, :cond_e

    const/4 v9, 0x3

    if-eq v8, v9, :cond_e

    .line 363
    const-string v9, "MMTEL Composer off from ACS"

    invoke-virtual {v0, v4, v1, v9}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .end local v8    # "val":I
    :cond_e
    goto :goto_5

    .line 366
    :cond_f
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 369
    :goto_5
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 370
    invoke-interface {v4, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 373
    :cond_10
    return-object v4
.end method

.method public getFailureType()I
    .locals 3

    .line 506
    const/16 v0, 0x10

    .line 507
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 508
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getCsfbSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 509
    :cond_0
    const/16 v0, 0x20

    .line 510
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    .line 512
    :cond_1
    return v0
.end method

.method protected getWaitTime(I)I
    .locals 5
    .param p1, "failCount"    # I

    .line 212
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegBaseTime:I

    add-int/lit8 v1, p1, -0x1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v0, v1

    .line 214
    .local v0, "waitTime":I
    if-gez v0, :cond_0

    .line 215
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMaxTime:I

    return v1

    .line 217
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMaxTime:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected handleNormalResponse(Lcom/sec/ims/util/SipError;I)V
    .locals 6
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I

    .line 118
    if-lez p2, :cond_0

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegiAt:J

    .line 120
    int-to-long v0, p2

    mul-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->startRetryTimer(J)V

    goto :goto_0

    .line 122
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegiAt:J

    .line 124
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mFailureCounter:I

    .line 125
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mCurPcscfIpIdx:I

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 127
    return-void
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 469
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->checkVowifiSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->checkRcsEvent(I)Z

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

.method public isThrottled()Z
    .locals 4

    .line 479
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWFCSubscribeForbiddenCounter:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 480
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 479
    :goto_1
    return v0
.end method

.method public synthetic lambda$filterService$1$RegistrationGovernorTmo(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .param p1, "filteredServices"    # Ljava/util/Set;
    .param p2, "disabledSvc"    # Ljava/lang/String;

    .line 332
    const-string v0, "Disable from ACS."

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
    .locals 2
    .param p1, "event"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;
    .param p3, "callType"    # I

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStatus: event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnTmo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 408
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    goto :goto_0

    .line 412
    :cond_0
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_INITIAL_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 413
    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 415
    return-void

    .line 418
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 419
    return-void
.end method

.method public onContactActivated()V
    .locals 2

    .line 499
    const-string v0, "RegiGvnTmo"

    const-string v1, "ContactActivated. Reset SRMR2 failure counter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mSubscribeForbiddenCounter:I

    .line 501
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWFCSubscribeForbiddenCounter:I

    .line 502
    return-void
.end method

.method public onPdnRequestFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 131
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "notify":Z
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isPermanentPdnFailureReason(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "RegiGvnTmo"

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "Permanent Failure"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 138
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getCsfbSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPdnRejectCounter:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPdnRejectCounter:I

    .line 140
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPdnRejectCounter:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_2

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v1

    const/16 v4, 0x14

    if-ne v1, v4, :cond_2

    .line 144
    const-string v1, "PDN_MAX_TIMEOUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    const/4 v0, 0x1

    .line 148
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 149
    const-string v1, "notifyImsNotAvailable"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 151
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPdnRejectCounter:I

    .line 154
    .end local v0    # "notify":Z
    :cond_3
    return-void
.end method

.method public onPublishError(Lcom/sec/ims/util/SipError;)V
    .locals 2
    .param p1, "error"    # Lcom/sec/ims/util/SipError;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPublishError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnTmo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v1, "Publish Error. ReRegister.."

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 6
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationError: state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

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

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mCurPcscfIpIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNumOfPcscfIp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mNumOfPcscfIp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mFailureCounter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mFailureCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 160
    if-gez p2, :cond_0

    .line 161
    const/4 p2, 0x0

    .line 164
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    .line 165
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 169
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->MISSING_P_ASSOCIATED_URI:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    goto :goto_0

    .line 172
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->EMPTY_PCSCF:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mFailureCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mFailureCounter:I

    .line 174
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->handlePcscfError()V

    .line 175
    return-void

    .line 177
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mFailureCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mFailureCounter:I

    .line 178
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mCurPcscfIpIdx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mCurPcscfIpIdx:I

    .line 183
    if-nez p2, :cond_4

    .line 184
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->getWaitTime()I

    move-result p2

    .line 188
    :cond_4
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mCurPcscfIpIdx:I

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mNumOfPcscfIp:I

    if-lt v0, v2, :cond_5

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mCurPcscfIpIdx:I

    .line 190
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    .line 192
    :cond_5
    if-lez p2, :cond_6

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegiAt:J

    .line 194
    int-to-long v0, p2

    mul-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->startRetryTimer(J)V

    goto :goto_1

    .line 197
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 200
    :goto_1
    return-void

    .line 166
    :cond_7
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->handleNormalResponse(Lcom/sec/ims/util/SipError;I)V

    .line 167
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSipError: service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnTmo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mNumOfPcscfIp:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mIsValid:Z

    .line 381
    const-string v0, "mmtel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->PROXY_AUTHENTICATION_REQUIRED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 385
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TCP Connection Error"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 387
    :cond_2
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasVoLteCall:Z

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const-string/jumbo v3, "onSipError: postpone deregi till call end"

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 389
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    goto :goto_2

    .line 391
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->removeCurrentPcscfAndInitialRegister(Z)V

    goto :goto_2

    .line 383
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mIsValid:Z

    const-string v4, "SIP ERROR[MMTEL] : INVITE_TIMEOUT, Deregister.."

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_2

    .line 394
    :cond_5
    const-string v0, "im"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 395
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 396
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v1, "SIP ERROR[IM] : FORBIDDEN, Reregister.."

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 400
    :cond_7
    :goto_2
    return-object p2
.end method

.method public onSubscribeError(ILcom/sec/ims/util/SipError;)V
    .locals 10
    .param p1, "event"    # I
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSubscribeError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnTmo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-nez p1, :cond_3

    .line 224
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 225
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWFCSubscribeForbiddenCounter:I

    .line 226
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mSubscribeForbiddenCounter:I

    .line 227
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x1

    .line 230
    .local v0, "keeppdn":Z
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v2

    const/16 v4, 0x12

    if-ne v2, v4, :cond_1

    .line 231
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWFCSubscribeForbiddenCounter:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWFCSubscribeForbiddenCounter:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 232
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :cond_1
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWFCSubscribeForbiddenCounter:I

    .line 236
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mSubscribeForbiddenCounter:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mSubscribeForbiddenCounter:I

    .line 238
    :cond_2
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mSubscribeForbiddenCounter:I

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWFCSubscribeForbiddenCounter:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->getWaitTime(I)I

    move-result v1

    .line 239
    .local v1, "retryAfter":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v1

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegiAt:J

    .line 240
    int-to-long v4, v1

    mul-long/2addr v4, v8

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->startRetryTimer(J)V

    .line 241
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 242
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v5, "Subscribe Error. Deregister.."

    invoke-virtual {v2, v4, v3, v0, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 244
    .end local v0    # "keeppdn":Z
    .end local v1    # "retryAfter":I
    :cond_3
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 5
    .param p1, "callState"    # I

    .line 248
    if-nez p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Call status changed. Deregister.."

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 254
    :cond_0
    return-void
.end method

.method public onVolteSettingChanged()V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->updateEutranValues()V

    .line 114
    return-void
.end method

.method public onWfcProfileChanged([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 95
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcPrefMode:B

    .line 96
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcStatus:B

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WFC] PrefMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcPrefMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcStatus:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnTmo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-byte v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcStatus:B

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 99
    const-string v0, "WFC switch has turned off. Release throttle."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->releaseThrottle(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public releaseThrottle(I)V
    .locals 3
    .param p1, "releaseCase"    # I

    .line 485
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 487
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    .line 488
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mFailureCounter:I

    .line 489
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mRegiAt:J

    .line 490
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->stopRetryTimer()V

    .line 491
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mSubscribeForbiddenCounter:I

    goto :goto_0

    .line 492
    :cond_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 493
    :cond_1
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWFCSubscribeForbiddenCounter:I

    .line 495
    :cond_2
    :goto_0
    return-void
.end method

.method public updateEutranValues()V
    .locals 5

    .line 516
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    return-void

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->getVoiceTechType()I

    move-result v0

    .line 522
    .local v0, "voiceTech":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEutranValues : voiceTech : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnTmo"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 525
    .local v1, "eutranValue":Landroid/content/ContentValues;
    const-string/jumbo v2, "voice_domain_pref_eutran"

    if-nez v0, :cond_1

    .line 527
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 530
    :cond_1
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 534
    return-void
.end method
