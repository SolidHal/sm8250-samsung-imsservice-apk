.class abstract Lcom/sec/internal/ims/core/RegistrationManagerInternal;
.super Lcom/sec/internal/ims/core/RegistrationManager;
.source "RegistrationManagerInternal.java"


# direct methods
.method constructor <init>(Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;)V
    .locals 3
    .param p1, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "pc"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p6, "cmcAm"    # Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .param p7, "rcsPm"    # Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/IImsFramework;",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/helper/os/ITelephonyManager;",
            "Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;",
            "Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;",
            ")V"
        }
    .end annotation

    .line 80
    .local p4, "smList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/ISimManager;>;"
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationManager;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEmmCause:I

    .line 83
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "RegiMgr"

    const/16 v2, 0xbb8

    invoke-direct {v0, p2, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 84
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 86
    iput-object p5, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 87
    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 88
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mSimManagers:Ljava/util/List;

    .line 89
    iput-object p6, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    .line 90
    iput-object p7, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mAuEmergencyProfile:Landroid/util/SparseArray;

    .line 93
    return-void
.end method

.method private checkServicesForInitialRegistration(Lcom/sec/internal/ims/core/RegisterTask;Ljava/util/Set;)Z
    .locals 8
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 588
    .local p2, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 590
    .local v0, "phoneId":I
    invoke-static {p2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "RegiMgr"

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": no ims service for current rat"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 593
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    .line 594
    .local v1, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v5

    sget v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq v5, v6, :cond_1

    .line 595
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v5, :cond_0

    .line 596
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 599
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v4

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v2

    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 600
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    const/16 v5, 0xb

    if-ne v2, v5, :cond_1

    .line 601
    const-string v2, "no ims service. fresh icon once."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isSuspended()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 605
    :cond_1
    iget-boolean v2, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v2, :cond_2

    .line 606
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 607
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 610
    :cond_2
    const v2, 0x1101000b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",FILTERED ALL:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 611
    return v4

    .line 613
    .end local v1    # "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v1

    .line 615
    .local v1, "rat":I
    if-nez v1, :cond_4

    .line 616
    const-string/jumbo v2, "tryRegister: crap. No service?"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 617
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NETWORK_UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 618
    return v4

    .line 622
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isLocationInfoLoaded(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 623
    const-string v2, "location is not loaded"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 624
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->LOCATION_NOT_LOADED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 625
    return v4

    .line 629
    :cond_5
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPriorityRegiedTask(ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;)Ljava/util/List;

    move-result-object v5

    .line 630
    .local v5, "lowerTasks":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/RegisterTask;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deregi found lowerPriority task "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 632
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 633
    .local v3, "t":Lcom/sec/internal/ims/core/RegisterTask;
    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 634
    const-string v6, "deregi found lowerPriority task"

    invoke-virtual {p0, v3, v4, v4, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 635
    .end local v3    # "t":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 636
    :cond_6
    return v4

    .line 640
    .end local v1    # "rat":I
    .end local v5    # "lowerTasks":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/RegisterTask;>;"
    :cond_7
    return v2
.end method

.method private compareSvcAndDoUpdateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZILcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 17
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "isForceReRegi"    # Z
    .param p3, "immediately"    # Z
    .param p4, "rat"    # I
    .param p5, "ne"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 808
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v10

    .line 809
    .local v10, "previousRat":I
    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 811
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v11

    .line 812
    .local v11, "phoneId":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v1

    .line 813
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2, v11}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 812
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/sec/ims/ImsRegistration;

    .line 814
    .local v12, "reg":Lcom/sec/ims/ImsRegistration;
    const-string v13, "RegiMgr"

    const/4 v14, 0x0

    if-nez v12, :cond_0

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " reg is null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v11, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 816
    return v14

    .line 819
    :cond_0
    invoke-virtual {v12}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v15

    .line 820
    .local v15, "oldSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v11}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v14

    :goto_0
    invoke-virtual {v0, v1, v8, v2, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v5

    .line 821
    .local v5, "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceForNetwork: registered service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v11, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 822
    invoke-static {v5}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty service list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 824
    const/16 v1, 0x48

    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 825
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    if-eq v11, v1, :cond_2

    .line 826
    invoke-virtual {v0, v7, v6, v14}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 828
    :cond_2
    invoke-virtual {v0, v7, v14, v14}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 830
    :goto_1
    return v14

    .line 833
    :cond_3
    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, p4

    move-object v4, v15

    move-object/from16 v16, v5

    .end local v5    # "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v16, "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move v14, v6

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcom/sec/internal/ims/core/RegistrationUtils;->determineUpdateRegistration(Lcom/sec/internal/ims/core/RegisterTask;IILjava/util/Set;Ljava/util/Set;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 834
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 835
    .local v1, "deregSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 836
    .local v3, "svc":Ljava/lang/String;
    move-object/from16 v4, v16

    .end local v16    # "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 837
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateRegistration: Add to delete service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v11, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 838
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 840
    .end local v3    # "svc":Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v4

    goto :goto_2

    .line 841
    .end local v4    # "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v4, v16

    .end local v16    # "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 843
    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2, v1, v12}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyRcsDeregistering(Ljava/util/Set;Lcom/sec/ims/ImsRegistration;)V

    .line 845
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 846
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/sec/ims/ImsRegistration;->setCurrentRat(I)V

    .line 850
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-static {v11}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v5

    invoke-interface {v3, v5}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 851
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v6, v14

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    .line 850
    :goto_3
    invoke-interface {v2, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isReadyToDualRegister(Z)Z

    move-result v2

    if-nez v2, :cond_b

    .line 852
    if-eqz p2, :cond_9

    .line 853
    iput-boolean v14, v7, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    goto :goto_4

    .line 855
    :cond_9
    iput-boolean v14, v7, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    .line 857
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isEpdgHandoverInProgress()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 858
    invoke-virtual {v7, v14}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingEpdgHandover(Z)V

    .line 860
    :cond_a
    move/from16 v2, p3

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setImmediatePendingUpdate(Z)V

    .line 861
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v5, 0x20

    const-wide/16 v13, 0x5dc

    invoke-virtual {v3, v5, v13, v14}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 862
    const/4 v3, 0x0

    return v3

    .line 865
    :cond_b
    move/from16 v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rat = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 866
    const/4 v3, 0x0

    invoke-virtual {v0, v7, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->registerInternal(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Ljava/util/Set;)V

    .line 867
    return v14

    .line 869
    .end local v1    # "deregSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    move/from16 v2, p3

    move-object/from16 v4, v16

    .end local v16    # "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getReregiOnRatChange()I

    move-result v1

    if-eqz v1, :cond_d

    .line 870
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getReregiOnRatChange()I

    move-result v1

    if-ne v1, v14, :cond_f

    if-eq v8, v10, :cond_f

    .line 871
    :cond_d
    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 872
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v3, "remove_icon_nosvc"

    const/4 v5, 0x0

    invoke-interface {v1, v11, v3, v5}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    .line 873
    .local v1, "removeIconNoSvc":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRegistration: updateRegistrationIcon: remove_icon_nosvc: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v11, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 874
    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v3

    if-nez v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isSuspended()Z

    move-result v5

    if-eqz v5, :cond_e

    move v6, v14

    goto :goto_5

    :cond_e
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 878
    .end local v1    # "removeIconNoSvc":Z
    :cond_f
    const-string v1, ""

    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 879
    const/4 v1, 0x0

    return v1
.end method

.method private getOwnCapabilities(Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/options/Capabilities;
    .locals 6
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 989
    const-string v0, "RegiMgr"

    const-string v1, "getOwnCapabilities:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 991
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v1

    .line 992
    .local v1, "cdm":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v2

    .line 994
    .local v2, "version":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 995
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v3

    if-ne p2, v3, :cond_1

    .line 996
    :cond_0
    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getOwnCapabilitiesBase(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    .line 997
    .local v3, "ownCap":Lcom/sec/ims/options/Capabilities;
    if-nez v3, :cond_3

    .line 998
    const-string v4, "getOwnCapabilities: ownCap is null, create empty Capabilities"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    new-instance v0, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v0}, Lcom/sec/ims/options/Capabilities;-><init>()V

    move-object v3, v0

    goto :goto_0

    .line 1003
    .end local v3    # "ownCap":Lcom/sec/ims/options/Capabilities;
    :cond_1
    new-instance v3, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v3}, Lcom/sec/ims/options/Capabilities;-><init>()V

    .line 1004
    .restart local v3    # "ownCap":Lcom/sec/ims/options/Capabilities;
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v4, :cond_2

    .line 1005
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v4, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSupportFeature(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    .line 1008
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1009
    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 1010
    const-string v4, "getOwnCapabilities : add mmtel to Capabilities for CMC-REGI"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_3
    :goto_0
    return-object v3
.end method

.method private handleSolicitedDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)V
    .locals 4
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 1430
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isKeepPdn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1434
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1435
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiCause(Lcom/sec/ims/util/SipError;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1436
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v2, 0x85

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1439
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1440
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1441
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1442
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 1451
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryNextRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    .line 1452
    return-void
.end method

.method private handleUnSolicitedDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;I)V
    .locals 4
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;
    .param p3, "retryAfter"    # I

    .line 1455
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeregistered: registration error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1457
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p2, p3, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V

    .line 1458
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1459
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    goto :goto_0

    .line 1462
    :cond_0
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setKeepPdn(Z)V

    .line 1464
    :goto_0
    return-void
.end method

.method private isSingleReg(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;I)Z
    .locals 2
    .param p1, "rcsVolteSingleRegistration"    # Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    .param p2, "phoneId"    # I

    .line 232
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 233
    .local v0, "subId":I
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->SINGLE_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->DUAL_WHEN_ROAMING_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 234
    invoke-interface {v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 233
    :goto_1
    return v1
.end method

.method static synthetic lambda$buildTask$0(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/RegisterTask;)I
    .locals 2
    .param p0, "task1"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p1, "task2"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 228
    iget-object v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private makeThrottle(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1316
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1318
    const-string v0, "RegiMgr"

    const-string v1, "onRegisterError: don\'t retry register"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1319
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->makeThrottle()V

    .line 1321
    :cond_0
    return-void
.end method

.method private removeAdhocProfile(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1289
    const/4 v0, 0x0

    .line 1290
    .local v0, "found":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1291
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    .line 1292
    .local v2, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-eqz v1, :cond_5

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1296
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1298
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mAuEmergencyProfile:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/core/-$$Lambda$XX8uNPsmy4cJ_ATQztOoFCwoEvU;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$XX8uNPsmy4cJ_ATQztOoFCwoEvU;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1299
    const/4 v0, 0x1

    goto :goto_1

    .line 1302
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    .line 1303
    .local v4, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1304
    const/4 v0, 0x1

    .line 1306
    .end local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    goto :goto_0

    .line 1309
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeregisterd: remove RegisterTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegiMgr"

    invoke-static {v4, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1311
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    .line 1313
    :cond_4
    return-void

    .line 1293
    :cond_5
    :goto_2
    return-void
.end method

.method private removeAdhocProfile(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 5
    .param p1, "rtl"    # Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    .param p2, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1508
    const/4 v0, 0x0

    .line 1509
    .local v0, "isInternalProfile":Z
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 1510
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1511
    const/4 v0, 0x1

    .line 1512
    goto :goto_1

    .line 1514
    .end local v2    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    goto :goto_0

    .line 1517
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1518
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1519
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeregisterd: Remove RegiTask for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1520
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    .line 1522
    :cond_2
    return-void
.end method

.method private startSilentEmergency()V
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHasSilentE911:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 742
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPhoneIdForSilentE911:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHasSilentE911:Landroid/os/Message;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->startEmergencyRegistration(ILandroid/os/Message;)V

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHasSilentE911:Landroid/os/Message;

    .line 744
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPhoneIdForSilentE911:I

    .line 746
    :cond_0
    return-void
.end method

.method private tryInitialP2pRegistration(Lcom/sec/internal/ims/core/RegisterTask;IILjava/util/Set;)Z
    .locals 9
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "rat"    # I
    .param p3, "pdn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            "II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 523
    .local p4, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 524
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 525
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    .line 526
    .local v2, "cmcType":I
    const/4 v3, 0x0

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    const/4 v4, 0x7

    if-eq v2, v4, :cond_0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 529
    :cond_0
    const-string v4, "RegiMgr"

    const-string/jumbo v5, "tryInitialRegistration, skip pdn connect"

    invoke-static {v4, v0, p1, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 530
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 531
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setKeepPdn(Z)V

    .line 533
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v6, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v6

    .line 535
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 540
    :cond_1
    iget-object v7, p1, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v7, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    .line 542
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 543
    .local v3, "pcscf":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tryRegister: wifi-direct or mobile-hotspot registration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InitialRegi : rat = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0, p1, v3, p4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->registerInternal(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Ljava/util/Set;)V

    .line 546
    return v5

    .line 549
    .end local v3    # "pcscf":Ljava/lang/String;
    .end local v6    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return v3

    .line 536
    .restart local v6    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    const-string/jumbo v5, "tryRegister: pcscf is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return v3
.end method

.method private tryNextRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "reason"    # I

    .line 1525
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x2

    const/16 v3, 0xb

    if-ne v0, v3, :cond_5

    .line 1526
    const/4 v0, 0x0

    .line 1527
    .local v0, "delay":I
    if-eq p2, v2, :cond_2

    const/16 v3, 0x18

    if-ne p2, v3, :cond_0

    goto :goto_0

    .line 1530
    :cond_0
    const/16 v3, 0x1b

    if-ne p2, v3, :cond_1

    .line 1531
    const/16 v0, 0x3e8

    .line 1532
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->addDelay(I)V

    goto :goto_1

    .line 1533
    :cond_1
    const/16 v3, 0x15

    if-ne p2, v3, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isKeepPdn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1534
    const/16 v0, 0xbb8

    .line 1535
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->addDelay(I)V

    goto :goto_1

    .line 1528
    :cond_2
    :goto_0
    const/16 v0, 0xbb8

    .line 1529
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->addDelay(I)V

    .line 1538
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_4

    .line 1539
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    add-int/lit8 v4, v0, 0x64

    int-to-long v4, v4

    invoke-virtual {v3, v1, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1540
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    add-int/lit8 v3, v0, 0x64

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1542
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    add-int/lit16 v4, v0, 0x12c

    int-to-long v4, v4

    invoke-virtual {v3, v1, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1543
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    add-int/lit16 v3, v0, 0x12c

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1545
    .end local v0    # "delay":I
    :goto_2
    goto :goto_3

    .line 1546
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 1547
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1549
    :goto_3
    return-void
.end method

.method private tryStartPdnConnectivity(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/ims/settings/ImsProfile;II)Z
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p3, "rat"    # I
    .param p4, "pdn"    # I

    .line 553
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 554
    .local v0, "phoneId":I
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasRcsService(ILcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    if-eq p3, v1, :cond_0

    .line 556
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasVolteService(ILcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 557
    invoke-static {v1, v3, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->getRcsUserConsent(Landroid/content/Context;Lcom/sec/internal/helper/os/ITelephonyManager;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->RCS_ONLY_NEEDED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 559
    return v2

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryRegister: connecting to network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, p1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 564
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 566
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-nez p4, :cond_2

    .line 568
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tryRegister: startTimsTimer rcs pdn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegiMgr"

    invoke-static {v5, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 569
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v1

    const-string v4, "InternetPdnRequest"

    if-ne v1, v3, :cond_1

    .line 571
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 574
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 577
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPhoneIdForStartConnectivity(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)I

    move-result v4

    invoke-virtual {v1, p4, p1, v4}, Lcom/sec/internal/ims/core/PdnController;->startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I

    .line 578
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 579
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    aput-object v5, v4, v2

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    aput-object v2, v4, v3

    const/4 v2, 0x2

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v5, v4, v2

    const/4 v2, 0x3

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    .line 580
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 581
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    const-string v4, "ImsPdnRequst"

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 583
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PDN REQUEST : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 584
    return v3
.end method


# virtual methods
.method protected buildTask(I)V
    .locals 19
    .param p1, "phoneId"    # I

    .line 142
    move-object/from16 v9, p0

    move/from16 v10, p1

    const-string v0, "RegiMgr"

    const-string v1, "buildTask:"

    invoke-static {v0, v10, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 144
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasLoadedProfile(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const-string v1, "buildTask: no profile found."

    invoke-static {v0, v10, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    return-void

    .line 149
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v11

    .line 150
    .local v11, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-nez v11, :cond_1

    .line 151
    return-void

    .line 154
    :cond_1
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 155
    .local v12, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v12, :cond_2

    .line 156
    return-void

    .line 159
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 160
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    const/4 v0, 0x0

    .line 163
    .local v0, "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 164
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 165
    .local v3, "ext":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v3, :cond_3

    .line 166
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/ims/settings/ImsProfile;->setExtImpuList(Ljava/util/List;)V

    .line 168
    :cond_3
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v2    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v3    # "ext":Lcom/sec/ims/settings/ImsProfile;
    goto :goto_0

    .line 172
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v9, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 174
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/settings/ImsProfile;>;"
    :cond_5
    goto :goto_1

    .line 179
    :cond_6
    invoke-virtual {v11}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 180
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_2

    .line 184
    :cond_7
    iget-object v1, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 v2, -0x1

    .line 185
    const-string v3, "default_rcs_volte_registration"

    invoke-interface {v1, v10, v3, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v1

    .line 184
    invoke-static {v1}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->valueOf(I)Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    move-result-object v1

    .line 186
    .local v1, "rcsVolteSingleRegistration":Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    if-eq v1, v2, :cond_8

    .line 187
    iget-object v2, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    .line 188
    const-string/jumbo v3, "rcsVolteSingleRegistration"

    invoke-static {v3, v10}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 187
    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->valueOf(I)Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    move-result-object v1

    move-object v14, v1

    goto :goto_3

    .line 186
    :cond_8
    move-object v14, v1

    .line 191
    .end local v1    # "rcsVolteSingleRegistration":Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    .local v14, "rcsVolteSingleRegistration":Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setRcsVolteSingleRegistration(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;)V

    .line 193
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v8, v0

    .end local v0    # "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    .local v8, "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/sec/ims/settings/ImsProfile;

    .line 197
    .local v7, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    move-object v9, v8

    goto/16 :goto_5

    .line 201
    :cond_9
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "buildTask: ["

    if-eq v0, v2, :cond_a

    .line 202
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] - Disabled profile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 203
    move-object v9, v8

    goto/16 :goto_5

    .line 207
    :cond_a
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    if-eq v14, v0, :cond_b

    invoke-direct {v9, v14, v10}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isSingleReg(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 208
    invoke-static {v7}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, v10}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidConfigDb(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    move-object v8, v7

    .line 210
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] - RcsVolteSingleRegistration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 211
    goto :goto_4

    .line 214
    :cond_b
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iget-object v2, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 215
    const-string v4, "enable_gba"

    invoke-interface {v2, v10, v4, v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v1

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isGBASupported()Z

    move-result v2

    .line 214
    invoke-static {v10, v7, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->isSatisfiedCarrierRequirement(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/constants/Mno;IZ)Z

    move-result v0

    if-nez v0, :cond_c

    .line 216
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] - Unsatisfying carrier requirement"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 217
    move-object v9, v8

    goto :goto_5

    .line 220
    :cond_c
    new-instance v16, Lcom/sec/internal/ims/core/RegisterTask;

    iget-object v3, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v5, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    iget-object v6, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v2, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-object/from16 v0, v16

    move-object v1, v7

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    move-object/from16 v18, v7

    .end local v7    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .local v18, "profile":Lcom/sec/ims/settings/ImsProfile;
    move-object/from16 v7, v17

    move-object v9, v8

    .end local v8    # "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    .local v9, "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    move/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/RegisterTask;-><init>(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/PdnController;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    .line 221
    .local v0, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v11, v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v0    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v18    # "profile":Lcom/sec/ims/settings/ImsProfile;
    nop

    .line 193
    .end local v9    # "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v8    # "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    :goto_5
    move-object v8, v9

    move-object/from16 v9, p0

    .end local v8    # "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v9    # "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    goto/16 :goto_4

    .line 224
    .end local v9    # "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v8    # "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_d
    move-object v9, v8

    .end local v8    # "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v9    # "rcsOnlyProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v9, :cond_e

    .line 225
    invoke-virtual {v11, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->enableRcsOverIms(Lcom/sec/ims/settings/ImsProfile;)V

    .line 228
    :cond_e
    sget-object v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerInternal$vtXnljxuJWjLtvywNEHMlWrOaYU;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerInternal$vtXnljxuJWjLtvywNEHMlWrOaYU;

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 229
    return-void
.end method

.method protected checkForTryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 19
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    .line 345
    .local v10, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v11

    .line 346
    .local v11, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForTryRegister id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "RegiMgr"

    invoke-static {v12, v11, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-virtual {v0, v10, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 350
    invoke-static {v11}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v7

    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    .line 349
    move v1, v11

    move-object v2, v10

    invoke-static/range {v1 .. v8}, Lcom/sec/internal/ims/core/RegistrationUtils;->findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;ZLcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;ILandroid/content/Context;)I

    move-result v13

    .line 351
    .local v13, "rat":I
    invoke-virtual {v9, v13}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 353
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v14

    goto :goto_0

    :cond_0
    move v2, v15

    .line 353
    :goto_0
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isReadyToDualRegister(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v11, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 356
    return v15

    .line 359
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 360
    .local v8, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v8, :cond_2

    .line 361
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->SIMMANAGER_NULL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 362
    return v15

    .line 365
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v15}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-ne v1, v2, :cond_3

    move v1, v14

    goto :goto_1

    :cond_3
    move v1, v15

    :goto_1
    move v7, v1

    .line 366
    .local v7, "isAirplaneModeOn":Z
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v6

    .line 367
    .local v6, "isRoaming":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInitialRegistrationIsReady: APM ON ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], Roamimg ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v11, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v5

    iget-object v4, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    move-object/from16 v1, p1

    move-object/from16 v16, v3

    move v3, v7

    move-object/from16 v17, v4

    move v4, v6

    move/from16 v18, v6

    .end local v6    # "isRoaming":Z
    .local v18, "isRoaming":Z
    move-object/from16 v6, v17

    move/from16 v17, v7

    .end local v7    # "isAirplaneModeOn":Z
    .local v17, "isAirplaneModeOn":Z
    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lcom/sec/internal/ims/core/RegistrationUtils;->checkInitialRegistrationIsReady(Lcom/sec/internal/ims/core/RegisterTask;Ljava/util/List;ZZZLcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerHandler;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 370
    return v15

    .line 373
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, v13}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isReadyToRegister(I)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_7

    .line 374
    const-string v1, "checkForTryRegister: isReadyToRegister = false"

    invoke-static {v12, v11, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isKeepPdn()Z

    move-result v1

    if-nez v1, :cond_5

    .line 376
    new-array v1, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v1, v15

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v1, v14

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    .line 378
    const-string/jumbo v1, "stopPdnConnectivity. IMS PDN should not be established in this case."

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, v9}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 380
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 385
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegiFailReason()I

    move-result v1

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 386
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->GVN_NOT_READY:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 388
    :cond_6
    return v15

    .line 392
    :cond_7
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v3, v1, v15

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v3, v1, v14

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 394
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    invoke-static {v1, v11, v8}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v2

    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 395
    invoke-static {v1, v11}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCdmConfigured(Lcom/sec/internal/interfaces/ims/IImsFramework;I)Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getOmadmState()Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-eq v1, v4, :cond_8

    move v4, v14

    goto :goto_2

    :cond_8
    move v4, v15

    :goto_2
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 396
    invoke-interface {v1, v11}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasEmergencyCall(I)Z

    move-result v1

    if-nez v1, :cond_9

    move v5, v14

    goto :goto_3

    :cond_9
    move v5, v15

    :goto_3
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    iget-object v7, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    .line 394
    move-object/from16 v1, p1

    move-object/from16 v16, v8

    .end local v8    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .local v16, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    move-object v8, v12

    invoke-static/range {v1 .. v8}, Lcom/sec/internal/ims/core/RegistrationUtils;->checkConfigForInitialRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZZZLcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/NetworkEventController;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 397
    return v15

    .line 401
    :cond_a
    invoke-static {v10, v13}, Lcom/sec/internal/ims/core/RegistrationUtils;->selectPdnType(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v1

    .line 402
    .local v1, "pdn":I
    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setPdnType(I)V

    .line 404
    invoke-static {v11}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    move v14, v15

    :goto_4
    invoke-virtual {v0, v10, v13, v14, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v2

    .line 405
    .local v2, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v0, v9, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->checkServicesForInitialRegistration(Lcom/sec/internal/ims/core/RegisterTask;Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 406
    return v15

    .line 409
    :cond_c
    invoke-virtual {v0, v9, v13, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryInitialRegistration(Lcom/sec/internal/ims/core/RegisterTask;IILjava/util/Set;)Z

    move-result v3

    return v3

    .line 410
    .end local v1    # "pdn":I
    .end local v2    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .restart local v8    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_d
    move-object/from16 v16, v8

    .end local v8    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .restart local v16    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_e

    .line 411
    const-string/jumbo v1, "tryRegister: already registering."

    invoke-static {v12, v11, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 412
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ALREADY_REGISTERING:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 413
    return v15

    .line 415
    :cond_e
    return v14
.end method

.method protected clearTask(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 238
    const-string v0, "RegiMgr"

    const-string v1, "clearTask:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const-string/jumbo v1, "skip clearTask for softphone"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    return-void

    .line 244
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    .line 246
    .local v1, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-nez v1, :cond_1

    .line 247
    return-void

    .line 249
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v2, "removeTask":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/RegisterTask;>;"
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 251
    .local v4, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v6, 0x2a

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 252
    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const-string v6, "SimRefresh"

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    invoke-virtual {p0, v5, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove task: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v5, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 259
    .end local v4    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->removeAll(Ljava/util/Collection;)Z

    .line 261
    return-void
.end method

.method protected deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 4
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "local"    # Z

    .line 1072
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1073
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deregisterInternal: local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1074
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1075
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1077
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1078
    const-string v1, "RegiMgr"

    const-string v2, "deregister: ua is null"

    invoke-static {v1, v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1079
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1080
    const-string v2, "deregister: this task will be deleted. do nothing"

    invoke-static {v1, v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1081
    return-void

    .line 1083
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1084
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_0

    .line 1086
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1088
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 1089
    return-void

    .line 1092
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v1, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 1093
    const-string v1, ""

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 1095
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->setDeregisterTimeout(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1097
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v1, v2, :cond_4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v1, v2, :cond_4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_5

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->needKeepEmergencyTask()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1098
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1101
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1102
    return-void
.end method

.method public initSequentially()V
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/NetworkEventController;->setRegistrationHandler(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->init()V

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 105
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mlegacyPhoneCount:I

    .line 106
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mlegacyPhoneCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "RegiMgr"

    const-string v2, "CMC phone count 0 : need direct onSimReady"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v1, Lcom/sec/internal/helper/AsyncResult;

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 109
    .local v1, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 111
    .end local v1    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_0
    return-void
.end method

.method protected abstract notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V
.end method

.method protected onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZLcom/sec/ims/util/SipError;I)V
    .locals 11
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "requested"    # Z
    .param p3, "error"    # Lcom/sec/ims/util/SipError;
    .param p4, "retryAfter"    # I

    .line 1324
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1325
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeregistered: rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", requested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", retryAfter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keepPdn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isKeepPdn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1325
    invoke-virtual {v1, v0, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1328
    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    const-string v1, "GATE"

    const-string v2, "<GATE-M>IMS_DISABLED</GATE-M>"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    .line 1334
    .local v1, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-nez v1, :cond_1

    .line 1335
    return-void

    .line 1337
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v4, :cond_2

    .line 1341
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setIsRefreshReg(Z)V

    .line 1345
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OFFSET_DEREGI_REASON:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v4

    add-int/2addr v2, v4

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiFailReason(I)V

    .line 1346
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DE-REGISTERED : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1349
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v2

    .line 1350
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-static {v4, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;

    .line 1352
    .local v2, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUpdateRegisteringFlag()V

    .line 1353
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRefreshReg()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_4

    .line 1354
    :cond_3
    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setIsRefreshReg(Z)V

    .line 1357
    :cond_4
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->updateImsIcon(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1359
    const-string v4, "RegiMgr"

    if-eqz v2, :cond_5

    .line 1360
    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiCause(Lcom/sec/ims/util/SipError;)I

    move-result v6

    .line 1361
    .local v6, "deregiReason":I
    new-instance v7, Lcom/sec/ims/ImsRegistrationError;

    .line 1362
    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v8

    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v10

    invoke-direct {v7, v8, v9, v10, v6}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    .line 1361
    invoke-virtual {p0, v2, v5, p1, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    .line 1363
    const/16 v7, 0x20

    if-ne v6, v7, :cond_5

    .line 1364
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    const-string v8, "ImsNotAvailable"

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1365
    const-string v7, "ImsNotAvailable has sent by onDeregistered."

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 1371
    .end local v6    # "deregiReason":I
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mIsNonDDSDeRegRequired:Z

    if-eqz v6, :cond_6

    .line 1372
    const/16 v6, 0xc

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendDeregister(II)V

    .line 1373
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mIsNonDDSDeRegRequired:Z

    .line 1380
    :cond_6
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1381
    iget-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mMoveNextPcscf:Z

    if-eqz v6, :cond_7

    .line 1382
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 1383
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->increasePcscfIdx()V

    .line 1384
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mMoveNextPcscf:Z

    goto :goto_0

    .line 1386
    :cond_7
    const-string v3, "onDeregistered: leave it to EMERGENCY state."

    invoke-static {v4, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1387
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1388
    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setIsRefreshReg(Z)V

    .line 1389
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_8

    .line 1390
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZLcom/sec/ims/util/SipError;I)V

    .line 1392
    :cond_8
    return-void

    .line 1396
    :cond_9
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1397
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 1399
    :cond_a
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isKeepPdn()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1400
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 1402
    :cond_b
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1406
    :goto_1
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 1408
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->removeAdhocProfile(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1411
    if-eqz p2, :cond_c

    .line 1412
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->handleSolicitedDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)V

    goto :goto_2

    .line 1414
    :cond_c
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->handleUnSolicitedDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;I)V

    .line 1418
    :goto_2
    const v3, 0x11010001

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",DEREG:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1418
    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1421
    const-string v3, ""

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 1422
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onDeregistrationDone(Z)V

    .line 1423
    const/16 v3, 0x29

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1424
    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setIsRefreshReg(Z)V

    .line 1426
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZLcom/sec/ims/util/SipError;I)V

    .line 1427
    return-void
.end method

.method protected onForcedUpdateRegistrationRequested(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 1557
    const-string v0, "forced update registration"

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1558
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    .line 1559
    return-void
.end method

.method protected onManualDeregister(IZI)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "explicitDeregi"    # Z
    .param p3, "phoneId"    # I

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManualDeregister: profile id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", explicitDeregi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 717
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    .line 718
    .local v0, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    .line 719
    .local v2, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-eqz v0, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 726
    .local v3, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-static {v3, p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->needToNotifyImsReady(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 727
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v5, "onManualDeregister: notify IMS ready [false]"

    invoke-virtual {v4, p3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 728
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 v5, 0x0

    invoke-interface {v4, v5, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->notifyImsReady(ZI)V

    .line 731
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onManualDeregister: deregistering profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    const-string v4, "ManualDeregi"

    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onManualDeregister(Z)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 735
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/internal/ims/core/-$$Lambda$i2opHGoqbNPbDmOWyoM3OnNJwtw;

    invoke-direct {v4, v2}, Lcom/sec/internal/ims/core/-$$Lambda$i2opHGoqbNPbDmOWyoM3OnNJwtw;-><init>(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 736
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/SlotBasedConfig;->removeExtendedProfile(I)V

    .line 737
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->startSilentEmergency()V

    .line 738
    return-void

    .line 720
    .end local v3    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    :goto_0
    const-string v3, "onManualDeregister: profile not found."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->startSilentEmergency()V

    .line 722
    return-void
.end method

.method protected onManualRegister(Lcom/sec/ims/settings/ImsProfile;I)V
    .locals 16
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 644
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManualRegister: profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v11, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 645
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 646
    .local v12, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v13

    .line 647
    .local v13, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-eqz v12, :cond_9

    if-nez v13, :cond_0

    goto/16 :goto_1

    .line 651
    :cond_0
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v9, v2, v11}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->serviceStartDeterminer(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/util/List;I)V

    .line 654
    const/4 v0, 0x0

    .line 655
    .local v0, "taskExists":Z
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v14, v0

    .end local v0    # "taskExists":Z
    .local v14, "taskExists":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 656
    .local v0, "rt":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 657
    .local v3, "curProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 658
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 659
    const-string v4, "Task with profile name already exists, update imsprofile"

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 661
    const/4 v4, 0x1

    .line 663
    .end local v14    # "taskExists":Z
    .local v4, "taskExists":Z
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    const/4 v6, 0x4

    const/16 v7, 0x8

    if-eq v5, v6, :cond_1

    .line 664
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 665
    :cond_1
    const-string v5, "onManualRegister: releaseThrottle, resetRetry"

    invoke-static {v1, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v5, v0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 669
    iget-object v5, v0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetRetry()V

    .line 672
    iget-object v5, v0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    .line 676
    .end local v0    # "rt":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v3    # "curProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    move v14, v4

    .end local v4    # "taskExists":Z
    .restart local v14    # "taskExists":Z
    :cond_3
    goto :goto_0

    .line 678
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcom/sec/internal/ims/core/SlotBasedConfig;->addExtendedProfile(ILcom/sec/ims/settings/ImsProfile;)V

    .line 681
    new-instance v15, Lcom/sec/internal/ims/core/RegisterTask;

    iget-object v3, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v5, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    iget-object v6, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v7, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/RegisterTask;-><init>(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/PdnController;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    .line 683
    .local v0, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 684
    :cond_5
    iget-object v1, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v11}, Lcom/sec/internal/interfaces/ims/IImsFramework;->notifyImsReady(ZI)V

    .line 685
    if-nez v14, :cond_6

    .line 686
    invoke-virtual {v13, v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_6
    invoke-virtual {v9, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    .line 692
    :cond_7
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 694
    iget-object v1, v9, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v1

    .line 695
    .local v1, "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    if-eqz v1, :cond_8

    .line 696
    const/4 v2, 0x0

    invoke-interface {v1, v11, v2}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    .line 699
    .end local v1    # "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    :cond_8
    return-void

    .line 648
    .end local v0    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v14    # "taskExists":Z
    :cond_9
    :goto_1
    return-void
.end method

.method onPendingUpdateRegistration()V
    .locals 8

    .line 1467
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1469
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1470
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1471
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v5, "RegiMgr"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    if-eqz v3, :cond_2

    .line 1472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPendingUpdateRegistration: forced "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iput-boolean v6, v2, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    .line 1474
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->hasPendingEpdgHandover()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1475
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingEpdgHandover(Z)V

    .line 1476
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 1478
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isImmediatePendingUpdate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1479
    invoke-virtual {p0, v2, v7, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    goto/16 :goto_2

    .line 1481
    :cond_1
    invoke-virtual {p0, v2, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto/16 :goto_2

    .line 1483
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_5

    iget-boolean v3, v2, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    if-eqz v3, :cond_5

    .line 1484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPendingUpdateRegistration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iput-boolean v6, v2, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    .line 1486
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->hasPendingEpdgHandover()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1487
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingEpdgHandover(Z)V

    .line 1488
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 1490
    :cond_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isImmediatePendingUpdate()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1491
    invoke-virtual {p0, v2, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    goto :goto_2

    .line 1493
    :cond_4
    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_2

    .line 1495
    :cond_5
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_6

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->hasPendingDeregister()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPendingDeRegistration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingDeregister(Z)V

    .line 1498
    invoke-virtual {p0, v2, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1500
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_6
    :goto_2
    goto/16 :goto_1

    .line 1469
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1502
    .end local v0    # "phoneId":I
    :cond_8
    return-void
.end method

.method protected onRefreshRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
    .locals 5
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "handle"    # I

    .line 1562
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshRegistration: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1564
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1565
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "This model is not for Dual IMS."

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1566
    return-void

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_3

    .line 1570
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1571
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1572
    .local v3, "t":Lcom/sec/internal/ims/core/RegisterTask;
    iget-object v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    if-eq v4, p2, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 1573
    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount(I)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasEmergencyCall(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasActiveCall(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1574
    const-string v1, "Active VoLTE call exists on this slot. Try to de-regi."

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1575
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1576
    return-void

    .line 1578
    .end local v3    # "t":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_1
    goto :goto_1

    .line 1570
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1582
    .end local v0    # "phoneId":I
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "onRefreshRegistration: No de-registration has triggered"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1583
    return-void
.end method

.method protected onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;I)V
    .locals 9
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "handle"    # I
    .param p3, "error"    # Lcom/sec/ims/util/SipError;
    .param p4, "retryAfter"    # I

    .line 1189
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1190
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegisterError: error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " retryAfter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",REG ERR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x11010009

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1194
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 1195
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->UNAUTHORIZED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p3}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1197
    return-void

    .line 1204
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const-string v4, "RegiMgr"

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v2, v3, :cond_4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRefreshReg()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1209
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1210
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 1212
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 1205
    :cond_4
    :goto_0
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setIsRefreshReg(Z)V

    .line 1207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegisterError: mIsRefreshReg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRefreshReg()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1216
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->removeAdhocProfile(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1219
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->makeThrottle(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1222
    :try_start_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1223
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    .line 1224
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p3}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1225
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, p3, p4, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V

    .line 1226
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_6

    .line 1228
    const-string v1, "onRegisterError: Emergency Registration timed out. Retry."

    invoke-static {v4, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;I)V

    .line 1229
    return-void

    .line 1232
    :cond_5
    :try_start_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_6

    .line 1237
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, p3, p4, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V

    .line 1238
    const-string v1, "onRegisterError: Emergency Registration Error Retry Infinitely."

    invoke-static {v4, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1284
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;I)V

    .line 1239
    return-void

    .line 1242
    :cond_6
    :try_start_2
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->sendEmergencyRegistrationFailed(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1284
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;I)V

    .line 1244
    return-void

    .line 1246
    :cond_7
    :try_start_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, p3, p4, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V

    .line 1249
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureType()I

    move-result v2

    .line 1250
    .local v2, "deregiReason":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getDetailedDeregiReason(I)I

    move-result v3

    .line 1251
    .local v3, "detailedDeregiReason":I
    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiCause(Lcom/sec/ims/util/SipError;)I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_8

    .line 1252
    const/16 v2, 0x20

    .line 1254
    :cond_8
    const/16 v4, 0x10

    if-eq v2, v4, :cond_9

    .line 1255
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    const-string v5, "ImsNotAvailable"

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1258
    :cond_9
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v4

    .line 1259
    .local v4, "epdgState":Z
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 1260
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v5

    move v4, v5

    .line 1263
    :cond_a
    invoke-static {}, Lcom/sec/ims/ImsRegistration;->getBuilder()Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 1264
    invoke-virtual {v5, p2}, Lcom/sec/ims/ImsRegistration$Builder;->setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/ims/settings/ImsProfile;

    .line 1265
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 1266
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 1267
    invoke-virtual {v5, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 1268
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 1269
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getUuid(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 1270
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v6

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {p0, v0, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getInstanceId(IILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 1271
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 1272
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setRegiRat(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 1273
    invoke-virtual {v5, v0}, Lcom/sec/ims/ImsRegistration$Builder;->setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 1274
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration$Builder;->build()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 1276
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    new-instance v6, Lcom/sec/ims/ImsRegistrationError;

    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v7

    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v3, v2}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v5, v1, p1, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    .line 1279
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1280
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->reportRegistrationCount(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REGISTRATION FAILED : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1284
    .end local v2    # "deregiReason":I
    .end local v3    # "detailedDeregiReason":I
    .end local v4    # "epdgState":Z
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;I)V

    .line 1285
    nop

    .line 1286
    return-void

    .line 1284
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;I)V

    .line 1285
    throw v1
.end method

.method protected onRegistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 8
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1105
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1106
    .local v0, "phoneId":I
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1108
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "onRegistered: Failed to process. UA has already removed"

    invoke-virtual {v1, v0, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1109
    return-void

    .line 1110
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->isUserAgentInRegistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1112
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "onRegistered: Failed to process. UA is not registered!"

    invoke-virtual {v1, v0, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1113
    return-void

    .line 1116
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1117
    .local v1, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration;->setRegiRat(I)V

    .line 1118
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration;->setCurrentRat(I)V

    .line 1120
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 1121
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-static {v4, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->addImsRegistration(ILcom/sec/ims/ImsRegistration;)V

    .line 1123
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRegistered: RAT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1123
    invoke-virtual {v3, v0, p1, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1125
    const/high16 v3, 0x11010000

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",REG OK:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->convertServiceSetToHex(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1125
    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1128
    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>IMS_ENABLED_PS_IND_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ril.ims.ltevoicesupport"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GATE"

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1135
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUpdateRegisteringFlag()V

    .line 1136
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setIsRefreshReg(Z)V

    .line 1139
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    .line 1140
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getRemoteUriType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v7

    invoke-interface {v5, v0, v6, v7}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->getRcsNetworkUriType(ILjava/lang/String;Z)Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v5

    .line 1139
    invoke-virtual {v4, v1, v5}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->updateUriGenerator(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/util/ImsUri$UriType;)V

    .line 1141
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->updateImsIcon(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1143
    new-instance v4, Lcom/sec/ims/ImsRegistrationError;

    invoke-direct {v4}, Lcom/sec/ims/ImsRegistrationError;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    .line 1146
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1147
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1148
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1149
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setResultMessage(Landroid/os/Message;)V

    .line 1155
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1156
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->saveRegisteredImpu(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    goto :goto_0

    .line 1158
    :cond_4
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mAresLookupRequired:Z

    .line 1161
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationDone()V

    .line 1163
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DSDS_DI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_5

    .line 1164
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    sget v7, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1165
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    sget v7, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1167
    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1169
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 1173
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1174
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiRequestType()Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    if-eq v4, v5, :cond_6

    .line 1175
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->reportRegistrationCount(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1177
    :cond_6
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->reportDualImsStatus(I)V

    .line 1178
    const-string v4, "REGISTERED"

    invoke-static {p1, v4}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1180
    const-string v4, ""

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 1181
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 1184
    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 1185
    const/16 v3, 0x29

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1186
    return-void
.end method

.method protected onSubscribeError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)V
    .locals 4
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 1552
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSubscribeError: error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1553
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSubscribeError(ILcom/sec/ims/util/SipError;)V

    .line 1554
    return-void
.end method

.method protected registerInternal(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Ljava/util/Set;)V
    .locals 31
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "currentPcscfIp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 884
    .local p3, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v14

    .line 885
    .local v14, "phoneId":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    const-string v13, "RegiMgr"

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v1, v2, :cond_1

    .line 886
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_0

    .line 887
    const-string/jumbo v1, "registerInternal: skip re-register during deregistration"

    invoke-static {v13, v14, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 888
    return-void

    .line 891
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v2, "registerInternal: re-register is not allowed if not registered. Delete UA first."

    invoke-virtual {v1, v14, v15, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 892
    return-void

    .line 896
    :cond_1
    invoke-virtual {v0, v14}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v12

    .line 897
    .local v12, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    invoke-interface {v1, v15, v12}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->doRcsConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 898
    const-string v1, "RCS auto-configuration triggered. Stop."

    invoke-static {v13, v14, v15, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 899
    return-void

    .line 903
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getPrivateUserIdentity(Lcom/sec/internal/ims/core/RegisterTask;)Ljava/lang/String;

    move-result-object v16

    .line 905
    .local v16, "impi":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v11

    .line 907
    .local v11, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v14, v1, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getInstanceId(IILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "instanceId":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 909
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getDuid()Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "mdmnId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 911
    move-object v1, v2

    move-object v10, v1

    goto :goto_0

    .line 915
    .end local v2    # "mdmnId":Ljava/lang/String;
    :cond_3
    move-object v10, v1

    .end local v1    # "instanceId":Ljava/lang/String;
    .local v10, "instanceId":Ljava/lang/String;
    :goto_0
    const-string v1, ""

    .line 916
    .local v1, "cmcSaServerUrl":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-eqz v2, :cond_4

    .line 917
    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcSaServerUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_1

    .line 916
    :cond_4
    move-object/from16 v17, v1

    .line 920
    .end local v1    # "cmcSaServerUrl":Ljava/lang/String;
    .local v17, "cmcSaServerUrl":Ljava/lang/String;
    :goto_1
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 921
    .local v9, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v9, :cond_5

    .line 922
    return-void

    .line 926
    :cond_5
    invoke-virtual {v0, v15, v9}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getPublicUserIdentity(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v8

    .line 927
    .local v8, "impu":Ljava/lang/String;
    invoke-virtual {v0, v15, v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->validateImpu(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 928
    return-void

    .line 932
    :cond_6
    move-object/from16 v7, p2

    invoke-virtual {v0, v15, v7, v14}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getInterfaceName(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 935
    .local v18, "ifacename":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getSipUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1, v14}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->buildUserAgentString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/sec/ims/settings/ImsProfile;->setSipUserAgent(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    .line 940
    .local v6, "pdnType":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object v5

    .line 941
    .local v5, "reason":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 942
    const-string v1, ""

    invoke-virtual {v15, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_7

    .line 944
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setUpdateRegistering(Z)V

    .line 946
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setPendingUpdate(Z)V

    .line 947
    invoke-virtual {v15, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setHasForcedPendingUpdate(Z)V

    .line 948
    invoke-virtual {v15, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingEpdgHandover(Z)V

    .line 949
    invoke-virtual {v15, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setImmediatePendingUpdate(Z)V

    .line 951
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerInternal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v15, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getFilteredReason()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 953
    .local v2, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",RMSVC,"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x11000000

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 954
    .end local v2    # "str":Ljava/lang/String;
    const/4 v4, 0x0

    goto :goto_2

    .line 955
    :cond_8
    const v1, 0x11020001

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",REGI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 957
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 958
    .local v1, "rcsBundle":Landroid/os/Bundle;
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isAutoConfigNeeded(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 959
    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-interface {v2, v11, v3, v6, v14}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->getRcsConfigForUserAgent(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/constants/Mno;II)Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_3

    .line 958
    :cond_9
    move-object/from16 v20, v1

    .line 962
    .end local v1    # "rcsBundle":Landroid/os/Bundle;
    .local v20, "rcsBundle":Landroid/os/Bundle;
    :goto_3
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-direct {v0, v11, v14}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getOwnCapabilities(Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v21

    .line 963
    invoke-virtual {v0, v11, v14}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getHomeNetworkDomain(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v0, v14, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getUuid(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v23

    iget-object v4, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 964
    invoke-virtual {v0, v14}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isVoWiFiSupported(I)Z

    move-result v24

    .line 962
    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object/from16 v19, v4

    move-object/from16 v4, p2

    move-object/from16 v25, v5

    .end local v5    # "reason":Ljava/lang/String;
    .local v25, "reason":Ljava/lang/String;
    move-object/from16 v5, p3

    move/from16 v26, v6

    .end local v6    # "pdnType":I
    .local v26, "pdnType":I
    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v21, v8

    .end local v8    # "impu":Ljava/lang/String;
    .local v21, "impu":Ljava/lang/String;
    move-object/from16 v22, v9

    .end local v9    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .local v22, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    move-object/from16 v9, v16

    move-object/from16 v27, v10

    .end local v10    # "instanceId":Ljava/lang/String;
    .local v27, "instanceId":Ljava/lang/String;
    move-object/from16 v28, v11

    .end local v11    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .local v28, "profile":Lcom/sec/ims/settings/ImsProfile;
    move-object/from16 v11, v23

    move-object/from16 v23, v12

    .end local v12    # "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    .local v23, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    move-object/from16 v12, v17

    move-object/from16 v29, v13

    move-object/from16 v13, v19

    move/from16 v30, v14

    .end local v14    # "phoneId":I
    .local v30, "phoneId":I
    move-object/from16 v14, v20

    move/from16 v15, v24

    invoke-interface/range {v1 .. v15}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->registerInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Z)Z

    move-result v1

    if-nez v1, :cond_b

    .line 965
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v2, "registerInternal: failed to create UserAgent."

    move-object/from16 v3, p1

    move/from16 v4, v30

    .end local v30    # "phoneId":I
    .local v4, "phoneId":I
    invoke-virtual {v1, v4, v3, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->clearUserAgent()V

    .line 967
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    move/from16 v2, v26

    .end local v26    # "pdnType":I
    .local v2, "pdnType":I
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 968
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_4

    .line 970
    :cond_a
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_4

    .line 962
    .end local v2    # "pdnType":I
    .end local v4    # "phoneId":I
    .restart local v26    # "pdnType":I
    .restart local v30    # "phoneId":I
    :cond_b
    move-object/from16 v3, p1

    move/from16 v2, v26

    move/from16 v4, v30

    .line 974
    .end local v26    # "pdnType":I
    .end local v30    # "phoneId":I
    .restart local v2    # "pdnType":I
    .restart local v4    # "phoneId":I
    :goto_4
    invoke-static/range {v28 .. v28}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 975
    const-string/jumbo v1, "start p2p in registerInternal"

    move-object/from16 v5, v29

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 977
    move-object/from16 v1, v16

    .line 978
    .local v1, "lineId":Ljava/lang/String;
    const-string v6, "@"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 979
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 981
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lineId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v27

    .end local v27    # "instanceId":Ljava/lang/String;
    .local v7, "instanceId":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v5, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v5

    invoke-interface {v5, v7, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->startP2p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 976
    .end local v1    # "lineId":Ljava/lang/String;
    .end local v7    # "instanceId":Ljava/lang/String;
    .restart local v27    # "instanceId":Ljava/lang/String;
    :cond_d
    move-object/from16 v7, v27

    .end local v27    # "instanceId":Ljava/lang/String;
    .restart local v7    # "instanceId":Ljava/lang/String;
    goto :goto_5

    .line 974
    .end local v7    # "instanceId":Ljava/lang/String;
    .restart local v27    # "instanceId":Ljava/lang/String;
    :cond_e
    move-object/from16 v7, v27

    .line 986
    .end local v27    # "instanceId":Ljava/lang/String;
    .restart local v7    # "instanceId":Ljava/lang/String;
    :goto_5
    return-void
.end method

.method public sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 1591
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifySendReRegisterRequested(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 1592
    return-void
.end method

.method protected setDelayedDeregisterTimerRunning(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "delayedDeregisterTimerRunning"    # Z

    .line 1595
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel-video"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1596
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setDelayedDeregisterTimerRunning(IZ)V

    .line 1598
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string/jumbo v1, "smsip"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1599
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    move-result-object v0

    .line 1600
    .local v0, "ssm":Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->setDelayedDeregisterTimerRunning(IZ)V

    .line 1602
    .end local v0    # "ssm":Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
    :cond_2
    return-void
.end method

.method public suspended(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "suspended"    # Z

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->suspended(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 120
    :cond_0
    if-nez p2, :cond_2

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 128
    :cond_2
    if-nez p2, :cond_4

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_0

    .line 131
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_4

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->updateCapabilities(I)V

    .line 135
    :cond_4
    :goto_0
    return-void
.end method

.method protected tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "local"    # Z
    .param p3, "keepPdn"    # Z

    .line 1049
    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setKeepPdn(Z)V

    .line 1050
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    .line 1052
    .local v0, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v1

    .line 1053
    .local v1, "convertedProfileId":I
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;

    .line 1054
    .local v2, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v2, :cond_0

    .line 1055
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/ImsRegistration;->setDeregiReason(I)V

    .line 1056
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 1060
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNeedDelayedDeregister()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1061
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    if-eqz v0, :cond_2

    .line 1062
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getSuspendState()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    .line 1068
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 1069
    return-void

    .line 1063
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->setNeedDelayedDeregister(Z)V

    .line 1064
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->requestDelayedDeRegister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZJ)V

    .line 1065
    return-void
.end method

.method protected tryEmergencyRegister(ILcom/sec/ims/settings/ImsProfile;Landroid/os/Message;Z)V
    .locals 10
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "isNoSim"    # Z

    .line 1023
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 1024
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1025
    .local v4, "r":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 1026
    const-string v0, "RegiMgr"

    const-string/jumbo v1, "startEmergencyRegistration: Emergency is supported via IMS PDN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1028
    return-void

    .line 1024
    .end local v4    # "r":Lcom/sec/ims/ImsRegistration;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1034
    :cond_1
    new-instance v9, Lcom/sec/internal/ims/core/RegisterTask;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-object v0, v9

    move-object v1, p2

    move-object v2, p0

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/RegisterTask;-><init>(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/PdnController;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    .line 1035
    .local v0, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setResultMessage(Landroid/os/Message;)V

    .line 1036
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 1038
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_2

    .line 1039
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 1042
    :cond_2
    if-eqz p4, :cond_4

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1043
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->configure(I)V

    .line 1045
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v6, 0x76

    invoke-virtual {v5, v6, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1046
    return-void
.end method

.method protected tryEmergencyRegister(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 702
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "RegiMgr"

    const-string/jumbo v2, "tryEmergencyRegister:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 705
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    .line 706
    .local v0, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-nez v0, :cond_0

    .line 707
    return-void

    .line 710
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    .line 713
    return-void
.end method

.method protected tryInitialRegistration(Lcom/sec/internal/ims/core/RegisterTask;IILjava/util/Set;)Z
    .locals 16
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "rat"    # I
    .param p3, "pdn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            "II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 419
    .local p4, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    .line 420
    .local v4, "phoneId":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    .line 423
    .local v5, "profile":Lcom/sec/ims/settings/ImsProfile;
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 424
    invoke-direct/range {p0 .. p4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryInitialP2pRegistration(Lcom/sec/internal/ims/core/RegisterTask;IILjava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 425
    return v7

    .line 429
    :cond_0
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v6, v3, v1}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v8, p4

    goto/16 :goto_2

    .line 430
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isSuspended()Z

    move-result v6

    const/4 v8, 0x0

    const-string v9, "RegiMgr"

    if-eqz v6, :cond_3

    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tryRegister: network is suspended "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ". try Register once network is resumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v4, v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 432
    sget-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NETWORK_SUSPENDED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 433
    return v8

    .line 436
    :cond_3
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 437
    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setKeepPdn(Z)V

    .line 440
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v3, :cond_5

    .line 441
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "tryRegister: startTimsTimer connected pdn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v6, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 443
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v10, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v6

    const-string v10, "InternetPdnRequest"

    if-ne v6, v7, :cond_4

    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 447
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 455
    :cond_5
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPhoneIdForStartConnectivity(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)I

    move-result v10

    invoke-virtual {v6, v3, v1, v10}, Lcom/sec/internal/ims/core/PdnController;->startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I

    .line 456
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/core/PdnController;->getInterfaceName(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, "iface":Ljava/lang/String;
    iget-object v10, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v10, v1, v6}, Lcom/sec/internal/ims/core/NetworkEventController;->getPcscfIpAddress(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 458
    .local v10, "pcscf":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 459
    const-string/jumbo v11, "tryRegister: pcscf is null. return.."

    invoke-static {v9, v4, v1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 460
    sget-object v11, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->EMPTY_PCSCF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 461
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v11

    sget-object v12, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v11, v12, :cond_6

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v11

    if-eqz v11, :cond_6

    .line 463
    const-string/jumbo v7, "tryRegister: pcscf is null. return here for dns query retry"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return v8

    .line 467
    :cond_6
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_8

    .line 468
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v11

    sget-object v13, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v11, v13, :cond_7

    .line 471
    iget-object v11, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v13, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0x3e8

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 473
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->sendEmergencyRegistrationFailed(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 476
    :cond_8
    :goto_1
    iget-object v11, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v13, "regi failed due to empty p-cscf"

    invoke-virtual {v11, v4, v1, v13}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v11

    const/16 v13, 0xb

    if-ne v11, v13, :cond_b

    .line 485
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v11

    sget-object v13, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v11, v13, :cond_9

    .line 486
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v11

    invoke-virtual {v0, v11, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 487
    sget-object v11, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v1, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 488
    const/16 v11, 0x2a

    invoke-virtual {v1, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 489
    const/4 v11, -0x1

    sget-object v13, Lcom/sec/internal/constants/ims/SipErrorBase;->EMPTY_PCSCF:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, v1, v11, v13, v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;I)V

    .line 493
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v11

    new-array v13, v12, [Lcom/sec/internal/constants/Mno;

    sget-object v14, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v14, v13, v8

    sget-object v14, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v14, v13, v7

    invoke-virtual {v11, v13}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 494
    const-string/jumbo v11, "tryRegister: pcscf is null. Notify registration state to CP."

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {v0, v1, v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 496
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 497
    const-string/jumbo v11, "tryRegister: pcscf is null. fresh icon once."

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isSuspended()Z

    move-result v13

    invoke-virtual {v11, v13}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 503
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v11

    new-array v12, v12, [Lcom/sec/internal/constants/Mno;

    sget-object v13, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v13, v12, v8

    sget-object v13, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    aput-object v13, v12, v7

    invoke-virtual {v11, v12}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x14

    if-ne v2, v11, :cond_b

    .line 504
    const-string/jumbo v11, "tryRegister: pcscf is null. Notify registration state to CP in NR rat."

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {v0, v1, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 508
    :cond_b
    return v8

    .line 511
    :cond_c
    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "tryInitialRegistration on pdn: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ". Register now."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v1, v9}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 512
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InitialRegi : rat = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 513
    move-object/from16 v8, p4

    invoke-virtual {v0, v1, v10, v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->registerInternal(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Ljava/util/Set;)V

    .line 514
    .end local v6    # "iface":Ljava/lang/String;
    .end local v10    # "pcscf":Ljava/lang/String;
    nop

    .line 519
    return v7

    .line 429
    :cond_d
    move-object/from16 v8, p4

    .line 516
    :goto_2
    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryStartPdnConnectivity(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/ims/settings/ImsProfile;II)Z

    move-result v6

    return v6
.end method

.method protected tryRegister(I)V
    .locals 11
    .param p1, "phoneId"    # I

    .line 264
    const-string v0, "RegiMgr"

    const-string/jumbo v1, "tryRegister:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->pendingHasEmergencyTask(ILcom/sec/internal/constants/Mno;)Z

    move-result v1

    .line 266
    .local v1, "hasEmergencyTask":Z
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 268
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/UserEventController;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const-string v2, "Device is getting shutdown"

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    return-void

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    const-string v2, "Sim refresh is ongoing. retry after 2s"

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 276
    return-void

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->logTask()V

    .line 281
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 282
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    .line 283
    .local v3, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 284
    .local v5, "task":Lcom/sec/internal/ims/core/RegisterTask;
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    .line 285
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v5, v7, p1}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->pendingRcsRegister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v10, 0x6b

    .line 286
    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v9

    .line 284
    invoke-static {v5, v6, v8, v9}, Lcom/sec/internal/ims/core/RegistrationUtils;->needToSkipTryRegister(Lcom/sec/internal/ims/core/RegisterTask;ZZZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 287
    goto :goto_0

    .line 290
    :cond_3
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRcsVolteSingleRegistration()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    move-result-object v6

    .line 291
    .local v6, "rcsVolteSingleRegistration":Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    if-eq v6, v8, :cond_4

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v8, v9, :cond_4

    .line 292
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    .line 293
    const-string/jumbo v9, "rcsVolteSingleRegistration"

    invoke-static {v9, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 294
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 292
    invoke-static {v8, v9, v10}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->valueOf(I)Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    move-result-object v8

    .line 295
    .local v8, "newRcsVolteSingleRegistration":Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setRcsVolteSingleRegistration(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;)V

    .line 297
    invoke-direct {p0, v8, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isSingleReg(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 298
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    .line 299
    .local v9, "rcsProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->enableRcsOverIms(Lcom/sec/ims/settings/ImsProfile;)V

    .line 301
    goto/16 :goto_0

    .line 305
    .end local v8    # "newRcsVolteSingleRegistration":Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    .end local v9    # "rcsProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_4
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->hasEmergencyTaskInPriority(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 306
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, p1, v8, v9}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 307
    goto/16 :goto_0

    .line 311
    :cond_5
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v1, :cond_6

    .line 312
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v7

    iget-boolean v7, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v7, :cond_6

    .line 313
    const-string/jumbo v4, "tryRegister: pending EM regi for the sequential regi of Lab TC."

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    goto :goto_2

    .line 317
    .end local v5    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v6    # "rcsVolteSingleRegistration":Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    :cond_6
    goto/16 :goto_0

    .line 318
    :cond_7
    :goto_2
    return-void
.end method

.method protected tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 321
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->checkForTryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 322
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegiFailReason()I

    move-result v0

    .line 323
    .local v0, "regiFailReason":I
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getLastRegiFailReason()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 326
    const v2, 0x11010002

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",REG FAIL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->valueOf(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 330
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->valueOf(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    move-result-object v2

    .line 331
    .local v2, "reason":Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;
    const/4 v3, 0x6

    new-array v3, v3, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    aput-object v4, v3, v1

    const/4 v1, 0x3

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ROAMING_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    aput-object v4, v3, v1

    const/4 v1, 0x4

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->DATA_RAT_IS_NOT_LTE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    aput-object v4, v3, v1

    const/4 v1, 0x5

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ONGOING_OTA:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->isOneOf([Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT_TRIGGERED : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 336
    :cond_1
    return v5

    .line 340
    .end local v0    # "regiFailReason":I
    .end local v2    # "reason":Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;
    :cond_2
    return v1
.end method

.method protected updateRegistration(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, "result":Z
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 751
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 752
    goto :goto_0

    .line 754
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 755
    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_1

    .line 757
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    .line 759
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :goto_1
    goto :goto_0

    .line 760
    :cond_2
    return v0
.end method

.method protected updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "isForceReRegi"    # Z

    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    move-result v0

    .line 766
    .local v0, "triggered":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updatePani(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 767
    return v0
.end method

.method protected updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z
    .locals 18
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "isForceReRegi"    # Z
    .param p3, "immediately"    # Z

    .line 775
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    .line 776
    .local v5, "phoneId":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    .line 777
    .local v4, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v12

    invoke-virtual {v6, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v13

    iget-object v14, v6, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v15, v6, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v0, v6, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 778
    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v16

    iget-object v0, v6, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mContext:Landroid/content/Context;

    .line 777
    move v10, v5

    move-object v11, v4

    move-object/from16 v17, v0

    invoke-static/range {v10 .. v17}, Lcom/sec/internal/ims/core/RegistrationUtils;->findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;ZLcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;ILandroid/content/Context;)I

    move-result v10

    .line 780
    .local v10, "rat":I
    iget-object v0, v6, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRegistration: reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isForceReRegi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", immediately="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v7, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 783
    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v11

    .line 784
    .local v11, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    const-string v0, "RegiMgr"

    const/4 v1, 0x0

    if-nez v11, :cond_0

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRegistration: profile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", NetworkEvent is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 786
    return v1

    .line 789
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    iget-boolean v3, v11, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-interface {v2, v10, v3, v8, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNeedToPendingUpdateRegistration(IZZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    iget-object v0, v6, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v2, "updateRegistration: pending"

    invoke-virtual {v0, v5, v7, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 791
    return v1

    .line 794
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    iget v3, v11, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-interface {v2, v10, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->determineDeRegistration(II)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v2, v3, :cond_2

    move-object v12, v4

    move v13, v5

    goto :goto_0

    .line 799
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isLocationInfoLoaded(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 800
    const-string v2, "location info is not loaded"

    invoke-static {v0, v5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 801
    return v1

    .line 804
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v12, v4

    .end local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .local v12, "profile":Lcom/sec/ims/settings/ImsProfile;
    move v4, v10

    move v13, v5

    .end local v5    # "phoneId":I
    .local v13, "phoneId":I
    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->compareSvcAndDoUpdateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZILcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    return v0

    .line 794
    .end local v12    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v13    # "phoneId":I
    .restart local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v5    # "phoneId":I
    :cond_4
    move-object v12, v4

    move v13, v5

    .line 795
    .end local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v5    # "phoneId":I
    .restart local v12    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v13    # "phoneId":I
    :goto_0
    iget-object v0, v6, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "Stop updateRegistration"

    invoke-virtual {v0, v13, v7, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 796
    return v1
.end method
