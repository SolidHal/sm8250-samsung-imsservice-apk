.class public Lcom/sec/internal/ims/core/UserEventController;
.super Ljava/lang/Object;
.source "UserEventController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiMgr-UsrEvtCtr"


# instance fields
.field mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field mContext:Landroid/content/Context;

.field protected mCurrentUserId:I

.field protected mIsDeviceShutdown:Z

.field mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerBase;
    .param p4, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p5, "eventLog"    # Lcom/sec/internal/helper/SimpleEventLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/RegistrationManagerBase;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/helper/os/ITelephonyManager;",
            "Lcom/sec/internal/helper/SimpleEventLog;",
            ")V"
        }
    .end annotation

    .line 57
    .local p3, "simManagers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/ISimManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mIsDeviceShutdown:Z

    .line 58
    iput-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 60
    iput-object p3, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    .line 61
    iput-object p4, p0, Lcom/sec/internal/ims/core/UserEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 63
    iput-object p5, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 65
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mCurrentUserId:I

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start with User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method private updateOpMode(IIILcom/sec/internal/constants/Mno;)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "prevRcsUserSetting"    # I
    .param p3, "newRcsUserSetting"    # I
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 582
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 584
    .local v3, "prevRcsEnabled":Z
    :goto_1
    if-ne p3, v2, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 585
    .local v4, "newRcsEnabled":Z
    :goto_2
    if-eq v4, v3, :cond_3

    move v1, v2

    .line 587
    .local v1, "needChangeOpMode":Z
    :cond_3
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    const-string v5, "RegiMgr-UsrEvtCtr"

    if-eqz v2, :cond_5

    .line 588
    const/4 v2, -0x2

    if-eq p2, v2, :cond_4

    if-ne p2, v0, :cond_5

    .line 590
    :cond_4
    const-string v0, "Changed rcs_user_setting by network. Skip change op mode."

    invoke-static {v5, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 591
    const/4 v1, 0x0

    .line 595
    :cond_5
    if-eqz v1, :cond_7

    .line 597
    const-string v0, "info/tc_popup_user_accept"

    .line 598
    .local v0, "TC_POPUP_USER_ACCEPT":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, "val":Ljava/lang/String;
    const/4 v6, -0x1

    .line 600
    .local v6, "tcPopupUserAccept":I
    if-eqz v2, :cond_6

    .line 602
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v5

    .line 605
    goto :goto_3

    .line 603
    :catch_0
    move-exception v7

    .line 604
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v8, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {v5, p1, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 607
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v5, v4, p1, v6}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->changeOpMode(ZII)V

    .line 609
    .end local v0    # "TC_POPUP_USER_ACCEPT":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    .end local v6    # "tcPopupUserAccept":I
    :cond_7
    return-void
.end method

.method private updateRegistrationByRcsUserSettings(IILcom/sec/internal/constants/Mno;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "newRcsUserSetting"    # I
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 658
    sget-object v0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x2

    if-ne p3, v0, :cond_0

    .line 659
    if-ne p2, v1, :cond_0

    .line 660
    const-string v0, "RegiMgr-UsrEvtCtr"

    const-string v1, "RCS_TURNING_OFF: Ignore RCS disable for SKT until server responds"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void

    .line 665
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 666
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v4, v4, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasRcsService(ILcom/sec/ims/settings/ImsProfile;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 667
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    const-string v4, "RCS USER SWITCH OFF"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    .line 671
    if-ne p2, v6, :cond_1

    .line 672
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v3, v3, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_1

    .line 674
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v5, v6, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_1

    .line 677
    :cond_2
    new-array v3, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v3, v5

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v3, v6

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 678
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_1

    .line 680
    :cond_3
    if-ne p2, v6, :cond_4

    .line 681
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v3, v3, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_1

    .line 683
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v5, v6, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 688
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_5
    :goto_1
    goto :goto_0

    .line 689
    :cond_6
    return-void
.end method

.method private updateRegistrationByVolteServiceSettings(IZLcom/sec/internal/constants/Mno;)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "isVolteEnabled"    # Z
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 613
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_9

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 626
    :cond_0
    const-string v0, "RegiMgr-UsrEvtCtr"

    if-nez p2, :cond_7

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {p3, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 630
    :cond_1
    const-string v2, "VoLTE turned off, DeRegister"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 632
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 633
    goto :goto_0

    .line 636
    :cond_3
    new-array v7, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v4

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v5

    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 637
    const-string/jumbo v7, "volte setting turned off"

    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 638
    const/16 v7, 0x49

    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 639
    iget-object v7, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v7, v3, v4, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 640
    :cond_4
    new-array v7, v6, [Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v8, v7, v4

    sget-object v8, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v8, v7, v5

    invoke-virtual {p3, v7}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    new-array v7, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v4

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v5

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v6

    .line 641
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 642
    iget-object v7, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v7, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isSuspended()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 643
    new-array v7, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v4

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v5

    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 644
    const-string v7, "VoLTE turned off, no need to keep pdn."

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v7, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v8

    invoke-virtual {v7, v8, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 646
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 649
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_6
    :goto_1
    goto/16 :goto_0

    .line 627
    :cond_7
    :goto_2
    const-string v1, "VoLTE switch changed, updateRegistration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(I)Z

    .line 652
    :cond_8
    return-void

    .line 622
    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mCurrentUserId:I

    return v0
.end method

.method public isShuttingDown()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mIsDeviceShutdown:Z

    return v0
.end method

.method protected onChatbotAgreementChanged(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 113
    const-string v0, "RegiMgr-UsrEvtCtr"

    const-string v1, "onChatbotAgreementChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
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

    .line 117
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    iget-object v2, v1, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 119
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    const-string v3, "chatbot-communication"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v3, v4

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const-string v3, "chatbot agreement changed"

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v1, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    .line 125
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v2    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method

.method protected onDataUsageLimitReached(ZI)V
    .locals 8
    .param p1, "isDataLimited"    # Z
    .param p2, "phoneId"    # I

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataUsageLimitReached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    .line 92
    .local v0, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/RegisterTask;>;"
    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setDataUsageExceed(Z)V

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 98
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    const-string v4, "data limited exceed"

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_1

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataUsageLimitReached: force update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v7}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_1

    .line 106
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    .line 109
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_2
    :goto_1
    goto :goto_0

    .line 110
    :cond_3
    return-void
.end method

.method protected onFlightModeChanged(Z)V
    .locals 9
    .param p1, "isOn"    # Z

    .line 542
    if-eqz p1, :cond_5

    .line 543
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 544
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 545
    const/4 v1, 0x0

    .line 546
    .local v1, "deregisterRequires":Z
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 547
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    .line 548
    const-string v4, "FlightMode On"

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 549
    const/4 v4, 0x2

    new-array v6, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v5

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 550
    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    invoke-virtual {v4, v6, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 551
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_2

    .line 552
    :cond_0
    new-array v6, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v8

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v5

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 553
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v4, v6, :cond_2

    .line 554
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_2

    .line 556
    :cond_1
    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v4, v8

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 557
    const/4 v1, 0x1

    .line 558
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->isDelayDeRegForNonDDSOnFlightModeChanged(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 559
    const-string v4, "RegiMgr-UsrEvtCtr"

    const-string v6, "QCT , non-dds send de-reg later"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setNonDDSDeRegRequired(Z)V

    .line 561
    const/4 v1, 0x0

    .line 564
    :cond_2
    :goto_2
    iput-boolean v8, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    .line 565
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 566
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 567
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    const-string v5, "AirplaneModeOn"

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 568
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto/16 :goto_1

    .line 569
    :cond_3
    if-eqz v1, :cond_4

    .line 570
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    .line 544
    .end local v1    # "deregisterRequires":Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 575
    .end local v0    # "phoneId":I
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onFlightModeChanged(Z)V

    .line 576
    return-void
.end method

.method onLteDataNetworkModeSettingChanged(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "phoneId"    # I

    .line 531
    const-string v0, "RegiMgr-UsrEvtCtr"

    const-string v1, "onLteDataNetworkModeSettingChanged:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 532
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    .line 533
    .local v0, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-nez v0, :cond_0

    .line 534
    return-void

    .line 536
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 537
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLteDataNetworkModeSettingChanged(Z)V

    .line 538
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 539
    :cond_1
    return-void
.end method

.method protected onMobileDataChanged(IILcom/sec/internal/ims/core/NetworkEventController;)V
    .locals 10
    .param p1, "mobileDataOn"    # I
    .param p2, "phoneId"    # I
    .param p3, "netEvtController"    # Lcom/sec/internal/ims/core/NetworkEventController;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMobileDataChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    .local v0, "slot":I
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_7

    .line 132
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 133
    .local v4, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/4 v5, 0x2

    new-array v6, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v3

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile data changed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    aput-object v9, v7, v8

    sget-object v9, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    aput-object v9, v7, v3

    sget-object v9, Lcom/sec/internal/constants/Mno;->VTR:Lcom/sec/internal/constants/Mno;

    aput-object v9, v7, v5

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, v4, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto/16 :goto_3

    .line 139
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ims"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 140
    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 141
    .local v5, "isWifiOn":I
    if-eq v5, v3, :cond_2

    .line 143
    const/16 v6, 0x22

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 144
    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v6

    if-eqz v6, :cond_1

    .line 145
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v6

    const-string v7, "Call State is not IDLE. Postpone deregister.."

    invoke-static {v1, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingDeregister(Z)V

    goto :goto_2

    .line 148
    :cond_1
    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string/jumbo v7, "wifi off with mobileDataSettingChanged"

    invoke-virtual {v6, v4, v8, v3, v7}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_2

    .line 151
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v6, v4, v8}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    .line 153
    .end local v5    # "isWifiOn":I
    :goto_2
    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v5, v5, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 154
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne p1, v3, :cond_4

    .line 158
    invoke-virtual {p3, v4, p2, v3}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    goto :goto_3

    .line 161
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, v4, v8}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    .line 164
    .end local v4    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_5
    :goto_3
    goto/16 :goto_1

    .line 131
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 166
    .end local v0    # "slot":I
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 168
    if-ne p1, v3, :cond_a

    .line 169
    const/4 v0, 0x0

    .restart local v0    # "slot":I
    :goto_4
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 170
    if-ne v0, p2, :cond_8

    .line 171
    goto :goto_5

    .line 174
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 175
    const-string v2, "onMobileDataChanged: tryRegister RCS on other slot"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 169
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 180
    .end local v0    # "slot":I
    :cond_a
    return-void
.end method

.method protected onMobileDataPressedChanged(IILcom/sec/internal/ims/core/NetworkEventController;)V
    .locals 6
    .param p1, "mobileDataPressed"    # I
    .param p2, "phoneId"    # I
    .param p3, "netEvtController"    # Lcom/sec/internal/ims/core/NetworkEventController;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMobileDataPressedChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    .local v0, "slot":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 186
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

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 187
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v3, v4

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v3, v3, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 189
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne p1, v5, :cond_0

    .line 190
    invoke-virtual {p3, v2, p2, v5}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    .line 191
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 192
    return-void

    .line 195
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_1

    .line 185
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "slot":I
    :cond_2
    return-void
.end method

.method onRTTmodeUpdated(IZ)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "newRttMode"    # Z

    .line 383
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    .line 384
    .local v0, "sbc":Lcom/sec/internal/ims/core/SlotBasedConfig;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRTTMode()Z

    move-result v1

    .line 385
    .local v1, "oldRttMode":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRTTmodeUpdated: current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RegiMgr-UsrEvtCtr"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v2, 0x0

    .line 388
    .local v2, "isSupportRTT":Z
    if-eq v1, p2, :cond_4

    .line 389
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setRTTMode(Ljava/lang/Boolean;)V

    .line 390
    const/4 v5, 0x0

    .line 391
    .local v5, "updatedTask":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v6

    .line 392
    .local v6, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/RegisterTask;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 393
    const-string v3, "RegiterTaskList is empty."

    invoke-static {v4, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 394
    return-void

    .line 397
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/core/RegisterTask;

    .line 398
    .local v8, "task":Lcom/sec/internal/ims/core/RegisterTask;
    iget-object v9, v8, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    iget-object v9, v8, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    goto :goto_1

    .line 403
    .end local v8    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_1
    goto :goto_0

    .line 399
    .restart local v8    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 400
    move-object v5, v8

    .line 401
    nop

    .line 407
    .end local v8    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    .line 408
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v7, v8, :cond_4

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-eq v7, v8, :cond_4

    .line 409
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRTTmodeUpdated: isSupportRTT="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRTTmodeUpdated: force update "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RTT changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 412
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    .line 415
    .end local v5    # "updatedTask":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v6    # "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/RegisterTask;>;"
    :cond_4
    return-void
.end method

.method protected onRcsUserSettingChanged(II)V
    .locals 8
    .param p1, "newRcsUserSetting"    # I
    .param p2, "phoneId"    # I

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRcsUserSettingChanged: switch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 302
    .local v0, "prevRcsUserSetting":I
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 303
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsVersion()I

    move-result v3

    .line 305
    .local v3, "acsVersion":I
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez p1, :cond_2

    .line 308
    sget-object v6, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v6, :cond_3

    if-eq v0, v5, :cond_0

    const/4 v6, 0x3

    if-ne v0, v6, :cond_3

    .line 312
    :cond_0
    if-eq v3, v4, :cond_1

    const/4 v6, -0x2

    if-eq v3, v6, :cond_1

    .line 313
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": treat RCS_DISABLED(0) as RCS_TURNING_OFF(2)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, p2, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    const/4 p1, 0x2

    goto :goto_0

    .line 316
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": already turnned off - acs version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, p2, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_2
    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    .line 320
    sget-object v6, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v2, v6, :cond_3

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": RCS_TURNING_OFF(2) is not allowed set rcs_user_setting to 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v1, v4, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 325
    return-void

    .line 329
    :cond_3
    :goto_0
    if-ne v0, p1, :cond_4

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "same rcs_user_setting not changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 334
    :cond_4
    if-ne v0, v4, :cond_5

    if-ne p1, v5, :cond_5

    .line 335
    const-string v4, "Reset ACS settings : RCS user switch turned on first time."

    invoke-static {v1, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 336
    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v4, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 339
    :cond_5
    invoke-direct {p0, p2, v0, p1, v2}, Lcom/sec/internal/ims/core/UserEventController;->updateOpMode(IIILcom/sec/internal/constants/Mno;)V

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modify internal ImsUserSetting(shared pref) from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 344
    invoke-direct {p0, p2, p1, v2}, Lcom/sec/internal/ims/core/UserEventController;->updateRegistrationByRcsUserSettings(IILcom/sec/internal/constants/Mno;)V

    .line 345
    return-void
.end method

.method protected onRoamingDataChanged(ZI)V
    .locals 9
    .param p1, "RoamingDataOn"    # Z
    .param p2, "phoneId"    # I

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRoamingDataChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 203
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    .line 204
    .local v1, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto :goto_2

    .line 207
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 209
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 210
    .local v4, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRoamingDataChanged(Z)V

    .line 211
    .end local v4    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    return-void

    .line 220
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 221
    .restart local v4    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "roaming data changed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 223
    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, v4, v7}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    .line 225
    .end local v4    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_3
    goto :goto_1

    .line 226
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 227
    return-void

    .line 205
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_5
    :goto_2
    return-void
.end method

.method protected onRoamingLteChanged(Z)V
    .locals 4
    .param p1, "RoamingLteOn"    # Z

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRoamingLteChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 256
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 257
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRoamingLteChanged(Z)V

    .line 258
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_1

    .line 255
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "phoneId":I
    :cond_1
    return-void
.end method

.method protected onRoamingSettingsChanged(II)V
    .locals 8
    .param p1, "RoamingSettingsPref"    # I
    .param p2, "phoneId"    # I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRoamingSettingsChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

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

    .line 233
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 234
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {v3, v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasVolteService(ILcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 235
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    const/4 v3, 0x2

    new-array v4, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    if-nez p1, :cond_2

    .line 238
    const-string v3, "Roaming Setting turned off"

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v1, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 242
    :cond_0
    if-eq p1, v7, :cond_1

    if-ne p1, v3, :cond_2

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 249
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v2    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    :goto_1
    goto :goto_0

    .line 250
    :cond_3
    return-void
.end method

.method onShuttingDown(I)V
    .locals 8
    .param p1, "powerOff"    # I

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "powerOff :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 494
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mIsDeviceShutdown:Z

    .line 502
    :cond_0
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 503
    const/4 v2, 0x0

    .line 504
    .local v2, "deregisterRequires":Z
    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 505
    .local v4, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x0

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v5, v6

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v5, v0

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 506
    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 507
    const/4 v2, 0x1

    .line 509
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 510
    const/4 v2, 0x0

    .line 512
    .end local v4    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_2
    goto :goto_1

    .line 513
    :cond_3
    if-eqz v2, :cond_4

    .line 514
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    .line 502
    .end local v2    # "deregisterRequires":Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    .end local v1    # "phoneId":I
    :cond_5
    return-void
.end method

.method onTTYmodeUpdated(IZ)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "newTtyMode"    # Z

    .line 348
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result v0

    .line 349
    .local v0, "oldTtyMode":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTTYmodeUpdated: current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RegiMgr-UsrEvtCtr"

    invoke-static {v3, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    .line 351
    .local v1, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/RegisterTask;>;"
    if-nez v1, :cond_0

    .line 352
    return-void

    .line 355
    :cond_0
    const/4 v4, 0x0

    .line 357
    .local v4, "isSupportCsTTY":Z
    if-eq v0, p2, :cond_5

    .line 358
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setTTYMode(Ljava/lang/Boolean;)V

    .line 359
    const/4 v5, 0x0

    .line 360
    .local v5, "selectedTask":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/core/RegisterTask;

    .line 361
    .local v7, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-static {v7}, Lcom/sec/internal/ims/core/RegistrationUtils;->supportCsTty(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 362
    move-object v5, v7

    .line 363
    const/4 v4, 0x1

    .line 364
    goto :goto_1

    .line 366
    .end local v7    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_1
    goto :goto_0

    .line 368
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 369
    return-void

    .line 372
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTTYmodeUpdated: isSupportCsTTY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-nez p2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v3, 0x0

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v2, v3

    const/4 v3, 0x1

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v2, v3

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 375
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    goto :goto_2

    .line 377
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(I)Z

    .line 380
    .end local v5    # "selectedTask":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_5
    :goto_2
    return-void
.end method

.method onUserSwitched()V
    .locals 6

    .line 479
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onUserSwitched by MUM"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 480
    const v0, 0x11010005

    const-string v1, ",USER SWITCHED"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 481
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 482
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

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 483
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v3, v4

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v3, 0x3e8

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    .line 485
    return-void

    .line 487
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_1

    .line 481
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "phoneId":I
    :cond_2
    return-void
.end method

.method protected onVideoCallServiceSettingChanged(ZI)V
    .locals 9
    .param p1, "isVideoCallEnabled"    # Z
    .param p2, "phoneId"    # I

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVideoCallServiceSettingChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 265
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 269
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 270
    nop

    .line 269
    xor-int/lit8 v5, p1, 0x1

    invoke-static {v3, v4, v5, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 273
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 274
    .local v4, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 277
    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v6, "Video Call state changed : "

    if-ne v2, v5, :cond_1

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 279
    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, v4, v7}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_1

    .line 280
    :cond_1
    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_3

    .line 283
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v5

    const/16 v7, 0x12

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    const-string/jumbo v5, "skip update registration"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 287
    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, v4, v8}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_1

    .line 290
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 291
    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, v4, v8}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    .line 294
    .end local v4    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_4
    :goto_1
    goto/16 :goto_0

    .line 295
    :cond_5
    return-void
.end method

.method onVolteRoamingServiceSettingChanged(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "phoneId"    # I

    .line 520
    const-string v0, "RegiMgr-UsrEvtCtr"

    const-string/jumbo v1, "onVolteRoamingServiceSettingChanged:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 521
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    .line 522
    .local v0, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-nez v0, :cond_0

    .line 523
    return-void

    .line 525
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 526
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onVolteRoamingSettingChanged(Z)V

    .line 527
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 528
    :cond_1
    return-void
.end method

.method onVolteServiceSettingChanged(ZI)V
    .locals 11
    .param p1, "isVolteEnabled"    # Z
    .param p2, "phoneId"    # I

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVolteServiceSettingChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 449
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    .line 450
    .local v2, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-eqz v0, :cond_5

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 453
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 454
    const-string/jumbo v3, "onVolteServiceSettingChanged: SIM is not available don\'t save setting"

    invoke-static {v1, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 456
    return-void

    .line 459
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 460
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 461
    nop

    .line 460
    xor-int/lit8 v6, p1, 0x1

    invoke-static {v4, v5, v6, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 463
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 464
    .local v5, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_3

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 465
    invoke-virtual {v7, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v7

    iget-boolean v7, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    if-eqz v7, :cond_3

    .line 466
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    aput-object v7, v4, v9

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    aput-object v7, v4, v10

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    aput-object v7, v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 467
    const-string/jumbo v4, "update eutrn param"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onVolteSettingChanged()V

    .line 470
    :cond_2
    const-string v4, "WFC is enabled. Do not modify regi status"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void

    .line 473
    :cond_3
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onVolteSettingChanged()V

    .line 474
    .end local v5    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 475
    :cond_4
    invoke-direct {p0, p2, p1, v3}, Lcom/sec/internal/ims/core/UserEventController;->updateRegistrationByVolteServiceSettings(IZLcom/sec/internal/constants/Mno;)V

    .line 476
    return-void

    .line 451
    .end local v3    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_5
    :goto_1
    return-void
.end method

.method onVowifiServiceSettingChanged(ILcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "handler"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    .line 418
    const-string v0, "RegiMgr-UsrEvtCtr"

    const-string/jumbo v1, "onVowifiServiceSettingChanged:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v1, :cond_0

    .line 421
    const-string v1, "VolteServiceModule is not create yet so retry after 3 seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-wide/16 v0, 0xbb8

    invoke-interface {p2, p1, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyVowifiSettingChanged(IJ)V

    .line 423
    return-void

    .line 426
    :cond_0
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onVoWiFiSwitched(I)V

    .line 427
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 428
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
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

    if-eqz v3, :cond_3

    .line 429
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    const/16 v4, 0xd

    const-string v6, "VoWiFi settings changed"

    if-ne v3, v4, :cond_2

    .line 430
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v4, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v3, v4, :cond_1

    .line 431
    const-string v3, "Skip updateRegistration under LTE roaming NW"

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 433
    :cond_1
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_1

    .line 437
    :cond_2
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 438
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    .line 441
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_3
    :goto_1
    goto :goto_0

    .line 443
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 444
    return-void
.end method

.method public setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V
    .locals 0
    .param p1, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 79
    return-void
.end method

.method public setCurrentUserId(I)V
    .locals 0
    .param p1, "currentUserId"    # I

    .line 70
    iput p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mCurrentUserId:I

    .line 71
    return-void
.end method

.method public setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 0
    .param p1, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 75
    return-void
.end method
