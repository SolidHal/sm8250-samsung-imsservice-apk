.class public Lcom/sec/internal/ims/core/RegistrationManagerBase;
.super Lcom/sec/internal/ims/core/RegistrationManagerInternal;
.source "RegistrationManagerBase.java"


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;)V
    .locals 14
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "pc"    # Lcom/sec/internal/ims/core/PdnController;
    .param p6, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p7, "cmcAm"    # Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .param p8, "rcsPm"    # Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
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

    .line 89
    .local p5, "smList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/ISimManager;>;"
    move-object v12, p0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;-><init>(Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;)V

    .line 91
    new-instance v9, Lcom/sec/internal/ims/core/NetworkEventController;

    iget-object v8, v12, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/NetworkEventController;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/helper/os/ITelephonyManager;Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v9, v12, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    .line 92
    new-instance v6, Lcom/sec/internal/ims/core/UserEventController;

    iget-object v5, v12, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    move-object v0, v6

    move-object v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/UserEventController;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v6, v12, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    .line 93
    new-instance v13, Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v9, v12, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    iget-object v10, v12, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    iget-object v11, v12, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p3

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/ims/core/NetworkEventController;Lcom/sec/internal/ims/core/UserEventController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    iput-object v13, v12, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 94
    return-void
.end method

.method private handleDdsChangeOnDualIms()V
    .locals 7

    .line 842
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(I)Z

    .line 845
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    .line 846
    .local v0, "phoneId":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 847
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 848
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_0

    .line 849
    const-string v1, "DDS change"

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 850
    const/16 v1, 0x23

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 851
    invoke-virtual {p0, v2, v6, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 852
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 853
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    const-string v3, "RegiMgr"

    const-string v4, "onDefaultDataSubscriptionChanged: Cmc deregister"

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 854
    goto :goto_1

    .line 856
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 857
    :cond_1
    :goto_1
    return-void
.end method

.method private handleDdsChangeOnSingleIms()V
    .locals 12

    .line 784
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 785
    .local v0, "dds":I
    const-string v1, "RegiMgr"

    const-string v2, "onDefaultDataSubscriptionChanged"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 788
    const/4 v2, 0x0

    .local v2, "phoneId":I
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_4

    .line 789
    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/core/RegisterTask;

    .line 790
    .local v6, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/4 v7, 0x2

    new-array v8, v7, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v9, v8, v4

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v9, v8, v5

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 791
    const-string v8, "DDS change"

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 792
    const/16 v8, 0x23

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 793
    invoke-virtual {p0, v6, v5, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 794
    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 797
    :cond_0
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v8

    if-nez v8, :cond_1

    .line 798
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v8

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v4

    sget-object v10, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v5

    sget-object v10, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    aput-object v10, v9, v7

    const/4 v10, 0x3

    sget-object v11, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    sget-object v11, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    aput-object v11, v9, v10

    const/4 v10, 0x5

    sget-object v11, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    aput-object v11, v9, v10

    const/4 v10, 0x6

    sget-object v11, Lcom/sec/internal/constants/Mno;->WINDTRE:Lcom/sec/internal/constants/Mno;

    aput-object v11, v9, v10

    const/4 v10, 0x7

    sget-object v11, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 800
    :cond_1
    new-array v7, v7, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v4

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v5

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 801
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v7

    invoke-virtual {p0, v7, v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 802
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 805
    .end local v6    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_2
    goto/16 :goto_1

    .line 788
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 808
    .end local v2    # "phoneId":I
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v6, 0x14

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 809
    .local v3, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v7

    .line 810
    .local v7, "phoneId":I
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v8, v7}, Lcom/sec/internal/ims/core/PdnController;->unRegisterPhoneStateListener(I)V

    .line 812
    if-ne v7, v0, :cond_5

    .line 813
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v8, v7}, Lcom/sec/internal/ims/core/PdnController;->registerPhoneStateListener(I)V

    .line 814
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 815
    new-instance v8, Lcom/sec/internal/helper/AsyncResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v10, v9, v10}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 816
    .local v8, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v10, v6, v8}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 817
    .end local v8    # "ar":Lcom/sec/internal/helper/AsyncResult;
    goto :goto_3

    .line 819
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDefaultDataSubscriptionChanged: reset NetworkEvent slot["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 820
    invoke-static {v7}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    new-instance v8, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    invoke-direct {v8}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>()V

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 821
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/core/PdnController;->resetNetworkState(I)V

    .line 824
    :cond_6
    :goto_3
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v6

    .line 825
    .local v6, "iconManager":Lcom/sec/internal/ims/core/ImsIconManager;
    if-eqz v6, :cond_8

    .line 826
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/ImsIconManager;->unRegisterPhoneStateListener()V

    .line 828
    if-ne v7, v0, :cond_7

    .line 829
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/ImsIconManager;->registerPhoneStateListener()V

    .line 831
    :cond_7
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/ImsIconManager;->updateIconWithDDSChange()V

    .line 833
    .end local v3    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v6    # "iconManager":Lcom/sec/internal/ims/core/ImsIconManager;
    .end local v7    # "phoneId":I
    :cond_8
    goto :goto_2

    .line 835
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 837
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    .line 838
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v1, v5}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setDualSimRcsAutoConfig(Z)V

    .line 839
    return-void
.end method

.method private loadImsProfile(I)Z
    .locals 8
    .param p1, "phoneId"    # I

    .line 572
    const-string v0, "RegiMgr"

    const-string v1, "loadImsProfile:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 574
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 575
    const-string v3, "loadImsProfile: no SIM loaded"

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 576
    return v2

    .line 579
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "mnoName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadImsProfile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 583
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 584
    const-string v4, "loadImsProfile: no SIM detected."

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 585
    return v2

    .line 588
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->clearProfiles()V

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadImsProfile: mno: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 593
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/settings/ImsProfile;

    .line 594
    .local v5, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isISimDataValid()Z

    move-result v6

    invoke-direct {p0, v5, p1, v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->loademergencyprofileinvalidimpu(Lcom/sec/ims/settings/ImsProfile;IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 595
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadImsProfile: Add profile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 596
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/core/SlotBasedConfig;->addProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 598
    .end local v5    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    goto :goto_0

    .line 600
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, "rcsProfile":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadImsProfile: mRcsProfile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->refreshDualRcsReg(Landroid/content/Context;)V

    .line 604
    const/4 v0, 0x1

    return v0
.end method

.method private loademergencyprofileinvalidimpu(Lcom/sec/ims/settings/ImsProfile;IZ)Z
    .locals 3
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I
    .param p3, "isISimDataVaild"    # Z

    .line 608
    const-string v0, "RegiMgr"

    const-string v1, "loademergencyprofileinvalidimpu:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 609
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 610
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 611
    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    .line 613
    :cond_2
    return v2
.end method

.method private makeThrottleforImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 916
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->isEpsOnlyReg(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 932
    :cond_0
    const/4 v0, -0x1

    const-string/jumbo v1, "ril.lte.voice.status"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 933
    .local v0, "lteVoiceStatus":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeThrottleforImsNotAvailable: lteVoiceStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 935
    return-void

    .line 939
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "makeThrottleforImsNotAvailable, combined with csfb supported"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->makeThrottle()V

    .line 941
    return-void

    .line 917
    .end local v0    # "lteVoiceStatus":I
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public bootCompleted()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 192
    return-void
.end method

.method public deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V
    .locals 8
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "local"    # Z
    .param p3, "keepPdnConnection"    # Z
    .param p4, "delay"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 214
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-interface {p1, p5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregister: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " keepPdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    int-to-long v6, p4

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->requestPendingDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZJ)V

    .line 218
    return-void
.end method

.method public deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "local"    # Z
    .param p3, "keepPdnConnection"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 202
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    .line 204
    return-void
.end method

.method public deregisterProfile(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "phoneId"    # I

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterProfile: handle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualDeRegisterRequested(II)V

    .line 153
    return-void
.end method

.method public deregisterProfile(IIZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "phoneId"    # I
    .param p3, "disconnectPdn"    # Z

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterProfile: handle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disconnectPdn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualDeRegisterRequested(IIZ)V

    .line 159
    return-void
.end method

.method public deregisterProfile(Ljava/util/List;ZI)V
    .locals 2
    .param p2, "disconnectPdn"    # Z
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .line 120
    .local p1, "profileIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " disconnectPdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualDeRegisterRequested(Ljava/util/List;ZI)V

    .line 122
    return-void
.end method

.method public doPendingUpdateRegistration()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 187
    return-void
.end method

.method public findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)I
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p3, "governor"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    .line 358
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 359
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    .line 358
    move v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v7}, Lcom/sec/internal/ims/core/RegistrationUtils;->findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;ZLcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 6
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forcedUpdateRegistration: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 170
    return v0

    .line 173
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 174
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 175
    const-string/jumbo v0, "start updateRegistration"

    invoke-static {v1, p2, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->requestForcedUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 177
    const/4 v0, 0x0

    return v0

    .line 179
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_1
    goto :goto_0

    .line 181
    :cond_2
    return v0
.end method

.method public getCsfbSupported(I)Z
    .locals 8
    .param p1, "phoneId"    # I

    .line 531
    const-string v0, "RegiMgr"

    const-string v1, "getCsfbSupported:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 532
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    .line 533
    .local v1, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 534
    return v2

    .line 536
    :cond_0
    iget v3, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v4, 0xd

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_3

    .line 538
    :cond_1
    iget-boolean v3, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    .line 539
    .local v3, "csOos":Z
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/PdnController;->isPsOnlyReg(I)Z

    move-result v4

    .line 541
    .local v4, "isPsOnlyReg":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPsOnlyReg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mEmmCause = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getEmmCause()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 543
    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mEmmCause:I

    const/16 v7, 0x16

    if-ne v6, v7, :cond_2

    .line 544
    const-string v2, "Support for EMM Cause 22"

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 545
    return v5

    .line 547
    :cond_2
    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 552
    .end local v3    # "csOos":Z
    .end local v4    # "isPsOnlyReg":Z
    :cond_3
    return v5

    .line 548
    .restart local v3    # "csOos":Z
    .restart local v4    # "isPsOnlyReg":Z
    :cond_4
    :goto_0
    const-string v5, "CS OOS or CSFB not supported."

    invoke-static {v0, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 549
    return v2
.end method

.method public getCurrentNetwork(I)I
    .locals 3
    .param p1, "handle"    # I

    .line 255
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    .line 257
    .local v0, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-nez v0, :cond_0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentNetwork: unknown handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v1, 0x0

    return v1

    .line 261
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v1

    return v1
.end method

.method public getCurrentNetworkByPhoneId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 248
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    return v0

    .line 251
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    return v0
.end method

.method public getCurrentPcscf(I)[Ljava/lang/String;
    .locals 4
    .param p1, "handle"    # I

    .line 271
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 273
    .local v0, "pcscfInfo":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v1

    .line 274
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-nez v1, :cond_0

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentPcscf: unknown handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v2, 0x0

    return-object v2

    .line 279
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 280
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 281
    return-object v0
.end method

.method public bridge synthetic initSequentially()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->initSequentially()V

    return-void
.end method

.method public isSelfActivationRequired(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, "ret":Z
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 989
    .local v2, "t":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getPcoType()Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    if-ne v3, v4, :cond_0

    .line 990
    const/4 v0, 0x1

    .line 991
    goto :goto_1

    .line 993
    .end local v2    # "t":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 994
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSelfActivationRequired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    return v0
.end method

.method public isSuspended(I)Z
    .locals 3
    .param p1, "handle"    # I

    .line 239
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    .line 240
    .local v0, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-nez v0, :cond_0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSuspended: unknown handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v1, 0x0

    return v1

    .line 244
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isSuspended()Z

    move-result v1

    return v1
.end method

.method public synthetic lambda$onFlightModeChanged$0$RegistrationManagerBase(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 6
    .param p1, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1195
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 1196
    .local v0, "phoneId":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 1197
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->VELCOM_BY:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v2

    sget-object v2, Lcom/sec/internal/constants/Mno;->SBERBANK_RUSSIA:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    sget-object v2, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x2

    aput-object v2, v3, v5

    sget-object v2, Lcom/sec/internal/constants/Mno;->MEGAFON_RUSSIA:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x3

    aput-object v2, v3, v5

    sget-object v2, Lcom/sec/internal/constants/Mno;->BEELINE_RUSSIA:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x4

    aput-object v2, v3, v5

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x5

    aput-object v2, v3, v5

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1198
    invoke-virtual {p0, v0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateTimeInPlani(IZ)V

    .line 1203
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1204
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1205
    .local v2, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    .line 1206
    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    .line 1207
    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataPressed(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1208
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1209
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    move-object v5, v2

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3, v5, v0, v4}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    .line 1211
    .end local v2    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_1
    goto :goto_0

    .line 1214
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 1215
    return-void
.end method

.method public moveNextPcscf(ILandroid/os/Message;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 472
    const-string v0, "RegiMgr"

    const-string v1, "moveNextPcscf"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 474
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 475
    .local v2, "t":Lcom/sec/internal/ims/core/RegisterTask;
    iget-object v3, v2, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    .line 477
    .local v3, "gvnr":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveNextPcscf: current ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getPcscfOrdinal()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 479
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setResultMessage(Landroid/os/Message;)V

    .line 480
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mMoveNextPcscf:Z

    .line 482
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 483
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    .line 484
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    const-string v6, "moveNextPcscf: EMERGENCY state, try UA delete"

    invoke-static {v0, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 485
    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v2, v4, v5, v7}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZLcom/sec/ims/util/SipError;I)V

    goto :goto_1

    .line 486
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v5, v6, :cond_1

    .line 487
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    const-string v6, "moveNextPcscf: REGISTERED state, local deregister"

    invoke-static {v0, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 488
    invoke-virtual {p0, v2, v4, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 490
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    const-string v6, "It should not occur. ImsEmergencySession Issue!"

    invoke-static {v0, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 491
    iput-boolean v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mMoveNextPcscf:Z

    .line 492
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 493
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->increasePcscfIdx()V

    .line 494
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 497
    .end local v2    # "t":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v3    # "gvnr":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    :cond_2
    :goto_1
    goto/16 :goto_0

    .line 498
    :cond_3
    return-void
.end method

.method notifyGeolocationUpdate(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V
    .locals 4
    .param p1, "geolocation"    # Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .param p2, "silentUpdate"    # Z

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyGeolocationUpdate, silentUpdate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v2, 0x0

    const/16 v3, 0x33

    invoke-virtual {v1, v3, p2, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1175
    if-nez p2, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 1179
    :cond_0
    return-void
.end method

.method protected notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V
    .locals 9
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "force"    # Z

    .line 865
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mCallState:I

    if-eqz v0, :cond_0

    .line 866
    const-string v0, "RegiMgr"

    const-string v1, "ignore notifyImsNotAvailable in call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-void

    .line 869
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 870
    return-void

    .line 873
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isNotifiedImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_b

    .line 874
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyImsNotAvailable: UserAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    if-nez v2, :cond_4

    const-string v2, "null"

    goto :goto_0

    :cond_4
    const-string v2, "exist"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", force: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getNotAvailableReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 874
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    const-string v1, "ImsNotAvailable"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 877
    invoke-static {}, Lcom/sec/ims/ImsRegistration;->getBuilder()Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 878
    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/ims/settings/ImsProfile;

    .line 879
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 880
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 881
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 882
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 883
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getUuid(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 884
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getInstanceId(IILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 885
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 886
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setRegiRat(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 887
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration$Builder;->build()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 889
    .local v0, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    const/16 v2, 0x20

    const-string v3, ""

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getNotAvailableReason()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 890
    :cond_5
    new-instance v1, Lcom/sec/ims/ImsRegistrationError;

    invoke-direct {v1, v5, v3, v4, v2}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0, v5, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    .line 891
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->makeThrottleforImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 893
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 894
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v7, :cond_8

    .line 895
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 896
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->makeThrottleforImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 897
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getNotAvailableReason()I

    move-result v1

    if-ne v1, v6, :cond_7

    .line 898
    invoke-virtual {p0, p1, v6, v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_2

    .line 900
    :cond_7
    invoke-virtual {p0, p1, v6, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_2

    .line 903
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getNotAvailableReason()I

    move-result v1

    if-eq v1, v6, :cond_a

    .line 904
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 905
    .local v1, "taskReg":Lcom/sec/ims/ImsRegistration;
    if-nez v1, :cond_9

    move-object v7, v0

    goto :goto_1

    :cond_9
    move-object v7, v1

    :goto_1
    new-instance v8, Lcom/sec/ims/ImsRegistrationError;

    invoke-direct {v8, v5, v3, v4, v2}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v7, v5, p1, v8}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    .line 906
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->makeThrottleforImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 910
    .end local v1    # "taskReg":Lcom/sec/ims/ImsRegistration;
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 911
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->clearNotAvailableReason()V

    .line 913
    .end local v0    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_b
    return-void
.end method

.method onDefaultDataSubscriptionChanged()V
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->refreshDualRcsReg(Landroid/content/Context;)V

    .line 776
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSDS_SI_DDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->handleDdsChangeOnSingleIms()V

    goto :goto_0

    .line 778
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSDS_DI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->handleDdsChangeOnDualIms()V

    .line 781
    :cond_1
    :goto_0
    return-void
.end method

.method protected onDelayedDeregister(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 860
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 861
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onDelayedDeregister()V

    .line 862
    return-void
.end method

.method public onDnsResponse(Ljava/util/List;II)V
    .locals 8
    .param p2, "port"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 1225
    .local p1, "ipAddr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1226
    .local v1, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v3, :cond_7

    .line 1227
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1228
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkValidPcscfIp(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1229
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const v2, 0xffff

    if-le p2, v2, :cond_1

    goto :goto_1

    .line 1232
    :cond_1
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    .line 1234
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 1235
    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDnsQueryRetryCount(I)V

    goto :goto_2

    .line 1230
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mAresLookupRequired:Z

    .line 1238
    :goto_2
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1241
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1242
    .local v2, "rcsAs":Ljava/lang/String;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_4

    .line 1243
    :cond_3
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_5

    :cond_4
    const-string v3, "jibe"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1244
    :cond_5
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDnsQueryRetryCount()I

    move-result v3

    .line 1245
    .local v3, "retrycount":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDnsResponse: retrycount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegiMgr"

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/4 v4, 0x5

    if-gt v3, v4, :cond_0

    .line 1247
    add-int/lit8 v3, v3, 0x1

    .line 1248
    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDnsQueryRetryCount(I)V

    .line 1249
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v5

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 1258
    .end local v2    # "rcsAs":Ljava/lang/String;
    .end local v3    # "retrycount":I
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1259
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 1262
    .end local v1    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_7
    goto/16 :goto_0

    .line 1263
    :cond_8
    return-void
.end method

.method protected onEmergencyReady(I)V
    .locals 2
    .param p1, "profileId"    # I

    .line 559
    const-string v0, "RegiMgr"

    const-string v1, "onEmergencyReady:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTask(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    .line 562
    .local v0, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-eqz v0, :cond_0

    .line 563
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 564
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 566
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setResultMessage(Landroid/os/Message;)V

    .line 569
    :cond_0
    return-void
.end method

.method protected onFlightModeChanged(Z)V
    .locals 5
    .param p1, "isOn"    # Z

    .line 1182
    if-eqz p1, :cond_3

    .line 1183
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1184
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1185
    .local v2, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_0

    .line 1186
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1187
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1189
    :cond_0
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearSuspended()V

    .line 1190
    .end local v2    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    goto :goto_1

    .line 1191
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspendRegister(ZI)V

    .line 1183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "phoneId":I
    :cond_2
    goto :goto_2

    .line 1194
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerBase$oNKNZPNDhrC55kW6You6nBxoego;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerBase$oNKNZPNDhrC55kW6You6nBxoego;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1217
    :goto_2
    return-void
.end method

.method protected onImsProfileUpdated(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 617
    const-string v0, "RegiMgr"

    const-string v1, "onImsProfileUpdated:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 619
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 621
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 622
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, p1, v1, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 623
    return-void

    .line 626
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->loadImsProfile(I)Z

    .line 627
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    invoke-static {v2, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->setVoLTESupportProperty(ZI)V

    .line 629
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 630
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v4, v1

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 631
    const-string/jumbo v4, "profile updated"

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 632
    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 634
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v4, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 635
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingDeregister(Z)V

    goto :goto_1

    .line 637
    :cond_1
    invoke-virtual {p0, v3, v1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 640
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->replaceProfilesOnTask(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 641
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 643
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->buildTask(I)V

    .line 644
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1, v5, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->notifyImsReady(ZI)V

    .line 645
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifySimMobilityStatusChanged(ILcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 646
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 647
    return-void
.end method

.method onImsSwitchUpdated(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 650
    const-string v0, "RegiMgr"

    const-string v1, "onImsSwitchUpdated:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->onImsSwitchUpdated(I)V

    .line 653
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->configure(I)V

    .line 655
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onConfigUpdated(Ljava/lang/String;I)V

    .line 656
    return-void
.end method

.method onOwnCapabilitiesChanged(ILcom/sec/ims/options/Capabilities;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "capa"    # Lcom/sec/ims/options/Capabilities;

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOwnCapabilitiesChanged: capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 662
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 663
    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_1

    .line 666
    goto :goto_0

    .line 668
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkAcsPcscfListChange()V

    .line 669
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "own capability changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0, v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_1

    .line 673
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 675
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :goto_1
    goto :goto_0

    .line 676
    :cond_3
    return-void
.end method

.method protected onSimReady(ZI)Z
    .locals 12
    .param p1, "absent"    # Z
    .param p2, "phoneId"    # I

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSimReady: absent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 370
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->startIMSDeviceConfigService(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 372
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v3, "ims_enabled"

    const/4 v4, 0x1

    invoke-interface {v2, p2, v3, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    const-string v3, "PS"

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 373
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 374
    .local v1, "devMno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v5, "Aus device, keep IMS Service Up for Emergency Call."

    invoke-virtual {v2, p2, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-static {v2, p2, v5, v0, v3}, Lcom/sec/internal/ims/util/ImsUtil;->updateEmergencyCallDomain(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)V

    .line 377
    return v4

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "IMS is disabled. Do not load profiles"

    invoke-virtual {v2, p2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 380
    const v2, 0x11010003

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",IMS OFF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 381
    return v5

    .line 388
    .end local v1    # "devMno":Lcom/sec/internal/constants/Mno;
    :cond_1
    if-nez p1, :cond_4

    .line 389
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    .line 390
    .local v2, "serviceModuleMgr":Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->loadImsProfile(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->isLooperExist()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 396
    :cond_2
    nop

    .line 397
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v6

    .line 396
    invoke-interface {v2, p0, v6, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->serviceStartDeterminer(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/util/List;I)V

    .line 398
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyImsSwitchUpdateToApp()V

    goto :goto_1

    .line 393
    :cond_3
    :goto_0
    new-instance v6, Lcom/sec/internal/helper/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v8, v7, v8}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 394
    .local v6, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v9, 0x14

    invoke-virtual {v8, v9, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 395
    .end local v6    # "ar":Lcom/sec/internal/helper/AsyncResult;
    nop

    .line 400
    .end local v2    # "serviceModuleMgr":Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    :goto_1
    goto :goto_3

    .line 402
    :cond_4
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/core/RegisterTask;

    .line 403
    .local v6, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 404
    .end local v6    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_2

    .line 407
    :cond_5
    :goto_3
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->setVoLTESupportProperty(ZI)V

    .line 410
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 411
    const-string v8, "emergency_domain_setting"

    invoke-interface {v7, p2, v8, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 410
    invoke-static {v2, p2, v6, v0, v3}, Lcom/sec/internal/ims/util/ImsUtil;->updateEmergencyCallDomain(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)V

    .line 414
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v2

    if-nez v2, :cond_6

    .line 415
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->clearTask(I)V

    .line 417
    :cond_6
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->buildTask(I)V

    .line 418
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->initRttMode(Landroid/content/Context;)V

    .line 420
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->hasAcsProfile(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 422
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2, v5, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyConfigured(ZI)V

    .line 425
    :cond_7
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 426
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasLoadedProfile(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 427
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v3

    if-nez v3, :cond_8

    .line 428
    const-string/jumbo v3, "onSimReady: added iconmanager."

    invoke-static {v1, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    move-object v8, p0

    move-object v10, v2

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/ims/core/SlotBasedConfig;->createIconManager(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V

    goto :goto_4

    .line 431
    :cond_8
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->initConfiguration(Lcom/sec/internal/constants/Mno;I)V

    .line 435
    :cond_9
    :goto_4
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mlegacyPhoneCount:I

    if-nez v3, :cond_a

    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 436
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    move-object v8, p0

    move-object v10, v2

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/ims/core/SlotBasedConfig;->createIconManager(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V

    .line 439
    :cond_a
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_b

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v3, :cond_b

    .line 440
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "preferred_rtt_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 441
    .local v3, "rttMode":I
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v5, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setRttMode(I)V

    .line 444
    .end local v3    # "rttMode":I
    :cond_b
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_c

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isLabSimCard()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez p1, :cond_c

    .line 445
    const-string v3, "Change SS domain to PS_ONLY_VOLTEREGIED"

    invoke-static {v1, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    const-string v3, "PS_ONLY_VOLTEREGIED"

    invoke-static {v1, p2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->updateSsDomain(Landroid/content/Context;ILjava/lang/String;)V

    .line 449
    :cond_c
    if-nez p1, :cond_d

    .line 450
    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifySimMobilityStatusChanged(ILcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 453
    :cond_d
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->configure(I)V

    .line 454
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 456
    return v4
.end method

.method onSimRefresh(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .line 705
    const-string v0, "RegiMgr"

    const-string/jumbo v1, "onSimRefresh:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->logTask()V

    .line 711
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v5, v2, p1, v4, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-virtual {v1, v5, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 717
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 718
    .local v5, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 720
    const/4 v6, 0x3

    new-array v6, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v4

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 721
    const-string v1, "De-Register would be called by RIL(or timeout)."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 722
    new-instance v1, Lcom/sec/internal/helper/AsyncResult;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 723
    .local v1, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v6, 0x24

    invoke-virtual {v3, v6, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0x258

    invoke-virtual {v2, v3, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 724
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_1

    new-array v2, v9, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v3, v2, v8

    .line 725
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 726
    const/16 v2, 0x19

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 727
    const-string v2, "CMC deregister explicitly on WiFi"

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 728
    invoke-virtual {p0, v5, v4, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 730
    :cond_1
    return-void

    .line 731
    .end local v1    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_2
    new-array v6, v9, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v4

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 733
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_4

    .line 734
    const-string/jumbo v6, "stop auto configuration using config module"

    invoke-static {v0, p1, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 735
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 737
    :cond_3
    new-array v6, v9, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v4

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 738
    const-string v6, "connecting task Stop PDN by sim refresh event."

    invoke-static {v0, p1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 739
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 740
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 742
    .end local v5    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_4
    :goto_1
    goto/16 :goto_0

    .line 744
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v3, "onSimRefresh: Reset SIM-related configuration."

    invoke-virtual {v1, p1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 746
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->clearTask(I)V

    .line 747
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->clear()V

    .line 748
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v1

    .line 749
    .local v1, "uf":Lcom/sec/internal/ims/util/UriGeneratorFactory;
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->removeByPhoneId(I)V

    .line 751
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 752
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 756
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 757
    const-string v6, "emergency_domain_setting"

    const-string v7, "PS"

    invoke-interface {v5, p1, v6, v7}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 756
    invoke-static {v2, p1, v3, v4, v5}, Lcom/sec/internal/ims/util/ImsUtil;->updateEmergencyCallDomain(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)V

    .line 759
    const-string/jumbo v2, "onSimRefresh: reset NetworkEvent"

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->resetNetworkState(I)V

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->unRegisterPhoneStateListener(I)V

    .line 762
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->registerPhoneStateListener(I)V

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    if-eqz v0, :cond_7

    .line 765
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->onSimRefresh(I)V

    .line 767
    :cond_7
    return-void
.end method

.method public refreshAuEmergencyProfile(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 1085
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mAuEmergencyProfile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1086
    return-void
.end method

.method public registerDmListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IImsDmConfigListener;

    .line 1266
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->registerDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    .line 1267
    return-void
.end method

.method public registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 9
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerProfile: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 137
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    .line 138
    const/4 v1, -0x1

    return v1

    .line 141
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 142
    const-string/jumbo v2, "registerProfile: added iconmanager."

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    move-object v5, p0

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/SlotBasedConfig;->createIconManager(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualRegisterRequested(Lcom/sec/ims/settings/ImsProfile;ZI)I

    move-result v1

    return v1
.end method

.method public registerProfile(Ljava/util/List;I)V
    .locals 2
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 107
    .local p1, "profileIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualRegisterRequested(Ljava/util/List;I)V

    .line 109
    return-void
.end method

.method public sendDeregister(I)V
    .locals 3
    .param p1, "cause"    # I

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 223
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    .line 224
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method public sendDeregister(II)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "phoneId"    # I

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDeregister: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifySendDeRegisterRequested(Lcom/sec/internal/constants/Mno;II)V

    .line 231
    return-void
.end method

.method public sendDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "delay"    # J

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    return-void
.end method

.method protected sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 14
    .param p1, "handle"    # I
    .param p2, "intf"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "transport"    # Ljava/lang/String;
    .param p7, "family"    # Ljava/lang/String;
    .param p8, "netId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 318
    .local p4, "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDnsQuery: hostname "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dnses "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RegiMgr"

    move v13, p1

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    move-object v0, p0

    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-interface/range {v2 .. v11}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 320
    return-void
.end method

.method public sendDummyDnsQuery()V
    .locals 14

    .line 323
    const-string v0, "RegiMgr"

    const-string/jumbo v1, "sendDummyDnsQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/PdnController;->getDnsServersByNetType()Ljava/util/List;

    move-result-object v1

    .line 325
    .local v1, "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "ipv4"

    .line 326
    .local v2, "ipver":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 327
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 328
    .local v3, "dns":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dns : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ipv6"

    goto :goto_0

    :cond_0
    const-string v4, "ipv4"

    :goto_0
    move-object v2, v4

    .line 330
    move-object v12, v2

    goto :goto_1

    .line 333
    .end local v3    # "dns":Ljava/lang/String;
    :cond_1
    move-object v12, v2

    .end local v2    # "ipver":Ljava/lang/String;
    .local v12, "ipver":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/PdnController;->getIntfNameByNetType()Ljava/lang/String;

    move-result-object v13

    .line 334
    .local v13, "iface":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iface : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ipver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-eqz v1, :cond_2

    if-eqz v13, :cond_2

    .line 336
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    const/16 v3, 0xa

    const-wide/16 v10, 0x0

    const-string/jumbo v5, "www.ims_rrc_refresh_dns.net"

    const-string v7, "HOST"

    const-string v8, "UDP"

    move-object v4, v13

    move-object v6, v1

    move-object v9, v12

    invoke-interface/range {v2 .. v11}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 338
    :cond_2
    return-void
.end method

.method public sendReRegister(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "pdnType"    # I

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReRegister : pdnType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 310
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 311
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 313
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 314
    :cond_1
    return-void
.end method

.method public bridge synthetic sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public setOwnCapabilities(ILcom/sec/ims/options/Capabilities;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "capa"    # Lcom/sec/ims/options/Capabilities;

    .line 1122
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1123
    return-void
.end method

.method public setRttMode(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "bmode"    # Z

    .line 298
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRTTMode()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRttMode ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    const-string v1, "mode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v3, 0x2c1

    invoke-virtual {v2, v3, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public setSilentLogEnabled(Z)V
    .locals 1
    .param p1, "onOff"    # Z

    .line 1221
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setSilentLogEnabled(Z)V

    .line 1222
    return-void
.end method

.method public setThirdPartyFeatureTags([Ljava/lang/String;)V
    .locals 6
    .param p1, "featureTags"    # [Ljava/lang/String;

    .line 98
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v2

    const/16 v3, 0x7e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    return-void
.end method

.method public setTtyMode(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 287
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    if-eq p2, v0, :cond_0

    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 288
    .local v0, "bmode":Z
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTtyMode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "phoneId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    const-string v2, "mode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v4, 0x25

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public startEmergencyRegistration(ILandroid/os/Message;)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 999
    const-string v0, "RegiMgr"

    const-string/jumbo v1, "startEmergencyRegistration:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1000
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1001
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    .line 1002
    .local v2, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-eqz v1, :cond_10

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 1006
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1007
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHasSilentE911:Landroid/os/Message;

    .line 1008
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPhoneIdForSilentE911:I

    .line 1009
    const-string/jumbo v3, "startEmergencyRegistration: retry after previous stopEmergencyRegistration"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return-void

    .line 1014
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1015
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->setDuringEmergencyCall(Z)V

    .line 1020
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1021
    .local v5, "t":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startEmergencyRegistration: EmergencyRegistration state="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v6, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eq v3, v6, :cond_3

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    new-array v3, v8, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v3, v7

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v3, v4

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1027
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1028
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mAuEmergencyProfile:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 1029
    .local v3, "auProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v6

    if-eq v4, v6, :cond_5

    .line 1030
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v6, :cond_4

    .line 1031
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1033
    :cond_4
    const-string v4, "Aus Emergency case, remove emergency task if old and new profile ID are different."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    .line 1035
    goto/16 :goto_2

    .line 1038
    .end local v3    # "auProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_5
    const-string/jumbo v3, "remove emergency pending RegiTask."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    .line 1040
    goto/16 :goto_2

    .line 1041
    :cond_6
    new-array v3, v8, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v3, v7

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v3, v4

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1042
    iget-object v3, v5, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_7

    iget-object v3, v5, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->GENERIC_IR92:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_7

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1044
    const-string/jumbo v3, "startEmergencyRegistration: Trigger New Register with same task"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1046
    invoke-virtual {v5, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setResultMessage(Landroid/os/Message;)V

    .line 1047
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    .line 1048
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v4, 0x76

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1049
    return-void

    .line 1051
    :cond_7
    const-string/jumbo v3, "startEmergencyRegistration: already registered."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1054
    :cond_8
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_9

    .line 1055
    const-string/jumbo v3, "startEmergencyRegistration: DeRegistering Mode. Deregister current and start new registration."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v4, 0x6b

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1057
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1058
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v6, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1059
    goto :goto_2

    .line 1063
    :cond_9
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1064
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1066
    :cond_a
    invoke-virtual {v5, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setResultMessage(Landroid/os/Message;)V

    .line 1068
    :cond_b
    :goto_1
    return-void

    .line 1070
    .end local v5    # "t":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_c
    goto/16 :goto_0

    .line 1073
    :cond_d
    :goto_2
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1074
    const-string/jumbo v3, "startEmergencyRegistration: refresh Emergency profile..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->refreshAuEmergencyProfile(I)V

    .line 1078
    :cond_e
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1079
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v0, :cond_f

    .line 1080
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryEmergencyRegister(ILcom/sec/ims/settings/ImsProfile;Landroid/os/Message;Z)V

    .line 1082
    :cond_f
    return-void

    .line 1003
    .end local v0    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_10
    :goto_3
    return-void
.end method

.method public stopEmergencyPdnOnly(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1112
    const-string v0, "RegiMgr"

    const-string/jumbo v1, "stopEmergencyPdnOnly:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1113
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1114
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1115
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1116
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1118
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 1119
    :cond_1
    return-void
.end method

.method public stopEmergencyRegistration(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 1089
    const-string v0, "RegiMgr"

    const-string/jumbo v1, "stopEmergencyRegistration:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1092
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1093
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1094
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1095
    const/4 v3, 0x1

    const-string v4, "explicitDeregi"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1096
    const-string/jumbo v3, "phoneId"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1098
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1100
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1101
    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 1106
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1107
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/ImsIconManager;->setDuringEmergencyCall(Z)V

    .line 1109
    :cond_1
    return-void
.end method

.method public stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2
    .param p1, "network"    # I
    .param p2, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 460
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 461
    .local v0, "phoneId":I
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 462
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcoType()V

    .line 463
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPdnFailureInfo()V

    .line 464
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearSuspended()V

    .line 465
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearSuspendedBySnapshot()V

    .line 466
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setKeepPdn(Z)V

    .line 467
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, p1, v0, p2}, Lcom/sec/internal/ims/core/PdnController;->stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I

    .line 468
    return-void
.end method

.method public suspendRegister(ZI)V
    .locals 5
    .param p1, "suspend"    # Z
    .param p2, "phoneId"    # I

    .line 501
    const-string v0, "RegiMgr"

    const-string/jumbo v1, "suspendRegister:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 502
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSuspendedWhileIrat()Z

    move-result v1

    if-eq p1, v1, :cond_3

    .line 503
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setSuspendWhileIrat(Z)V

    .line 504
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suspendedByIrat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 505
    const/4 v1, 0x0

    const/16 v2, 0x88

    if-nez p1, :cond_0

    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume reRegister: mNetType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/NetworkEventController;->getNetType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mWiFi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/NetworkEventController;->isWiFi()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 508
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/NetworkEventController;->isNwChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/NetworkEventController;->setNwChanged(Z)V

    .line 510
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/NetworkEventController;->getNetType()I

    move-result v1

    const-string v2, "networkType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/NetworkEventController;->isWiFi()Z

    move-result v1

    const-string v2, "isWifiConnected"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 515
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 517
    :cond_0
    const-string v3, "Suspend reRegister"

    invoke-static {v0, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p2, v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 520
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 521
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-eqz p1, :cond_2

    .line 522
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->suspendByIrat()V

    goto :goto_2

    .line 524
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->resumeByIrat()V

    .line 526
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :goto_2
    goto :goto_1

    .line 528
    :cond_3
    return-void
.end method

.method public bridge synthetic suspended(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->suspended(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    return-void
.end method

.method tryRegister()V
    .locals 3

    .line 341
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 343
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 344
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 346
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 348
    :goto_1
    return-void
.end method

.method public unregisterDmListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IImsDmConfigListener;

    .line 1270
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->unregisterDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    .line 1271
    return-void
.end method

.method protected updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V
    .locals 7
    .param p1, "geolocation"    # Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .param p2, "silentUpdate"    # Z

    .line 1126
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "RegiMgr"

    if-ge v0, v1, :cond_4

    .line 1127
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1131
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v4

    .line 1133
    .local v4, "geoLocPhase":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateGeolocation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", geoLocPhase: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1134
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    .line 1135
    .local v5, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    if-nez v5, :cond_0

    .line 1136
    goto :goto_1

    .line 1139
    :cond_0
    const/4 v6, 0x2

    if-lt v4, v6, :cond_1

    .line 1140
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v6, v3, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updateGeolocation(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/constants/ims/gls/LocationInfo;)V

    .line 1143
    :cond_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onUpdateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1144
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    if-eqz v6, :cond_2

    .line 1145
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    invoke-interface {v6, v0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->stopPeriodicLocationUpdate(I)V

    .line 1148
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v4    # "geoLocPhase":I
    .end local v5    # "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    :cond_2
    goto :goto_1

    .line 1126
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1151
    .end local v0    # "phoneId":I
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateGeolocation: CountryCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", silentUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 1153
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onUpdateGeolocation()V

    .line 1155
    :cond_5
    return-void
.end method

.method protected updateRat(Lcom/sec/internal/ims/core/RegisterTask;I)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "rat"    # I

    .line 1158
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updateRat(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    .line 1159
    return-void
.end method

.method public updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRegistration: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyUpdateRegisterRequested(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v0

    return v0
.end method

.method public updateRegistrationBySSAC(IZ)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRegistrationBySSAC:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 949
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    .line 950
    return-void

    .line 952
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 954
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    const-string/jumbo v3, "ro.ril.svlte1x"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 955
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSsacEnabled()Z

    move-result v3

    .line 956
    .local v3, "previousSsac":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRegistrationBySSAC : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 957
    const/16 v4, 0x79

    if-nez p2, :cond_1

    .line 959
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 961
    :cond_1
    if-eq v3, p2, :cond_5

    .line 962
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 963
    const/4 v5, 0x0

    if-eqz p2, :cond_4

    .line 964
    const/4 v6, 0x0

    .line 965
    .local v6, "delay":I
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/core/RegisterTask;

    .line 966
    .local v8, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v9, v10, :cond_2

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_2

    .line 967
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mContext:Landroid/content/Context;

    const/16 v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "tvolte_hys_timer"

    invoke-static {v7, v10, v9, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit16 v6, v7, 0x3e8

    .line 968
    goto :goto_1

    .line 970
    .end local v8    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_2
    goto :goto_0

    .line 971
    :cond_3
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateRegistrationBySSAC : registration will be started after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v4, v8, v5, v9}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    int-to-long v7, v6

    invoke-virtual {v1, v4, v7, v8}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 973
    .end local v6    # "delay":I
    goto :goto_2

    .line 974
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v5, v5, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 978
    .end local v3    # "previousSsac":Z
    :cond_5
    :goto_2
    return-void
.end method

.method public updateTelephonyCallStatus(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "callStatus"    # I

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTelephonyCallStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 983
    return-void
.end method

.method protected updateTimeInPlani(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "removePreviousLastPani"    # Z

    .line 1162
    if-eqz p2, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->removePreviousLastPani(I)V

    .line 1166
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1167
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updateTimeInPlani(ILcom/sec/ims/settings/ImsProfile;)V

    .line 1168
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 1169
    :cond_1
    return-void
.end method

.method verifyCmcCertificate([Ljava/security/cert/X509Certificate;)Z
    .locals 7
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    .line 682
    sget-object v0, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;

    .line 683
    .local v0, "ohnv":Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;
    const/4 v1, 0x0

    .line 684
    .local v1, "nameMatch":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCmcLineSlotIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isCmcActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCmcLineSlotIndex()I

    move-result v2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 685
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCmcLineSlotIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 686
    .local v3, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v4, v5, :cond_0

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_2

    .line 687
    :cond_0
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPcscfHostname()Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, "hostname":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking task: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RegiMgr"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 690
    goto :goto_0

    .line 692
    :cond_1
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v0, v4, v5}, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v1

    .line 693
    if-eqz v1, :cond_2

    .line 694
    goto :goto_1

    .line 696
    .end local v3    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .end local v4    # "hostname":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 698
    :cond_3
    :goto_1
    return v1
.end method
